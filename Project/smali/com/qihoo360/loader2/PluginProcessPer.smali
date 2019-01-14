.class Lcom/qihoo360/loader2/PluginProcessPer;
.super Lcom/qihoo360/loader2/IPluginClient$Stub;
.source "PluginProcessPer.java"


# instance fields
.field final mACM:Lcom/qihoo360/loader2/PluginContainers;

.field private final mContext:Landroid/content/Context;

.field private mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

.field private final mPluginMgr:Lcom/qihoo360/loader2/PmBase;

.field private mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final mServiceMgr:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/qihoo360/loader2/PmBase;ILjava/util/HashSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/qihoo360/loader2/PmBase;
    .param p3, "process"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/qihoo360/loader2/PmBase;",
            "I",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p4, "containers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/qihoo360/loader2/IPluginClient$Stub;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mReceivers:Ljava/util/HashMap;

    .line 69
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    .line 71
    new-instance v0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    invoke-direct {v0, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mServiceMgr:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    .line 74
    new-instance v0, Lcom/qihoo360/loader2/PluginContainers;

    invoke-direct {v0}, Lcom/qihoo360/loader2/PluginContainers;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    .line 75
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    invoke-virtual {v0, p3, p4}, Lcom/qihoo360/loader2/PluginContainers;->init(ILjava/util/HashSet;)V

    .line 76
    return-void
.end method

.method private sendIntent(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIntent pr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 235
    if-eqz p2, :cond_1

    .line 236
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qihoo360/replugin/base/LocalBroadcastHelper;->sendBroadcastSyncUi(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 240
    :goto_0
    return-void
.end method


# virtual methods
.method public allocActivityContainer(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "process"    # I
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->getEventCallbacks()Lcom/qihoo360/replugin/RePluginEventCallbacks;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onPrepareAllocPitActivity(Landroid/content/Intent;)V

    .line 140
    const/4 v0, 0x0

    .line 143
    .local v0, "loadPlugin":Ljava/lang/String;
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isUIProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    move-object v0, p1

    .line 145
    const/4 p2, -0x1

    goto :goto_0

    .line 147
    :cond_0
    move-object v0, p1

    .line 151
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

    if-nez v1, :cond_1

    .line 154
    const-string v1, "ws001"

    const-string v2, "a.a.c p i n"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x0

    return-object v1

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

    iget-object v1, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_2
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/qihoo360/loader2/PluginProcessPer;->bindActivity(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "container":Ljava/lang/String;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_3

    .line 163
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PACM: eval plugin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", container="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    return-object v1
.end method

.method final bindActivity(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 11
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "process"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .line 264
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->loadAppPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 265
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 266
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 267
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PACM: bindActivity: may be invalid plugin name or load plugin failed: plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    return-object v1

    .line 273
    :cond_1
    iget-object v2, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v2, p3}, Lcom/qihoo360/replugin/component/ComponentList;->getActivity(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 274
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v2, :cond_3

    .line 275
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_2

    .line 276
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PACM: bindActivity: activity not found: activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_2
    return-object v1

    .line 281
    :cond_3
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 282
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 284
    :cond_4
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 285
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 292
    :cond_5
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v4, ":p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 293
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v3}, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->processTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 294
    .local v10, "processTail":Ljava/lang/String;
    iget-object v3, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    move-object v4, v2

    move-object v5, p1

    move-object v6, p3

    move v7, p2

    move-object v8, p4

    move-object v9, v10

    invoke-virtual/range {v3 .. v9}, Lcom/qihoo360/loader2/PluginContainers;->alloc2(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .end local v10    # "processTail":Ljava/lang/String;
    .local v3, "container":Ljava/lang/String;
    goto :goto_0

    .line 296
    .end local v3    # "container":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    move-object v4, v2

    move-object v5, p1

    move-object v6, p3

    move v7, p2

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/qihoo360/loader2/PluginContainers;->alloc(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 299
    .restart local v3    # "container":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 300
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_7

    .line 301
    const-string v4, "ws001"

    const-string v5, "PACM: bindActivity: activity container is empty"

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_7
    return-object v1

    .line 306
    :cond_8
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_9

    .line 307
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PACM: bindActivity: lookup activity container: container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_9
    move-object v4, v1

    .line 313
    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v5, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v5, v5, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 318
    goto :goto_1

    .line 314
    :catch_0
    move-exception v5

    .line 316
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "ws001"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_1
    if-nez v4, :cond_b

    .line 320
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_a

    .line 321
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PACM: bindActivity: plugin activity class not found: c="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_a
    return-object v1

    .line 326
    :cond_b
    return-object v3
.end method

.method public dumpActivities()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/PluginContainers;->dump()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpServices()Ljava/lang/String;
    .locals 4

    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/qihoo360/loader2/PluginProcessPer;->fetchServiceServer()Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 338
    .local v0, "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    if-eqz v0, :cond_0

    .line 340
    :try_start_1
    invoke-interface {v0}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;->dump()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 341
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "ws001"

    const-string v3, "psc.sts: pss e"

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 349
    .end local v0    # "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    goto :goto_0

    .line 347
    :catch_1
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 351
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchServiceServer()Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mServiceMgr:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->getService()Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v0

    return-object v0
.end method

.method final init(Lcom/qihoo360/loader2/Plugin;)V
    .locals 0
    .param p1, "p"    # Lcom/qihoo360/loader2/Plugin;

    .line 79
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

    .line 80
    return-void
.end method

.method public onReceive(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "receiver"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 331
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1, p2, v0, p3}, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper;->onPluginReceiverReceived(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Intent;)V

    .line 332
    return-void
.end method

.method public queryBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "binder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v1, p1}, Lcom/qihoo360/loader2/PmBase;->loadAppPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 177
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 179
    const-string v2, "ws001"

    const-string v3, "q.b p i n"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-object v1

    .line 183
    :cond_1
    iget-object v2, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    if-nez v2, :cond_2

    .line 185
    const-string v2, "ws001"

    const-string v3, "q.b p l i n"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-object v1

    .line 189
    :cond_2
    iget-object v2, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mBinderPlugin:Lcom/qihoo360/loader2/Loader$ProxyPlugin;

    if-nez v2, :cond_3

    .line 191
    const-string v2, "ws001"

    const-string v3, "q.b p l b i n"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-object v1

    .line 195
    :cond_3
    iget-object v2, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mBinderPlugin:Lcom/qihoo360/loader2/Loader$ProxyPlugin;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader$ProxyPlugin;->mPlugin:Lcom/qihoo360/loader2/IPlugin;

    if-nez v2, :cond_4

    .line 197
    const-string v2, "ws001"

    const-string v3, "q.b p l b p i n"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-object v1

    .line 201
    :cond_4
    iget-object v1, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v1, v1, Lcom/qihoo360/loader2/Loader;->mBinderPlugin:Lcom/qihoo360/loader2/Loader$ProxyPlugin;

    iget-object v1, v1, Lcom/qihoo360/loader2/Loader$ProxyPlugin;->mPlugin:Lcom/qihoo360/loader2/IPlugin;

    invoke-interface {v1, p2}, Lcom/qihoo360/loader2/IPlugin;->query(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 202
    .local v1, "b":Landroid/os/IBinder;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_5

    .line 203
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginImpl.query: call plugin aidl: plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " binder.name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " binder.object="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_5
    nop

    .line 208
    return-object v1
.end method

.method public releaseBinder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "ws001"

    const-string v1, "PluginImpl.releaseBinder"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->getEventCallbacks()Lcom/qihoo360/replugin/RePluginEventCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onBinderReleased()V

    .line 218
    return-void
.end method

.method final resolveActivityClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .param p1, "container"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "plugin":Ljava/lang/String;
    const/4 v1, 0x0

    .line 92
    .local v1, "activity":Ljava/lang/String;
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    invoke-virtual {v2, p1}, Lcom/qihoo360/loader2/PluginContainers;->lookupByContainer(Ljava/lang/String;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-result-object v2

    .line 93
    .local v2, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    if-nez v2, :cond_0

    .line 96
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use f.a, c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-class v3, Lcom/qihoo360/replugin/component/dummy/ForwardActivity;

    return-object v3

    .line 100
    :cond_0
    iget-object v0, v2, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    .line 101
    iget-object v1, v2, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    .line 103
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 104
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PACM: loadActivityClass in="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " plugin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/qihoo360/loader2/PluginProcessPer;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v3, v0}, Lcom/qihoo360/loader2/PmBase;->loadAppPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v3

    .line 108
    .local v3, "p":Lcom/qihoo360/loader2/Plugin;
    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 111
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load fail: c="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " p="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v4

    .line 116
    :cond_2
    invoke-virtual {v3}, Lcom/qihoo360/loader2/Plugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 117
    .local v5, "cl":Ljava/lang/ClassLoader;
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_3

    .line 118
    const-string v6, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PACM: loadActivityClass, plugin activity loader: in="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " activity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_3
    nop

    .line 122
    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v5, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 127
    goto :goto_0

    .line 123
    :catch_0
    move-exception v6

    .line 125
    .local v6, "e":Ljava/lang/Throwable;
    const-string v7, "ws001"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_4

    .line 129
    const-string v6, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PACM: loadActivityClass, plugin activity loader: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", loader="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_4
    return-object v4
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qihoo360/loader2/PluginProcessPer;->sendIntent(Landroid/content/Intent;Z)V

    .line 223
    return-void
.end method

.method public sendIntentSync(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/qihoo360/loader2/PluginProcessPer;->sendIntent(Landroid/content/Intent;Z)V

    .line 228
    return-void
.end method

.method public sumActivities()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->sumActivities()I

    move-result v0

    return v0
.end method
