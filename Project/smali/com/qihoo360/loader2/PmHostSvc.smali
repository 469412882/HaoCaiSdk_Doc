.class Lcom/qihoo360/loader2/PmHostSvc;
.super Lcom/qihoo360/loader2/IPluginHost$Stub;
.source "PmHostSvc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/PmHostSvc$BinderDied;
    }
.end annotation


# static fields
.field private static final GROUP_COUNT:I

.field private static mPluginGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActionPluginComponents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mManager:Lcom/qihoo360/replugin/packages/PluginManagerServer;

.field private mNeedRestart:Z

.field mPluginMgr:Lcom/qihoo360/loader2/PmBase;

.field mReceiverProxy:Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;

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

.field mServiceMgr:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 623
    sget v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_COUNT_TASK:I

    sput v0, Lcom/qihoo360/loader2/PmHostSvc;->GROUP_COUNT:I

    .line 628
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/PmHostSvc;->mPluginGroupMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/qihoo360/loader2/PmBase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packm"    # Lcom/qihoo360/loader2/PmBase;

    .line 139
    invoke-direct {p0}, Lcom/qihoo360/loader2/IPluginHost$Stub;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mReceivers:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mActionPluginComponents:Ljava/util/HashMap;

    .line 140
    iput-object p1, p0, Lcom/qihoo360/loader2/PmHostSvc;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/qihoo360/loader2/PmHostSvc;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    .line 142
    new-instance v0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    invoke-direct {v0, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mServiceMgr:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    .line 143
    new-instance v0, Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-direct {v0, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mManager:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    .line 144
    return-void
.end method

.method private getValidGroup()I
    .locals 3

    .line 653
    const/4 v0, 0x0

    .line 653
    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qihoo360/loader2/PmHostSvc;->GROUP_COUNT:I

    if-ge v0, v1, :cond_1

    .line 655
    sget-object v1, Lcom/qihoo360/loader2/PmHostSvc;->mPluginGroupMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 656
    return v0

    .line 653
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private pluginDownloadedForPn(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .line 418
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qihoo360/loader2/V5FileInfo;->build(Ljava/io/File;I)Lcom/qihoo360/loader2/V5FileInfo;

    move-result-object v2

    .line 420
    .local v2, "v5f":Lcom/qihoo360/loader2/V5FileInfo;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 421
    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/qihoo360/loader2/V5FileInfo;->build(Ljava/io/File;I)Lcom/qihoo360/loader2/V5FileInfo;

    move-result-object v2

    .line 422
    if-nez v2, :cond_1

    .line 423
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 424
    const-string v1, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pluginDownloaded: unknown v5 plugin file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->getEventCallbacks()Lcom/qihoo360/replugin/RePluginEventCallbacks;

    move-result-object v1

    sget-object v4, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->V5_FILE_BUILD_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    invoke-virtual {v1, p1, v4}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onInstallPluginFailed(Ljava/lang/String;Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;)V

    .line 429
    return-object v3

    .line 433
    :cond_1
    iget-object v4, p0, Lcom/qihoo360/loader2/PmHostSvc;->mContext:Landroid/content/Context;

    const-string v5, "plugins_v3"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 434
    .local v4, "ddir":Ljava/io/File;
    iget-object v5, p0, Lcom/qihoo360/loader2/PmHostSvc;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v4, v6, v1}, Lcom/qihoo360/loader2/V5FileInfo;->updateV5FileTo(Landroid/content/Context;Ljava/io/File;ZZ)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    .line 435
    .local v1, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v1, :cond_3

    .line 436
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_2

    .line 437
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pluginDownloaded: failed to update v5 plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qihoo360/replugin/RePluginConfig;->getEventCallbacks()Lcom/qihoo360/replugin/RePluginEventCallbacks;

    move-result-object v5

    sget-object v6, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->V5_FILE_UPDATE_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    invoke-virtual {v5, p1, v6}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onInstallPluginFailed(Ljava/lang/String;Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;)V

    .line 442
    return-object v3

    .line 444
    :cond_3
    return-object v1
.end method

.method private saveAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "receiver"    # Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mActionPluginComponents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 555
    .local v0, "pluginReceivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 556
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 557
    iget-object v1, p0, Lcom/qihoo360/loader2/PmHostSvc;->mActionPluginComponents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 562
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 563
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 564
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_1
    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 569
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 572
    const-string v2, "ms-receiver"

    const-string v3, "\u4fdd\u5b58 Receiver (%s, %s, %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_2
    return-void
.end method

.method private sendIntent2Plugin(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIntent2Plugin target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    const-string v0, "ui"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    invoke-static {p1, p2, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->sendIntent2Plugin(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 529
    :cond_1
    const-string p1, "ui"

    .line 530
    invoke-static {p1, p2, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->sendIntent2Plugin(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 532
    return-void
.end method

.method private sendIntent2Process(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 485
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIntent2Process target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPluginHostProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 490
    if-eqz p3, :cond_1

    .line 491
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/qihoo360/replugin/base/LocalBroadcastHelper;->sendBroadcastSyncUi(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 495
    :goto_0
    return-void

    .line 498
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 499
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 500
    if-eqz p3, :cond_3

    .line 501
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/qihoo360/replugin/base/LocalBroadcastHelper;->sendBroadcastSyncUi(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 506
    :cond_4
    :goto_1
    invoke-static {p1, p2, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->sendIntent2Process(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 507
    return-void
.end method

.method private syncInstalledPluginInfo2All(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 6
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 373
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getParentInfo()Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    .line 374
    .local v0, "parent":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v0, :cond_0

    .line 375
    move-object v1, v0

    .line 375
    .local v1, "needToSyncPi":Lcom/qihoo360/replugin/model/PluginInfo;
    goto :goto_0

    .line 377
    .end local v1    # "needToSyncPi":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_0
    move-object v1, p1

    .line 381
    .restart local v1    # "needToSyncPi":Lcom/qihoo360/replugin/model/PluginInfo;
    :goto_0
    iget-object v2, p0, Lcom/qihoo360/loader2/PmHostSvc;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/qihoo360/loader2/PmBase;->newPluginFound(Lcom/qihoo360/replugin/model/PluginInfo;Z)V

    .line 384
    new-instance v2, Landroid/content/Intent;

    const-string v3, "ACTION_NEW_PLUGIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "persist_need_restart"

    iget-boolean v4, p0, Lcom/qihoo360/loader2/PmHostSvc;->mNeedRestart:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    const-string v3, "obj"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 387
    iget-object v3, p0, Lcom/qihoo360/loader2/PmHostSvc;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/qihoo360/replugin/base/IPC;->sendLocalBroadcast2AllSync(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 389
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 390
    const-string v3, "task-affinity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncInstalledPluginInfo2All: Sync complete! syncPi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    return-void
.end method

.method private syncUninstalledPluginInfo2All(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 2
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 398
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->pluginUninstalled(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_UNINSTALL_PLUGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "obj"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 405
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 406
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qihoo360/replugin/base/IPC;->sendLocalBroadcast2AllSync(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 408
    :cond_0
    new-instance v1, Lcom/qihoo360/loader2/PmHostSvc$1;

    invoke-direct {v1, p0, v0}, Lcom/qihoo360/loader2/PmHostSvc$1;-><init>(Lcom/qihoo360/loader2/PmHostSvc;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/qihoo360/mobilesafe/api/Tasks;->post2UI(Ljava/lang/Runnable;)Z

    .line 415
    :goto_0
    return-void
.end method


# virtual methods
.method public attachPluginProcess(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 188
    .local v7, "pid":I
    const/4 v0, 0x0

    move-object v1, v0

    .line 190
    .local v1, "client":Lcom/qihoo360/loader2/IPluginClient;
    :try_start_0
    invoke-static {p3}, Lcom/qihoo360/loader2/IPluginClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 195
    nop

    .line 196
    .end local v1    # "client":Lcom/qihoo360/loader2/IPluginClient;
    .local v8, "client":Lcom/qihoo360/loader2/IPluginClient;
    :goto_0
    move-object v8, v1

    goto :goto_1

    .line 191
    .end local v8    # "client":Lcom/qihoo360/loader2/IPluginClient;
    .restart local v1    # "client":Lcom/qihoo360/loader2/IPluginClient;
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a.p.p pc.s.ai: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 196
    .end local v1    # "client":Lcom/qihoo360/loader2/IPluginClient;
    .restart local v8    # "client":Lcom/qihoo360/loader2/IPluginClient;
    :goto_1
    if-nez v8, :cond_0

    .line 197
    return-object v0

    .line 199
    :cond_0
    iget-object v6, p0, Lcom/qihoo360/loader2/PmHostSvc;->mManager:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    move v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v8

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/qihoo360/loader2/PluginProcessMain;->attachProcess(ILjava/lang/String;ILandroid/os/IBinder;Lcom/qihoo360/loader2/IPluginClient;Ljava/lang/String;Lcom/qihoo360/replugin/packages/PluginManagerServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .line 674
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->dump()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fetchBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "binder":Landroid/os/IBinder;
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->sBinders:Ljava/util/HashMap;

    monitor-enter v1

    .line 165
    :try_start_0
    sget-object v2, Lcom/qihoo360/loader2/PluginProcessMain;->sBinders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    move-object v0, v2

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetch binder: n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    return-object v0

    .line 166
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public fetchManagerServer()Lcom/qihoo360/replugin/packages/IPluginManagerServer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mManager:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->getService()Lcom/qihoo360/replugin/packages/IPluginManagerServer;

    move-result-object v0

    return-object v0
.end method

.method public fetchPersistentCookie()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPersistentCookie()J

    move-result-wide v0

    return-wide v0
.end method

.method public fetchServiceServer()Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mServiceMgr:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->getService()Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v0

    return-object v0
.end method

.method public getPidByProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    invoke-static {p1}, Lcom/qihoo360/loader2/PluginProcessMain;->getPidByProcessName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProcessNameByPid(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    invoke-static {p1}, Lcom/qihoo360/loader2/PluginProcessMain;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskAffinityGroupIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "pTaskAffinity"    # Ljava/lang/String;

    .line 633
    sget-object v0, Lcom/qihoo360/loader2/PmHostSvc;->mPluginGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 634
    invoke-direct {p0}, Lcom/qihoo360/loader2/PmHostSvc;->getValidGroup()I

    move-result v0

    .line 635
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 636
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 637
    const-string v2, "task-affinity"

    const-string v3, "Get groupID fail, not enough TaskAffinity group"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    return v1

    .line 641
    :cond_1
    sget-object v1, Lcom/qihoo360/loader2/PmHostSvc;->mPluginGroupMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 643
    .end local v0    # "index":I
    :cond_2
    sget-object v0, Lcom/qihoo360/loader2/PmHostSvc;->mPluginGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 646
    .restart local v0    # "index":I
    :goto_0
    return v0
.end method

.method public installBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install binder: n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->sBinders:Ljava/util/HashMap;

    monitor-enter v0

    .line 152
    if-eqz p2, :cond_1

    .line 153
    :try_start_0
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->sBinders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v1, Lcom/qihoo360/loader2/PmHostSvc$BinderDied;

    invoke-direct {v1, p1, p2}, Lcom/qihoo360/loader2/PmHostSvc$BinderDied;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 156
    :cond_1
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->sBinders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :goto_0
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProcessAlive(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    invoke-static {p1}, Lcom/qihoo360/loader2/PluginProcessMain;->isProcessAlive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listPlugins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-static {}, Lcom/qihoo360/loader2/PluginTable;->buildPlugins()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "receiver"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 305
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1, p2, v0, p3}, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper;->onPluginReceiverReceived(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method public pluginDownloaded(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pluginDownloaded\uff1a path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "fn":Ljava/lang/String;
    const-string v1, "p-n-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "v-plugin-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "plugin-s-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "p-m-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/qihoo360/loader2/PmHostSvc;->mManager:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->getService()Lcom/qihoo360/replugin/packages/IPluginManagerServer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qihoo360/replugin/packages/IPluginManagerServer;->install(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    goto :goto_1

    .line 333
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/qihoo360/loader2/PmHostSvc;->pluginDownloadedForPn(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    .line 335
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    :goto_1
    nop

    .line 338
    if-eqz v1, :cond_3

    .line 340
    invoke-direct {p0, v1}, Lcom/qihoo360/loader2/PmHostSvc;->syncInstalledPluginInfo2All(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 344
    :cond_3
    return-object v1
.end method

.method public pluginExtracted(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 450
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pluginExtracted\uff1a path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->build(Ljava/io/File;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    .line 457
    .local v1, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 458
    return v2

    .line 462
    :cond_1
    iget-object v3, p0, Lcom/qihoo360/loader2/PmHostSvc;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v3, v1, v2}, Lcom/qihoo360/loader2/PmBase;->newPluginFound(Lcom/qihoo360/replugin/model/PluginInfo;Z)V

    .line 465
    new-instance v2, Landroid/content/Intent;

    const-string v3, "ACTION_NEW_PLUGIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "persist_need_restart"

    iget-boolean v4, p0, Lcom/qihoo360/loader2/PmHostSvc;->mNeedRestart:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 467
    const-string v3, "obj"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 468
    iget-object v3, p0, Lcom/qihoo360/loader2/PmHostSvc;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/qihoo360/replugin/base/IPC;->sendLocalBroadcast2AllSync(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 470
    const/4 v3, 0x1

    return v3
.end method

.method public pluginUninstalled(Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pluginUninstalled\uff1a pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mManager:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->getService()Lcom/qihoo360/replugin/packages/IPluginManagerServer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qihoo360/replugin/packages/IPluginManagerServer;->uninstall(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v0

    .line 355
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 356
    invoke-direct {p0, p1}, Lcom/qihoo360/loader2/PmHostSvc;->syncUninstalledPluginInfo2All(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 359
    :cond_1
    return v0
.end method

.method public queryPluginBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "binder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v0, v0, Lcom/qihoo360/loader2/PmBase;->mLocal:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v0, p1, p2}, Lcom/qihoo360/loader2/PluginCommImpl;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public queryPluginsReceiverList(Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    if-nez p1, :cond_0

    .line 582
    return-object v0

    .line 585
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "action":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    return-object v0

    .line 590
    :cond_1
    iget-object v2, p0, Lcom/qihoo360/loader2/PmHostSvc;->mActionPluginComponents:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 591
    .local v2, "pluginReceiverMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 592
    return-object v0

    .line 596
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 597
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 600
    .local v5, "plugin":Ljava/lang/String;
    iget-object v6, p0, Lcom/qihoo360/loader2/PmHostSvc;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v6, v6, Lcom/qihoo360/loader2/PmBase;->mLocal:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v6, v5}, Lcom/qihoo360/loader2/PluginCommImpl;->queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v6

    .line 601
    .local v6, "list":Lcom/qihoo360/replugin/component/ComponentList;
    if-eqz v6, :cond_3

    .line 603
    invoke-virtual {v6}, Lcom/qihoo360/replugin/component/ComponentList;->getReceiverMap()Ljava/util/HashMap;

    move-result-object v7

    .line 604
    .local v7, "receiversMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ActivityInfo;>;"
    if-eqz v7, :cond_3

    .line 605
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 608
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "plugin":Ljava/lang/String;
    .end local v6    # "list":Lcom/qihoo360/replugin/component/ComponentList;
    .end local v7    # "receiversMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ActivityInfo;>;"
    :cond_3
    goto :goto_0

    .line 609
    :cond_4
    return-object v0
.end method

.method public regActivity(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "container"    # Ljava/lang/String;
    .param p4, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 210
    .local v0, "pid":I
    invoke-static {v0, p1, p2, p4, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->attachActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    return-void
.end method

.method public regPluginBinder(Lcom/qihoo360/loader2/PluginBinderInfo;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "info"    # Lcom/qihoo360/loader2/PluginBinderInfo;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    iget v0, p1, Lcom/qihoo360/loader2/PluginBinderInfo;->pid:I

    invoke-static {v0, p2}, Lcom/qihoo360/loader2/PluginProcessMain;->attachBinder(ILandroid/os/IBinder;)V

    .line 234
    return-void
.end method

.method public regReceiver(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "rcvFilMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    .line 256
    .local v0, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 260
    :cond_0
    if-nez p2, :cond_1

    .line 261
    return-void

    .line 264
    :cond_1
    move-object v1, p2

    check-cast v1, Ljava/util/HashMap;

    .line 267
    .local v1, "receiverFilterMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 268
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    iget-object v4, p0, Lcom/qihoo360/loader2/PmHostSvc;->mReceiverProxy:Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;

    if-nez v4, :cond_2

    .line 269
    new-instance v4, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;

    invoke-direct {v4}, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;-><init>()V

    iput-object v4, p0, Lcom/qihoo360/loader2/PmHostSvc;->mReceiverProxy:Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;

    .line 270
    iget-object v4, p0, Lcom/qihoo360/loader2/PmHostSvc;->mReceiverProxy:Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;

    iget-object v5, p0, Lcom/qihoo360/loader2/PmHostSvc;->mActionPluginComponents:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;->setActionPluginMap(Ljava/util/HashMap;)V

    .line 274
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    .local v4, "receiver":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 277
    .local v5, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-eqz v5, :cond_4

    .line 278
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentFilter;

    .line 279
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v7}, Landroid/content/IntentFilter;->countActions()I

    move-result v8

    .line 280
    .local v8, "actionCount":I
    :goto_2
    const/4 v9, 0x1

    if-lt v8, v9, :cond_3

    .line 281
    add-int/lit8 v9, v8, -0x1

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p1, v4}, Lcom/qihoo360/loader2/PmHostSvc;->saveAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 286
    :cond_3
    iget-object v9, p0, Lcom/qihoo360/loader2/PmHostSvc;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/qihoo360/loader2/PmHostSvc;->mReceiverProxy:Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;

    invoke-virtual {v9, v10, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "actionCount":I
    goto :goto_1

    .line 289
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    .end local v4    # "receiver":Ljava/lang/String;
    .end local v5    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :cond_4
    goto :goto_0

    .line 290
    :cond_5
    return-void

    .line 257
    .end local v1    # "receiverFilterMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    :cond_6
    :goto_3
    return-void
.end method

.method public regService(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 222
    .local v0, "pid":I
    invoke-static {v0, p1, p2, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->attachService(IILjava/lang/String;Ljava/lang/String;)Z

    .line 223
    return-void
.end method

.method public sendIntent2Plugin(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qihoo360/loader2/PmHostSvc;->sendIntent2Plugin(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 512
    return-void
.end method

.method public sendIntent2PluginSync(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/qihoo360/loader2/PmHostSvc;->sendIntent2Plugin(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 517
    return-void
.end method

.method public sendIntent2Process(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qihoo360/loader2/PmHostSvc;->sendIntent2Process(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 476
    return-void
.end method

.method public sendIntent2ProcessSync(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/qihoo360/loader2/PmHostSvc;->sendIntent2Process(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 481
    return-void
.end method

.method public startPluginProcess(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "process"    # I
    .param p3, "info"    # Lcom/qihoo360/loader2/PluginBinderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qihoo360/loader2/PmBase;->startPluginProcessLocked(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sumBinders(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-static {p1}, Lcom/qihoo360/loader2/PluginProcessMain;->sumBinders(I)I

    move-result v0

    return v0
.end method

.method public unregActivity(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "container"    # Ljava/lang/String;
    .param p4, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 216
    .local v0, "pid":I
    invoke-static {v0, p1, p2, p4, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->detachActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    return-void
.end method

.method public unregPluginBinder(Lcom/qihoo360/loader2/PluginBinderInfo;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "info"    # Lcom/qihoo360/loader2/PluginBinderInfo;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    iget v0, p1, Lcom/qihoo360/loader2/PluginBinderInfo;->pid:I

    invoke-static {v0, p2}, Lcom/qihoo360/loader2/PluginProcessMain;->detachBinder(ILandroid/os/IBinder;)V

    .line 241
    iget v0, p1, Lcom/qihoo360/loader2/PluginBinderInfo;->pid:I

    invoke-static {v0, p1}, Lcom/qihoo360/loader2/PluginProcessMain;->probePluginClientByPid(ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v0

    .line 242
    .local v0, "client":Lcom/qihoo360/loader2/IPluginClient;
    if-nez v0, :cond_1

    .line 243
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 244
    const-string v1, "ws001"

    const-string v2, "unregPluginBinder ... client is null"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    return-void

    .line 250
    :cond_1
    invoke-interface {v0}, Lcom/qihoo360/loader2/IPluginClient;->releaseBinder()V

    .line 251
    return-void
.end method

.method public unregReceiver()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PmHostSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qihoo360/loader2/PmHostSvc;->mReceiverProxy:Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "t":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 298
    const-string v1, "ms-receiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregProxyReceiver failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public unregService(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 228
    .local v0, "pid":I
    invoke-static {v0, p1, p2, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->detachService(IILjava/lang/String;Ljava/lang/String;)Z

    .line 229
    return-void
.end method

.method public updatePluginInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    iget-object v1, p0, Lcom/qihoo360/loader2/PmHostSvc;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qihoo360/loader2/PmBase;->getPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/Plugin;->replaceInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 320
    :cond_0
    invoke-static {p1}, Lcom/qihoo360/loader2/PluginTable;->replaceInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 321
    return-void
.end method
