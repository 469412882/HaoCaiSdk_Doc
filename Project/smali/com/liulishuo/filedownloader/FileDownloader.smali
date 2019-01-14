.class public Lcom/liulishuo/filedownloader/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/FileDownloader$HolderClass;
    }
.end annotation


# static fields
.field private static final INIT_LOST_CONNECTED_HANDLER_LOCK:Ljava/lang/Object;

.field private static final INIT_QUEUES_HANDLER_LOCK:Ljava/lang/Object;


# instance fields
.field private mLostConnectedHandler:Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;

.field private mQueuesHandler:Lcom/liulishuo/filedownloader/IQueuesHandler;

.field private pauseAllRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 731
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/FileDownloader;->INIT_QUEUES_HANDLER_LOCK:Ljava/lang/Object;

    .line 745
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/FileDownloader;->INIT_LOST_CONNECTED_HANDLER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAvoidDropFrame()V
    .locals 1

    .line 196
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->setGlobalPost2UIInterval(I)V

    .line 197
    return-void
.end method

.method public static enableAvoidDropFrame()V
    .locals 1

    .line 185
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->setGlobalPost2UIInterval(I)V

    .line 186
    return-void
.end method

.method public static getImpl()Lcom/liulishuo/filedownloader/FileDownloader;
    .locals 1

    .line 130
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader$HolderClass;->access$000()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    if-nez p0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the provided context must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/liulishuo/filedownloader/FileDownloader;->setup(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maker"    # Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    .line 112
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 113
    const-class v0, Lcom/liulishuo/filedownloader/FileDownloader;

    const-string v1, "init Downloader with params: %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_0
    if-nez p0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the provided context must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->holdContext(Landroid/content/Context;)V

    .line 122
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->setInitCustomMaker(Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;)V

    .line 123
    return-void
.end method

.method public static isEnabledAvoidDropFrame()Z
    .locals 1

    .line 206
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->isIntervalValid()Z

    move-result v0

    return v0
.end method

.method public static setGlobalHandleSubPackageSize(I)V
    .locals 2
    .param p0, "packageSize"    # I

    .line 171
    if-gtz p0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sub package size must more than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    sput p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->SUB_PACKAGE_SIZE:I

    .line 175
    return-void
.end method

.method public static setGlobalPost2UIInterval(I)V
    .locals 0
    .param p0, "intervalMillisecond"    # I

    .line 152
    sput p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->INTERVAL:I

    .line 153
    return-void
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->holdContext(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public static setupOnApplicationOnCreate(Landroid/app/Application;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;
    .locals 3
    .param p0, "application"    # Landroid/app/Application;

    .line 87
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->holdContext(Landroid/content/Context;)V

    .line 90
    new-instance v1, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    invoke-direct {v1}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;-><init>()V

    .line 91
    .local v1, "customMaker":Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->setInitCustomMaker(Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;)V

    .line 93
    return-object v1
.end method


# virtual methods
.method public addServiceConnectListener(Lcom/liulishuo/filedownloader/FileDownloadConnectListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadConnectListener;

    .line 557
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadEventPool;

    move-result-object v0

    const-string v1, "event.service.connect.changed"

    invoke-virtual {v0, v1, p1}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->addListener(Ljava/lang/String;Lcom/liulishuo/filedownloader/event/IDownloadListener;)Z

    .line 559
    return-void
.end method

.method public bindService()V
    .locals 2

    .line 485
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->bindStartByContext(Landroid/content/Context;)V

    .line 488
    :cond_0
    return-void
.end method

.method public bindService(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 504
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 507
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    .line 508
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->bindStartByContext(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 510
    :goto_0
    return-void
.end method

.method public clear(ILjava/lang/String;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "targetFilePath"    # Ljava/lang/String;

    .line 321
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloader;->pause(I)I

    .line 323
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->clearTaskData(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getTempPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "intermediateFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 332
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 338
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 341
    .end local v0    # "intermediateFile":Ljava/io/File;
    .end local v1    # "targetFile":Ljava/io/File;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public clearAllTaskData()V
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloader;->pauseAll()V

    .line 356
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->clearAllTaskData()V

    .line 357
    return-void
.end method

.method public create(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 213
    new-instance v0, Lcom/liulishuo/filedownloader/DownloadTask;

    invoke-direct {v0, p1}, Lcom/liulishuo/filedownloader/DownloadTask;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method getLostConnectedHandler()Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloader;->mLostConnectedHandler:Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;

    if-nez v0, :cond_1

    .line 750
    sget-object v0, Lcom/liulishuo/filedownloader/FileDownloader;->INIT_LOST_CONNECTED_HANDLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 751
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloader;->mLostConnectedHandler:Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;

    if-nez v1, :cond_0

    .line 752
    new-instance v1, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;

    invoke-direct {v1}, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloader;->mLostConnectedHandler:Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;

    .line 753
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloader;->mLostConnectedHandler:Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;

    check-cast v1, Lcom/liulishuo/filedownloader/FileDownloadConnectListener;

    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/FileDownloader;->addServiceConnectListener(Lcom/liulishuo/filedownloader/FileDownloadConnectListener;)V

    .line 755
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 758
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloader;->mLostConnectedHandler:Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;

    return-object v0
.end method

.method getQueuesHandler()Lcom/liulishuo/filedownloader/IQueuesHandler;
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloader;->mQueuesHandler:Lcom/liulishuo/filedownloader/IQueuesHandler;

    if-nez v0, :cond_1

    .line 736
    sget-object v0, Lcom/liulishuo/filedownloader/FileDownloader;->INIT_QUEUES_HANDLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloader;->mQueuesHandler:Lcom/liulishuo/filedownloader/IQueuesHandler;

    if-nez v1, :cond_0

    .line 738
    new-instance v1, Lcom/liulishuo/filedownloader/QueuesHandler;

    invoke-direct {v1}, Lcom/liulishuo/filedownloader/QueuesHandler;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloader;->mQueuesHandler:Lcom/liulishuo/filedownloader/IQueuesHandler;

    .line 740
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 742
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloader;->mQueuesHandler:Lcom/liulishuo/filedownloader/IQueuesHandler;

    return-object v0
.end method

.method public getSoFar(I)J
    .locals 3
    .param p1, "downloadId"    # I

    .line 363
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->get(I)Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    .line 364
    .local v0, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getSofar(I)J

    move-result-wide v1

    return-wide v1

    .line 368
    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileSoFarBytes()J

    move-result-wide v1

    return-wide v1
.end method

.method public getStatus(ILjava/lang/String;)B
    .locals 3
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 415
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->get(I)Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    .line 416
    .local v0, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    if-nez v0, :cond_0

    .line 417
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getStatus(I)B

    move-result v1

    .line 417
    .local v1, "status":B
    goto :goto_0

    .line 419
    .end local v1    # "status":B
    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getStatus()B

    move-result v1

    .line 422
    .restart local v1    # "status":B
    :goto_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 423
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isFilenameConverted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    const/4 v1, -0x3

    .line 429
    :cond_1
    return v1
.end method

.method public getStatus(Ljava/lang/String;Ljava/lang/String;)B
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 402
    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/liulishuo/filedownloader/FileDownloader;->getStatus(ILjava/lang/String;)B

    move-result v0

    return v0
.end method

.method public getStatusIgnoreCompleted(I)B
    .locals 1
    .param p1, "id"    # I

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/filedownloader/FileDownloader;->getStatus(ILjava/lang/String;)B

    move-result v0

    return v0
.end method

.method public getTotal(I)J
    .locals 3
    .param p1, "id"    # I

    .line 375
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->get(I)Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    .line 376
    .local v0, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    if-nez v0, :cond_0

    .line 377
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getTotal(I)J

    move-result-wide v1

    return-wide v1

    .line 380
    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileTotalBytes()J

    move-result-wide v1

    return-wide v1
.end method

.method public insureServiceBind()Lcom/liulishuo/filedownloader/FileDownloadLine;
    .locals 1

    .line 712
    new-instance v0, Lcom/liulishuo/filedownloader/FileDownloadLine;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/FileDownloadLine;-><init>()V

    return-object v0
.end method

.method public insureServiceBindAsync()Lcom/liulishuo/filedownloader/FileDownloadLineAsync;
    .locals 1

    .line 728
    new-instance v0, Lcom/liulishuo/filedownloader/FileDownloadLineAsync;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/FileDownloadLineAsync;-><init>()V

    return-object v0
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 546
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->isConnected()Z

    move-result v0

    return v0
.end method

.method public pause(I)I
    .locals 5
    .param p1, "id"    # I

    .line 290
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->getDownloadingList(I)Ljava/util/List;

    move-result-object v0

    .line 291
    .local v0, "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 296
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 297
    .local v2, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->pause()Z

    .line 298
    .end local v2    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    goto :goto_0

    .line 300
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 292
    :cond_2
    :goto_1
    const-string v1, "request pause but not exist %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    return v4
.end method

.method public pause(Lcom/liulishuo/filedownloader/FileDownloadListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 245
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;->expire(Lcom/liulishuo/filedownloader/FileDownloadListener;)V

    .line 247
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->copy(Lcom/liulishuo/filedownloader/FileDownloadListener;)Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 249
    .local v2, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->pause()Z

    .line 250
    .end local v2    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public pauseAll()V
    .locals 5

    .line 259
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;->expireAll()V

    .line 260
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadList;->copy()[Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    .line 261
    .local v0, "downloadList":[Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 262
    .local v3, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v4

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->pause()Z

    .line 261
    .end local v3    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->pauseAllTasks()V

    goto :goto_1

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloader;->pauseAllRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 270
    new-instance v1, Lcom/liulishuo/filedownloader/FileDownloader$1;

    invoke-direct {v1, p0}, Lcom/liulishuo/filedownloader/FileDownloader$1;-><init>(Lcom/liulishuo/filedownloader/FileDownloader;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloader;->pauseAllRunnable:Ljava/lang/Runnable;

    .line 277
    :cond_2
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v1

    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloader;->pauseAllRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->bindStartByContext(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 280
    :goto_1
    return-void
.end method

.method public removeServiceConnectListener(Lcom/liulishuo/filedownloader/FileDownloadConnectListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadConnectListener;

    .line 569
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadEventPool;

    move-result-object v0

    const-string v1, "event.service.connect.changed"

    invoke-virtual {v0, v1, p1}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->removeListener(Ljava/lang/String;Lcom/liulishuo/filedownloader/event/IDownloadListener;)Z

    .line 571
    return-void
.end method

.method public replaceListener(ILcom/liulishuo/filedownloader/FileDownloadListener;)I
    .locals 2
    .param p1, "id"    # I
    .param p2, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 465
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->get(I)Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    .line 466
    .local v0, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    if-nez v0, :cond_0

    .line 467
    const/4 v1, 0x0

    return v1

    .line 470
    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 471
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v1

    return v1
.end method

.method public replaceListener(Ljava/lang/String;Lcom/liulishuo/filedownloader/FileDownloadListener;)I
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 441
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getDefaultSaveFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/liulishuo/filedownloader/FileDownloader;->replaceListener(Ljava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/FileDownloadListener;)I

    move-result v0

    return v0
.end method

.method public replaceListener(Ljava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/FileDownloadListener;)I
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 453
    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/liulishuo/filedownloader/FileDownloader;->replaceListener(ILcom/liulishuo/filedownloader/FileDownloadListener;)I

    move-result v0

    return v0
.end method

.method public setMaxNetworkThreadCount(I)Z
    .locals 3
    .param p1, "count"    # I

    .line 681
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    const-string v0, "Can\'t change the max network thread count, because there are actively executing tasks in FileDownloader, please try again after all actively executing tasks are completed or invoking FileDownloader#pauseAll directly."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    return v1

    .line 689
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->setMaxNetworkThreadCount(I)Z

    move-result v0

    return v0
.end method

.method public setTaskCompleted(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "totalBytes"    # J

    .line 641
    const-string v0, "If you invoked this method, please remove it directly feel free, it doesn\'t need any longer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    const/4 v0, 0x1

    return v0
.end method

.method public setTaskCompleted(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;",
            ">;)Z"
        }
    .end annotation

    .line 666
    .local p1, "taskAtomList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;>;"
    const-string v0, "If you invoked this method, please remove it directly feel free, it doesn\'t need any longer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    const/4 v0, 0x1

    return v0
.end method

.method public start(Lcom/liulishuo/filedownloader/FileDownloadListener;Z)Z
    .locals 4
    .param p1, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;
    .param p2, "isSerial"    # Z

    .line 225
    if-nez p1, :cond_0

    .line 226
    const-string v0, "Tasks with the listener can\'t start, because the listener provided is null: [null, %B]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 227
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 226
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    return v3

    .line 232
    :cond_0
    if-eqz p2, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloader;->getQueuesHandler()Lcom/liulishuo/filedownloader/IQueuesHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IQueuesHandler;->startQueueSerial(Lcom/liulishuo/filedownloader/FileDownloadListener;)Z

    move-result v0

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloader;->getQueuesHandler()Lcom/liulishuo/filedownloader/IQueuesHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IQueuesHandler;->startQueueParallel(Lcom/liulishuo/filedownloader/FileDownloadListener;)Z

    move-result v0

    .line 232
    :goto_0
    return v0
.end method

.method public startForeground(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 596
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->startForeground(ILandroid/app/Notification;)V

    .line 597
    return-void
.end method

.method public stopForeground(Z)V
    .locals 1
    .param p1, "removeNotification"    # Z

    .line 609
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->stopForeground(Z)V

    .line 610
    return-void
.end method

.method public unBindService()V
    .locals 2

    .line 516
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->unbindByContext(Landroid/content/Context;)V

    .line 519
    :cond_0
    return-void
.end method

.method public unBindServiceIfIdle()Z
    .locals 2

    .line 529
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 530
    return v1

    .line 533
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloader;->unBindService()V

    .line 536
    const/4 v0, 0x1

    return v0

    .line 539
    :cond_1
    return v1
.end method
