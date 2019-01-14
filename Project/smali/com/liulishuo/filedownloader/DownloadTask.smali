.class public Lcom/liulishuo/filedownloader/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/BaseDownloadTask;
.implements Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
.implements Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/DownloadTask$InQueueTaskImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT_CALLBACK_PROGRESS_MIN_INTERVAL_MILLIS:I = 0xa


# instance fields
.field private final headerCreateLock:Ljava/lang/Object;

.field volatile mAttachKey:I

.field private mAutoRetryTimes:I

.field private mCallbackProgressMinIntervalMillis:I

.field private mCallbackProgressTimes:I

.field private mFilename:Ljava/lang/String;

.field private mFinishListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private final mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

.field private mId:I

.field private mIsForceReDownload:Z

.field private mIsInQueueTask:Z

.field private volatile mIsMarkedAdded2List:Z

.field private mIsWifiRequired:Z

.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/liulishuo/filedownloader/FileDownloadListener;

.field private final mMessageHandler:Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;

.field private mPath:Ljava/lang/String;

.field private mPathAsDirectory:Z

.field private final mPauseLock:Ljava/lang/Object;

.field private mSyncCallback:Z

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mAutoRetryTimes:I

    .line 63
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mSyncCallback:Z

    .line 65
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsWifiRequired:Z

    .line 68
    const/16 v1, 0x64

    iput v1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mCallbackProgressTimes:I

    .line 69
    const/16 v1, 0xa

    iput v1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mCallbackProgressMinIntervalMillis:I

    .line 71
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsForceReDownload:Z

    .line 73
    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mAttachKey:I

    .line 74
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsInQueueTask:Z

    .line 531
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->headerCreateLock:Ljava/lang/Object;

    .line 552
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsMarkedAdded2List:Z

    .line 77
    iput-object p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mUrl:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mPauseLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mPauseLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;-><init>(Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;Ljava/lang/Object;)V

    .line 81
    .local v0, "hunter":Lcom/liulishuo/filedownloader/DownloadTaskHunter;
    iput-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    .line 82
    iput-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mMessageHandler:Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;

    .line 83
    return-void
.end method

