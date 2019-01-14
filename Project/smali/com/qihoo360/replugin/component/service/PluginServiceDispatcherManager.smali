.class public Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;
.super Ljava/lang/Object;
.source "PluginServiceDispatcherManager.java"


# static fields
.field private static final SERVICES_LOCKER:[B

.field private static final TAG:Ljava/lang/String; = "PSDM"


# instance fields
.field private mServices:Lcom/qihoo360/replugin/utils/basic/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Landroid/content/Context;",
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Landroid/content/ServiceConnection;",
            "Lcom/qihoo360/replugin/component/service/ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUnboundServices:Lcom/qihoo360/replugin/utils/basic/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Landroid/content/Context;",
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Landroid/content/ServiceConnection;",
            "Lcom/qihoo360/replugin/component/service/ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->SERVICES_LOCKER:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->mServices:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 38
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->mUnboundServices:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    return-void
.end method


# virtual methods
.method public forget(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/content/ServiceConnection;

    .line 63
    sget-object v0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->SERVICES_LOCKER:[B

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->mServices:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 65
    invoke-virtual {v1, p1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 66
    .local v1, "map":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<Landroid/content/ServiceConnection;Lcom/qihoo360/replugin/component/service/ServiceDispatcher;>;"
    const/4 v2, 0x0

    .line 67
    .local v2, "sd":Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {v1, p2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    move-object v2, v3

    .line 69
    if-eqz v2, :cond_3

    .line 70
    invoke-virtual {v1, p2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v2}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->doForget()V

    .line 72
    invoke-virtual {v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->mServices:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v3, p1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    invoke-virtual {v2}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->mUnboundServices:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 77
    invoke-virtual {v3, p1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 78
    .local v3, "holder":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<Landroid/content/ServiceConnection;Lcom/qihoo360/replugin/component/service/ServiceDispatcher;>;"
    if-nez v3, :cond_1

    .line 79
    new-instance v4, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v4}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    move-object v3, v4

    .line 80
    iget-object v4, p0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->mUnboundServices:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v4, p1, v3}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Originally unbound here:"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .local v4, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 85
    invoke-virtual {v2, v4}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    .line 86
    invoke-virtual {v3, p2, v2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v3    # "holder":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<Landroid/content/ServiceConnection;Lcom/qihoo360/replugin/component/service/ServiceDispatcher;>;"
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    monitor-exit v0

    return-object v2

    .line 91
    :cond_3
    iget-object v3, p0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->mUnboundServices:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 92
    invoke-virtual {v3, p1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 93
    .restart local v3    # "holder":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<Landroid/content/ServiceConnection;Lcom/qihoo360/replugin/component/service/ServiceDispatcher;>;"
    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 94
    invoke-virtual {v3, p2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    move-object v2, v5

    .line 95
    if-eqz v2, :cond_5

    .line 99
    invoke-virtual {v2}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    move-result-object v5

    .line 100
    .local v5, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unbinding Service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " that was already unbound"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_4

    .line 104
    const-string v7, "PSDM"

    const-string v8, "forgetServiceDispatcher(): Unbind Error!"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_4
    monitor-exit v0

    return-object v4

    .line 109
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    if-nez p1, :cond_7

    .line 110
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from Context that is no longer in use"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_6

    .line 113
    const-string v6, "PSDM"

    const-string v7, "forgetServiceDispatcher(): Unbind Error!"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :cond_6
    monitor-exit v0

    return-object v4

    .line 117
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_8

    .line 119
    const-string v6, "PSDM"

    const-string v7, "forgetServiceDispatcher(): Unbind Error!"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :cond_8
    monitor-exit v0

    return-object v4

    .line 123
    .end local v1    # "map":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<Landroid/content/ServiceConnection;Lcom/qihoo360/replugin/component/service/ServiceDispatcher;>;"
    .end local v2    # "sd":Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
    .end local v3    # "holder":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<Landroid/content/ServiceConnection;Lcom/qihoo360/replugin/component/service/ServiceDispatcher;>;"
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;II)Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
    .locals 10
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I
    .param p5, "process"    # I

    .line 42
    sget-object v0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->SERVICES_LOCKER:[B

    monitor-enter v0

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "sd":Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
    :try_start_0
    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->mServices:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v2, p2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 45
    .local v2, "map":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<Landroid/content/ServiceConnection;Lcom/qihoo360/replugin/component/service/ServiceDispatcher;>;"
    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v2, p1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    move-object v1, v3

    .line 48
    :cond_0
    if-nez v1, :cond_2

    .line 49
    new-instance v9, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    move-object v3, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;II)V

    move-object v1, v9

    .line 50
    if-nez v2, :cond_1

    .line 51
    new-instance v3, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v3}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    move-object v2, v3

    .line 52
    iget-object v3, p0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->mServices:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v3, p2, v2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    invoke-virtual {v2, p1, v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v1, p2, p3}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V

    .line 58
    :goto_0
    monitor-exit v0

    return-object v1

    .line 59
    .end local v1    # "sd":Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
    .end local v2    # "map":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<Landroid/content/ServiceConnection;Lcom/qihoo360/replugin/component/service/ServiceDispatcher;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
