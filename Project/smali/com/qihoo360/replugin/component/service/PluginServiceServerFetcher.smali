.class public Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;
.super Ljava/lang/Object;
.source "PluginServiceServerFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher$PSSDeathMonitor;
    }
.end annotation


# static fields
.field private static final PSS_LOCKER:[B


# instance fields
.field private mServiceManagerByProcessMap:Lcom/qihoo360/replugin/utils/basic/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->PSS_LOCKER:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->mServiceManagerByProcessMap:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 91
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 41
    sget-object v0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->PSS_LOCKER:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;)Lcom/qihoo360/replugin/utils/basic/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;

    .line 41
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->mServiceManagerByProcessMap:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    return-object v0
.end method


# virtual methods
.method public fetchByProcess(I)Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    .locals 6
    .param p1, "process"    # I

    .line 46
    const/4 v0, 0x0

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    .line 47
    return-object v0

    .line 51
    :cond_0
    sget-object v1, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->PSS_LOCKER:[B

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->mServiceManagerByProcessMap:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    .local v2, "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    if-eqz v2, :cond_2

    .line 54
    :try_start_1
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginServiceClient.fsmbp(): Exists! p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    monitor-exit v1

    return-object v2

    .line 59
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 62
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_3

    .line 63
    const-string v1, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginServiceClient.fsmbp(): Create a new one! p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_3
    const/4 v1, -0x2

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    .line 67
    :try_start_2
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v0

    .line 68
    .local v0, "ph":Lcom/qihoo360/loader2/IPluginHost;
    invoke-interface {v0}, Lcom/qihoo360/loader2/IPluginHost;->fetchServiceServer()Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v1

    move-object v0, v1

    .line 69
    .end local v2    # "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    .local v0, "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    nop

    .line 76
    .end local v0    # "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    .restart local v2    # "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    goto :goto_2

    .line 70
    :cond_4
    new-instance v1, Lcom/qihoo360/loader2/PluginBinderInfo;

    invoke-direct {v1, v3}, Lcom/qihoo360/loader2/PluginBinderInfo;-><init>(I)V

    .line 71
    .local v1, "pbi":Lcom/qihoo360/loader2/PluginBinderInfo;
    invoke-static {v0, p1, v1}, Lcom/qihoo360/loader2/MP;->startPluginProcess(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v0

    .line 72
    .local v0, "pc":Lcom/qihoo360/loader2/IPluginClient;
    invoke-interface {v0}, Lcom/qihoo360/loader2/IPluginClient;->fetchServiceServer()Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v4

    move-object v0, v4

    .line 72
    .end local v1    # "pbi":Lcom/qihoo360/loader2/PluginBinderInfo;
    .end local v2    # "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    .local v0, "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    goto :goto_0

    .line 76
    .end local v0    # "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    .restart local v2    # "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    :goto_1
    invoke-interface {v2}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher$PSSDeathMonitor;

    invoke-interface {v2}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v1, p0, p1, v4}, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher$PSSDeathMonitor;-><init>(Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;ILandroid/os/IBinder;)V

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    goto :goto_3

    .line 77
    :goto_2
    nop

    .line 79
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws001"

    const-string v3, "psc.fsm: e"

    invoke-static {v1, v3, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    if-eqz v2, :cond_5

    .line 83
    sget-object v0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->PSS_LOCKER:[B

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->mServiceManagerByProcessMap:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 87
    :cond_5
    :goto_4
    return-object v2

    .line 59
    .end local v2    # "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 59
    .restart local v2    # "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method