.method static synthetic access$102(Lcom/liulishuo/filedownloader/DownloadTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/DownloadTask;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsInQueueTask:Z

    return p1
.end method

.method private checkAndCreateHeader()V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->headerCreateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-nez v1, :cond_0

    .line 537
    new-instance v1, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-direct {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 539
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 541
    :cond_1
    :goto_0
    return-void
.end method

.method private startTaskUnchecked()I
    .locals 5

    .line 309
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->isUsing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 312
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    .line 318
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->setAttachKeyDefault()V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->intoLaunchPool()V

    .line 328
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 1
    .param p1, "finishListener"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;

    .line 176
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFinishListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFinishListenerList:Ljava/util/ArrayList;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFinishListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFinishListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_1
    return-object p0
.end method

.method public addHeader(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->checkAndCreateHeader()V

    .line 207
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->add(Ljava/lang/String;)V

    .line 208
    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->checkAndCreateHeader()V

    .line 200
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-object p0
.end method

.method public asInQueueTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$InQueueTask;
    .locals 2

    .line 246
    new-instance v0, Lcom/liulishuo/filedownloader/DownloadTask$InQueueTaskImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/liulishuo/filedownloader/DownloadTask$InQueueTaskImpl;-><init>(Lcom/liulishuo/filedownloader/DownloadTask;Lcom/liulishuo/filedownloader/DownloadTask$1;)V

    return-object v0
.end method

.method public cancel()Z
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->pause()Z

    move-result v0

    return v0
.end method

.method public free()V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->free()V

    .line 562
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/FileDownloadList;->isNotContains(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsMarkedAdded2List:Z

    .line 565
    :cond_0
    return-void
.end method

.method public getAttachKey()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mAttachKey:I

    return v0
.end method

.method public getAutoRetryTimes()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mAutoRetryTimes:I

    return v0
.end method

.method public getCallbackProgressMinInterval()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mCallbackProgressMinIntervalMillis:I

    return v0
.end method

.method public getCallbackProgressTimes()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mCallbackProgressTimes:I

    return v0
.end method

.method public getDownloadId()I
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getId()I

    move-result v0

    return v0
.end method

.method public getErrorCause()Ljava/lang/Throwable;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getErrorCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getEtag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEx()Ljava/lang/Throwable;
    .locals 1

    .line 464
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getErrorCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishListenerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFinishListenerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeader()Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    return-object v0
.end method

.method public getId()I
    .locals 3

    .line 351
    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mId:I

    if-eqz v0, :cond_0

    .line 352
    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mId:I

    return v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mPath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mPathAsDirectory:Z

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mId:I

    return v0

    .line 359
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getLargeFileSoFarBytes()J
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getSofarBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargeFileTotalBytes()J
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getListener()Lcom/liulishuo/filedownloader/FileDownloadListener;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mListener:Lcom/liulishuo/filedownloader/FileDownloadListener;

    return-object v0
.end method

.method public getMessageHandler()Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mMessageHandler:Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;

    return-object v0
.end method

.method public getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 0

    .line 613
    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseLock()Ljava/lang/Object;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mPauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRetryingTimes()I
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getRetryingTimes()I

    move-result v0

    return v0
.end method

.method public getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    .locals 0

    .line 598
    return-object p0
.end method

.method public getSmallFileSoFarBytes()I
    .locals 5

    .line 417
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getSofarBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 418
    const v0, 0x7fffffff

    return v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getSofarBytes()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSmallFileTotalBytes()I
    .locals 5

    .line 435
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getTotalBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 436
    const v0, 0x7fffffff

    return v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getTotalBytes()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSoFarBytes()I
    .locals 1

    .line 412
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getSmallFileSoFarBytes()I

    move-result v0

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getSpeed()I

    move-result v0

    return v0
.end method

.method public getStatus()B
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getStatus()B

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .line 484
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTargetFilePath()Ljava/lang/String;
    .locals 3

    .line 402
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->isPathAsDirectory()Z

    move-result v1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getTargetFilePath(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()I
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getSmallFileTotalBytes()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public is(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 623
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public is(Lcom/liulishuo/filedownloader/FileDownloadListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 628
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getListener()Lcom/liulishuo/filedownloader/FileDownloadListener;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttached()Z
    .locals 1

    .line 283
    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mAttachKey:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContainFinishListener()Z
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFinishListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFinishListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContinue()Z
    .locals 1

    .line 493
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->isResuming()Z

    move-result v0

    return v0
.end method

.method public isForceReDownload()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsForceReDownload:Z

    return v0
.end method

.method public isLargeFile()Z
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->isLargeFile()Z

    move-result v0

    return v0
.end method

.method public isMarkedAdded2List()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsMarkedAdded2List:Z

    return v0
.end method

.method public isOver()Z
    .locals 1

    .line 633
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getStatus()B

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isOver(I)Z

    move-result v0

    return v0
.end method

.method public isPathAsDirectory()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mPathAsDirectory:Z

    return v0
.end method

.method public isResuming()Z
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->isResuming()Z

    move-result v0

    return v0
.end method

.method public isReusedOldFile()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->isReusedOldFile()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 274
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->getLostConnectedHandler()Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;->isInWaitingList(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    return v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getStatus()B

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isIng(I)Z

    move-result v0

    return v0
.end method

.method public isSyncCallback()Z
    .locals 1

    .line 518
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mSyncCallback:Z

    return v0
.end method

.method public isUsing()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->getStatus()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWifiRequired()Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsWifiRequired:Z

    return v0
.end method

.method public markAdded2List()V
    .locals 1

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsMarkedAdded2List:Z

    .line 557
    return-void
.end method

.method public pause()Z
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/ITaskHunter;->pause()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ready()I
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->asInQueueTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$InQueueTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$InQueueTask;->enqueue()I

    move-result v0

    return v0
.end method

.method public removeAllHeaders(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->headerCreateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-nez v1, :cond_0

    .line 217
    monitor-exit v0

    return-object p0

    .line 219
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 223
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->removeAll(Ljava/lang/String;)V

    .line 224
    return-object p0
.end method

.method public removeFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Z
    .locals 1
    .param p1, "finishListener"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;

    .line 188
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFinishListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFinishListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reuse()Z
    .locals 4

    .line 251
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "This task[%d] is running, if you want start the same task, please create a new one by FileDownloader#create"

    new-array v1, v1, [Ljava/lang/Object;

    .line 253
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 252
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    return v2

    .line 257
    :cond_0
    iput v2, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mAttachKey:I

    .line 258
    iput-boolean v2, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsInQueueTask:Z

    .line 259
    iput-boolean v2, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsMarkedAdded2List:Z

    .line 260
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter;->reset()V

    .line 262
    return v1
.end method

.method public setAttachKeyByQueue(I)V
    .locals 0
    .param p1, "key"    # I

    .line 643
    iput p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mAttachKey:I

    .line 644
    return-void
.end method

.method public setAttachKeyDefault()V
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getListener()Lcom/liulishuo/filedownloader/FileDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getListener()Lcom/liulishuo/filedownloader/FileDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 650
    .local v0, "attachKey":I
    goto :goto_0

    .line 652
    .end local v0    # "attachKey":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 654
    .restart local v0    # "attachKey":I
    :goto_0
    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mAttachKey:I

    .line 655
    return-void
.end method

.method public setAutoRetryTimes(I)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 0
    .param p1, "autoRetryTimes"    # I

    .line 193
    iput p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mAutoRetryTimes:I

    .line 194
    return-object p0
.end method

.method public setCallbackProgressIgnored()Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 1

    .line 141
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/DownloadTask;->setCallbackProgressTimes(I)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public setCallbackProgressMinInterval(I)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 0
    .param p1, "minIntervalMillis"    # I

    .line 135
    iput p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mCallbackProgressMinIntervalMillis:I

    .line 136
    return-object p0
.end method

.method public setCallbackProgressTimes(I)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 0
    .param p1, "callbackProgressCount"    # I

    .line 129
    iput p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mCallbackProgressTimes:I

    .line 130
    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 603
    iput-object p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFilename:Ljava/lang/String;

    .line 604
    return-void
.end method

.method public setFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 0
    .param p1, "finishListener"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;

    .line 170
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/DownloadTask;->addFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 171
    return-object p0
.end method

.method public setForceReDownload(Z)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 0
    .param p1, "isForceReDownload"    # Z

    .line 164
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsForceReDownload:Z

    .line 165
    return-object p0
.end method

.method public setListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 3
    .param p1, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 119
    iput-object p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mListener:Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 121
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "setListener %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_0
    return-object p0
.end method

.method public setMinIntervalUpdateSpeed(I)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 1
    .param p1, "minIntervalUpdateSpeedMs"    # I

    .line 87
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mHunter:Lcom/liulishuo/filedownloader/ITaskHunter;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/ITaskHunter;->setMinIntervalUpdateSpeed(I)V

    .line 88
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/filedownloader/DownloadTask;->setPath(Ljava/lang/String;Z)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public setPath(Ljava/lang/String;Z)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pathAsDirectory"    # Z

    .line 98
    iput-object p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mPath:Ljava/lang/String;

    .line 99
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "setPath %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    iput-boolean p2, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mPathAsDirectory:Z

    .line 104
    if-eqz p2, :cond_1

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFilename:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mFilename:Ljava/lang/String;

    .line 114
    :goto_0
    return-object p0
.end method

.method public setSyncCallback(Z)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 0
    .param p1, "syncCallback"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mSyncCallback:Z

    .line 230
    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 2
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mKeyedTags:Landroid/util/SparseArray;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 146
    iput-object p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mTag:Ljava/lang/Object;

    .line 147
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "setTag %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_0
    return-object p0
.end method

.method public setWifiRequired(Z)Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .locals 0
    .param p1, "isWifiRequired"    # Z

    .line 235
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsWifiRequired:Z

    .line 236
    return-object p0
.end method

.method public start()I
    .locals 2

    .line 288
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTask;->mIsInQueueTask:Z

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you start the task manually, it means this task doesn\'t belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn\'t belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that\'s all. In other words, If this task doesn\'t belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually; 2. the queue start this task automatically."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->startTaskUnchecked()I

    move-result v0

    return v0
.end method

.method public startTaskByQueue()V
    .locals 0

    .line 569
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->startTaskUnchecked()I

    .line 570
    return-void
.end method

.method public startTaskByRescue()V
    .locals 0

    .line 577
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->startTaskUnchecked()I

    .line 578
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 659
    const-string v0, "%d@%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTask;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
