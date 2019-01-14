.class public Lcom/qihoo360/loader2/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/qihoo360/replugin/RePluginInternal;->FOR_DEV:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/qihoo360/loader2/DumpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "DumpUtils"

    :goto_0
    sput-object v0, Lcom/qihoo360/loader2/DumpUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/loader2/PluginProviderStub;->proxyFetchHostBinder(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    .line 47
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 48
    return-void

    .line 51
    :cond_0
    invoke-static {v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v1

    .line 54
    .local v1, "pluginHost":Lcom/qihoo360/loader2/IPluginHost;
    :try_start_0
    invoke-interface {v1}, Lcom/qihoo360/loader2/IPluginHost;->dump()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "dumpInfo":Ljava/lang/String;
    sget-boolean v3, Lcom/qihoo360/replugin/RePluginInternal;->FOR_DEV:Z

    if-eqz v3, :cond_1

    .line 57
    sget-object v3, Lcom/qihoo360/loader2/DumpUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2    # "dumpInfo":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
