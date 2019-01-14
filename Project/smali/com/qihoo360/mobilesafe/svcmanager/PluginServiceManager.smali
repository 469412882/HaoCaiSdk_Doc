.class Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;
.super Ljava/lang/Object;
.source "PluginServiceManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->DEBUG:Z

    .line 43
    sget-boolean v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PluginServiceManager"

    goto :goto_0

    :cond_0
    const-class v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->sRecordMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPluginService(Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)Landroid/os/IBinder;
    .locals 4
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "deathMonitor"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->sRecordMap:Ljava/util/Map;

    monitor-enter v0

    .line 60
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->generateMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->sRecordMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;

    move-object v1, v3

    .line 62
    .local v1, "pr":Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->isServiceAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 65
    :cond_0
    if-nez v1, :cond_1

    .line 66
    new-instance v3, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;

    invoke-direct {v3, p0, p1}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 67
    sget-object v3, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->sRecordMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v1, p2, p3}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->getService(ILandroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 69
    .end local v1    # "pr":Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;
    :catchall_0
    move-exception v2

    .line 69
    .restart local v1    # "pr":Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static onRefProcessDied(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 106
    sget-object v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->sRecordMap:Ljava/util/Map;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->sRecordMap:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->generateMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;

    .line 108
    .local v1, "pr":Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;
    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v1, p2}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->refProcessDied(I)I

    move-result v2

    .line 111
    .local v2, "retCount":I
    sget-boolean v3, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 112
    sget-object v3, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onRefProcessDied] remaining ref count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    if-gtz v2, :cond_1

    .line 116
    invoke-static {v1}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->removePluginServiceRecord(Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;)V

    .line 119
    .end local v1    # "pr":Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;
    .end local v2    # "retCount":I
    :cond_1
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static onRefReleased(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 82
    sget-object v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->sRecordMap:Ljava/util/Map;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->sRecordMap:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->generateMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;

    .line 84
    .local v1, "pr":Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;
    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v1, p2}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->decrementProcessRef(I)I

    move-result v2

    .line 87
    .local v2, "retCount":I
    sget-boolean v3, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 88
    sget-object v3, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onRefReleased] remaining ref count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    if-gtz v2, :cond_1

    .line 92
    invoke-static {v1}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->removePluginServiceRecord(Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;)V

    .line 95
    .end local v1    # "pr":Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;
    .end local v2    # "retCount":I
    :cond_1
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removePluginServiceRecord(Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;)V
    .locals 4
    .param p0, "pr"    # Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;

    .line 126
    sget-boolean v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removePluginServiceRecord]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->mPluginName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    sget-object v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->sRecordMap:Ljava/util/Map;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->mPluginName:Ljava/lang/String;

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->mServiceName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->generateMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->mPluginBinder:Lcom/qihoo360/loader2/MP$PluginBinder;

    if-nez v2, :cond_1

    .line 138
    const-string v2, "ws001"

    const-string v3, "psm.rpsr: mpb nil"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    monitor-exit v0

    return-void

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->mPluginBinder:Lcom/qihoo360/loader2/MP$PluginBinder;

    invoke-static {v2}, Lcom/qihoo360/loader2/MP;->releasePluginBinder(Lcom/qihoo360/loader2/MP$PluginBinder;)V

    .line 144
    sget-object v2, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->sRecordMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v1    # "key":Ljava/lang/String;
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
