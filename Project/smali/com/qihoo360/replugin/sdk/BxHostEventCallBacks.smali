.class public Lcom/qihoo360/replugin/sdk/BxHostEventCallBacks;
.super Lcom/qihoo360/replugin/RePluginEventCallbacks;
.source "BxHostEventCallBacks.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/qihoo360/replugin/sdk/BxHostEventCallBacks;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/replugin/sdk/BxHostEventCallBacks;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/RePluginEventCallbacks;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onBinderReleased()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onBinderReleased()V

    .line 60
    sget-object v0, Lcom/qihoo360/replugin/sdk/BxHostEventCallBacks;->TAG:Ljava/lang/String;

    const-string v1, "onBinderReleased"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/sdk/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public onInstallPluginFailed(Ljava/lang/String;Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;)V
    .locals 3
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    .line 42
    invoke-super {p0, p1, p2}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onInstallPluginFailed(Ljava/lang/String;Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;)V

    .line 43
    sget-object v0, Lcom/qihoo360/replugin/sdk/BxHostEventCallBacks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallPluginFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {p2}, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onInstallPluginSucceed(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 3
    .param p1, "var1"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 48
    invoke-super {p0, p1}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onInstallPluginSucceed(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 49
    sget-object v0, Lcom/qihoo360/replugin/sdk/BxHostEventCallBacks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallPluginSucceed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->b(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public onStartActivityCompleted(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Z

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onStartActivityCompleted(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    sget-object v0, Lcom/qihoo360/replugin/sdk/BxHostEventCallBacks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartActivityCompleted : plugin name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/sdk/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method
