.class public Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
.super Ljava/lang/Object;
.source "DownloadLaunchRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/liulishuo/filedownloader/download/ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;,
        Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;,
        Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final HTTP_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field private static final TOTAL_VALUE_IN_CHUNKED_RESOURCE:I = -0x1


# instance fields
.field private final DEFAULT_CONNECTION_COUNT:I

.field private acceptPartial:Z

.field private volatile alive:Z

.field private final database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

.field private final downloadRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/download/DownloadRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile error:Z

.field private volatile errorException:Ljava/lang/Exception;

.field private isChunked:Z

.field private final isForceReDownload:Z

.field private isResumeAvailableOnDB:Z

.field private isSingleConnection:Z

.field private isTriedFixRangeNotSatisfiable:Z

.field private final isWifiRequired:Z

.field private lastCallbackBytes:J

.field private lastCallbackTimestamp:J

.field private lastUpdateBytes:J

.field private lastUpdateTimestamp:J

.field private final model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

.field private volatile paused:Z

.field private redirectedUrl:Ljava/lang/String;

.field private singleFetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

.field private final statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

.field private final supportSeek:Z

.field private final threadPoolMonitor:Lcom/liulishuo/filedownloader/IThreadPoolMonitor;

.field private final userRequestHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private validRetryTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    const-string v0, "download-executor"

    .line 102
    const v1, 0x7fffffff

    invoke-static {v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadExecutors;->newDefaultThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->DOWNLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 101
    return-void
.end method

.method private constructor <init>(Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;IIZZI)V
    .locals 2
    .param p1, "callback"    # Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;
    .param p2, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .param p3, "header"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .param p4, "threadPoolMonitor"    # Lcom/liulishuo/filedownloader/IThreadPoolMonitor;
    .param p5, "minIntervalMillis"    # I
    .param p6, "callbackProgressMaxCount"    # I
    .param p7, "isForceReDownload"    # Z
    .param p8, "isWifiRequired"    # Z
    .param p9, "maxRetryTimes"    # I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x5

    iput v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->DEFAULT_CONNECTION_COUNT:I

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->downloadRunnableList:Ljava/util/ArrayList;

    .line 715
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->lastCallbackBytes:J

    .line 716
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->lastCallbackTimestamp:J

    .line 718
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->lastUpdateBytes:J

    .line 719
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->lastUpdateTimestamp:J

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->alive:Z

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    .line 142
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isTriedFixRangeNotSatisfiable:Z

    .line 144
    iput-object p2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 145
    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->userRequestHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 146
    iput-boolean p7, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isForceReDownload:Z

    .line 147
    iput-boolean p8, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isWifiRequired:Z

    .line 148
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDatabaseInstance()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    .line 149
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->isSupportSeek()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->supportSeek:Z

    .line 150
    iput-object p4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->threadPoolMonitor:Lcom/liulishuo/filedownloader/IThreadPoolMonitor;

    .line 151
    iput p9, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->validRetryTimes:I

    .line 153
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    .line 154
    return-void
.end method

.method private constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;IIZZI)V
    .locals 2
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .param p2, "header"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .param p3, "threadPoolMonitor"    # Lcom/liulishuo/filedownloader/IThreadPoolMonitor;
    .param p4, "minIntervalMillis"    # I
    .param p5, "callbackProgressMaxCount"    # I
    .param p6, "isForceReDownload"    # Z
    .param p7, "isWifiRequired"    # Z
    .param p8, "maxRetryTimes"    # I

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x5

    iput v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->DEFAULT_CONNECTION_COUNT:I

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->downloadRunnableList:Ljava/util/ArrayList;

    .line 715
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->lastCallbackBytes:J

    .line 716
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->lastCallbackTimestamp:J

    .line 718
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->lastUpdateBytes:J

    .line 719
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->lastUpdateTimestamp:J

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->alive:Z

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    .line 121
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isTriedFixRangeNotSatisfiable:Z

    .line 123
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 124
    iput-object p2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->userRequestHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 125
    iput-boolean p6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isForceReDownload:Z

    .line 126
    iput-boolean p7, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isWifiRequired:Z

    .line 127
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDatabaseInstance()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    .line 128
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->isSupportSeek()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->supportSeek:Z

    .line 129
    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->threadPoolMonitor:Lcom/liulishuo/filedownloader/IThreadPoolMonitor;

    .line 130
    iput p8, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->validRetryTimes:I

    .line 132
    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-direct {v0, p1, p8, p4, p5}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;III)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;IIZZILcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .param p2, "x1"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .param p3, "x2"    # Lcom/liulishuo/filedownloader/IThreadPoolMonitor;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # I
    .param p9, "x8"    # Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$1;

    .line 70
    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;IIZZI)V

    return-void
.end method

.method private buildFirstConnectProfile(Ljava/util/List;)Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/ConnectionModel;",
            ">;)",
            "Lcom/liulishuo/filedownloader/download/ConnectionProfile;"
        }
    .end annotation

    .line 369
    .local p1, "connectionOnDBList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    move-object/from16 v0, p0

    .line 369
    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v1

    .line 370
    .local v1, "connectionCount":I
    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "tempFilePath":Ljava/lang/String;
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "targetFilePath":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v1, v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 373
    .local v6, "isMultiConnection":Z
    :goto_0
    const-wide/16 v7, 0x0

    if-eqz v6, :cond_1

    iget-boolean v9, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->supportSeek:Z

    if-nez v9, :cond_1

    .line 375
    const-wide/16 v9, 0x0

    .line 396
    .local v9, "offset":J
    move-wide v10, v9

    goto :goto_2

    .line 377
    .end local v9    # "offset":J
    :cond_1
    iget-object v9, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v9

    iget-object v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-static {v9, v10}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isBreakpointAvailable(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v9

    .line 378
    .local v9, "resumeAvailable":Z
    if-eqz v9, :cond_5

    .line 379
    iget-boolean v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->supportSeek:Z

    if-nez v10, :cond_2

    .line 380
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 380
    .end local v9    # "resumeAvailable":Z
    .local v10, "offset":J
    :goto_1
    goto :goto_2

    .line 382
    .end local v10    # "offset":J
    .restart local v9    # "resumeAvailable":Z
    :cond_2
    if-eqz v6, :cond_4

    .line 384
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v1, v10, :cond_3

    .line 386
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 388
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getTotalOffset(Ljava/util/List;)J

    move-result-wide v10

    goto :goto_1

    .line 391
    :cond_4
    iget-object v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v10

    goto :goto_1

    .line 396
    :cond_5
    nop

    .line 396
    .end local v9    # "resumeAvailable":Z
    move-wide v10, v7

    .line 396
    .restart local v10    # "offset":J
    :goto_2
    move-wide v9, v10

    .line 400
    .end local v10    # "offset":J
    .local v9, "offset":J
    iget-object v11, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v11, v9, v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setSoFar(J)V

    .line 401
    cmp-long v11, v9, v7

    if-lez v11, :cond_6

    const/4 v4, 0x1

    nop

    :cond_6
    iput-boolean v4, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isResumeAvailableOnDB:Z

    .line 402
    iget-boolean v4, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isResumeAvailableOnDB:Z

    if-nez v4, :cond_7

    .line 403
    iget-object v4, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v5, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V

    .line 404
    invoke-static {v3, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->deleteTaskFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_7
    new-instance v4, Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    const-wide/16 v13, 0x0

    const-wide/16 v17, 0x0

    iget-object v5, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v7

    sub-long v19, v7, v9

    move-object v12, v4

    move-wide v15, v9

    invoke-direct/range {v12 .. v20}, Lcom/liulishuo/filedownloader/download/ConnectionProfile;-><init>(JJJJ)V

    return-object v4
.end method

.method private checkupBeforeConnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;
        }
    .end annotation

    .line 826
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isWifiRequired:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 827
    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v1, "Task[%d] can\'t start the download runnable, because this task require wifi, but user application nor current process has %s, so we can\'t check whether the network type connection."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 832
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v4, v2, v3

    .line 829
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isWifiRequired:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isNetworkNotOnWifiType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0

    .line 840
    :cond_1
    return-void
.end method

.method private checkupBeforeFetch()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;,
            Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v0

    .line 845
    .local v0, "id":I
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isPathAsDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 849
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v7

    .line 852
    .local v7, "targetFilePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 856
    .local v8, "fileCaseId":I
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isForceReDownload:Z

    const/4 v2, 0x0

    invoke-static {v0, v7, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->inspectAndInflowDownloaded(ILjava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->remove(I)Z

    .line 859
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V

    .line 860
    new-instance v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v1, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v1

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v8}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v9

    .line 865
    .local v9, "fileCaseModel":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    if-eqz v9, :cond_3

    .line 869
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->threadPoolMonitor:Lcom/liulishuo/filedownloader/IThreadPoolMonitor;

    invoke-static {v0, v9, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->inspectAndInflowDownloading(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 873
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->remove(I)Z

    .line 874
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V

    .line 875
    new-instance v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v1, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v1

    .line 878
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v8}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->findConnectionModel(I)Ljava/util/List;

    move-result-object v1

    .line 881
    .local v1, "connectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v2, v8}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->remove(I)Z

    .line 882
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v2, v8}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V

    .line 883
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->deleteTargetFile(Ljava/lang/String;)V

    .line 885
    invoke-static {v8, v9}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isBreakpointAvailable(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 886
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setSoFar(J)V

    .line 887
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setTotal(J)V

    .line 888
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setETag(Ljava/lang/String;)V

    .line 889
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setConnectionCount(I)V

    .line 890
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-interface {v2, v3}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->update(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 893
    if-eqz v1, :cond_2

    .line 894
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/model/ConnectionModel;

    .line 895
    .local v3, "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    invoke-virtual {v3, v0}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setId(I)V

    .line 896
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v4, v3}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->insertConnectionModel(Lcom/liulishuo/filedownloader/model/ConnectionModel;)V

    .line 897
    .end local v3    # "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    goto :goto_0

    .line 901
    :cond_2
    new-instance v2, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    invoke-direct {v2, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v2

    .line 906
    .end local v1    # "connectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    :cond_3
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v2

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 907
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->threadPoolMonitor:Lcom/liulishuo/filedownloader/IThreadPoolMonitor;

    .line 906
    move v1, v0

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->inspectAndInflowConflictPath(IJLjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 910
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->remove(I)Z

    .line 911
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V

    .line 913
    new-instance v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v1, p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v1

    .line 916
    .end local v7    # "targetFilePath":Ljava/lang/String;
    .end local v8    # "fileCaseId":I
    .end local v9    # "fileCaseModel":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    :cond_4
    return-void
.end method

.method static createForTest(Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;IIZZI)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    .locals 11
    .param p0, "callback"    # Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .param p2, "header"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .param p3, "threadPoolMonitor"    # Lcom/liulishuo/filedownloader/IThreadPoolMonitor;
    .param p4, "minIntervalMillis"    # I
    .param p5, "callbackProgressMaxCount"    # I
    .param p6, "isForceReDownload"    # Z
    .param p7, "isWifiRequired"    # Z
    .param p8, "maxRetryTimes"    # I

    .line 161
    new-instance v10, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;-><init>(Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;IIZZI)V

    return-object v10
.end method

.method private determineConnectionCount()I
    .locals 1

    .line 363
    const/4 v0, 0x5

    return v0
.end method

.method private fetchWithMultipleConnection(Ljava/util/List;J)V
    .locals 32
    .param p2, "totalLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/ConnectionModel;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 595
    .local p1, "connectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    move-object/from16 v0, p0

    .line 595
    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    .line 596
    .local v1, "id":I
    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getETag()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, "etag":Ljava/lang/String;
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->redirectedUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->redirectedUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "url":Ljava/lang/String;
    :goto_0
    iget-object v4, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, "path":Ljava/lang/String;
    sget-boolean v5, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    .line 601
    const-string v5, "fetch data with multiple connection(count: [%d]) for task[%d] totalLength[%d]"

    new-array v10, v6, [Ljava/lang/Object;

    .line 602
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    .line 601
    invoke-static {v0, v5, v10}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    :cond_1
    const-wide/16 v10, 0x0

    .line 609
    .local v10, "totalOffset":J
    iget-boolean v5, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isResumeAvailableOnDB:Z

    .line 610
    .local v5, "withEtag":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/liulishuo/filedownloader/model/ConnectionModel;

    .line 612
    .local v13, "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getEndOffset()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-nez v18, :cond_2

    .line 614
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getCurrentOffset()J

    move-result-wide v14

    sub-long v19, p2, v14

    .line 614
    .local v19, "contentLength":J
    goto :goto_2

    .line 616
    .end local v19    # "contentLength":J
    :cond_2
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getEndOffset()J

    move-result-wide v14

    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getCurrentOffset()J

    move-result-wide v19

    sub-long v21, v14, v19

    const-wide/16 v14, 0x1

    add-long v19, v21, v14

    .line 616
    .restart local v19    # "contentLength":J
    :goto_2
    move-wide/from16 v14, v19

    .line 619
    .end local v19    # "contentLength":J
    .local v14, "contentLength":J
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getCurrentOffset()J

    move-result-wide v19

    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getStartOffset()J

    move-result-wide v21

    sub-long v23, v19, v21

    add-long v19, v10, v23

    .line 621
    .end local v10    # "totalOffset":J
    .local v19, "totalOffset":J
    cmp-long v10, v14, v16

    if-nez v10, :cond_4

    .line 624
    sget-boolean v10, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v10, :cond_3

    .line 625
    const-string v10, "pass connection[%d-%d], because it has been completed"

    new-array v11, v7, [Ljava/lang/Object;

    .line 626
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v9

    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v8

    .line 625
    invoke-static {v0, v10, v11}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    .end local v13    # "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    .end local v14    # "contentLength":J
    :cond_3
    move-object/from16 v30, v2

    goto/16 :goto_5

    .line 631
    .restart local v13    # "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    .restart local v14    # "contentLength":J
    :cond_4
    new-instance v6, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;

    invoke-direct {v6}, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;-><init>()V

    .line 633
    .local v6, "builder":Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    new-instance v10, Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    .line 634
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getStartOffset()J

    move-result-wide v22

    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getCurrentOffset()J

    move-result-wide v24

    .line 635
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getEndOffset()J

    move-result-wide v26

    move-object/from16 v21, v10

    move-wide/from16 v28, v14

    invoke-direct/range {v21 .. v29}, Lcom/liulishuo/filedownloader/download/ConnectionProfile;-><init>(JJJJ)V

    .line 637
    .local v10, "connectionProfile":Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    nop

    .line 638
    invoke-virtual {v6, v1}, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->setId(I)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;

    move-result-object v11

    .line 639
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->setConnectionIndex(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;

    move-result-object v7

    .line 640
    invoke-virtual {v7, v0}, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->setCallback(Lcom/liulishuo/filedownloader/download/ProcessCallback;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;

    move-result-object v7

    .line 641
    invoke-virtual {v7, v3}, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->setUrl(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;

    move-result-object v7

    if-eqz v5, :cond_5

    .line 642
    move-object v11, v2

    goto :goto_3

    .line 641
    :cond_5
    const/4 v11, 0x0

    .line 642
    :goto_3
    invoke-virtual {v7, v11}, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->setEtag(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;

    move-result-object v7

    iget-object v11, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->userRequestHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 643
    invoke-virtual {v7, v11}, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->setHeader(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;

    move-result-object v7

    iget-boolean v11, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isWifiRequired:Z

    .line 644
    invoke-virtual {v7, v11}, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->setWifiRequired(Z)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;

    move-result-object v7

    .line 645
    invoke-virtual {v7, v10}, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->setConnectionModel(Lcom/liulishuo/filedownloader/download/ConnectionProfile;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;

    move-result-object v7

    .line 646
    invoke-virtual {v7, v4}, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;

    move-result-object v7

    .line 647
    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->build()Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    move-result-object v7

    .line 649
    .local v7, "runnable":Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    sget-boolean v11, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v11, :cond_6

    .line 650
    const-string v11, "enable multiple connection: %s"

    move-object/from16 v30, v2

    new-array v2, v8, [Ljava/lang/Object;

    .line 650
    .end local v2    # "etag":Ljava/lang/String;
    .local v30, "etag":Ljava/lang/String;
    aput-object v13, v2, v9

    invoke-static {v0, v11, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 653
    .end local v30    # "etag":Ljava/lang/String;
    .restart local v2    # "etag":Ljava/lang/String;
    :cond_6
    move-object/from16 v30, v2

    .line 653
    .end local v2    # "etag":Ljava/lang/String;
    .restart local v30    # "etag":Ljava/lang/String;
    :goto_4
    if-nez v7, :cond_7

    .line 654
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v8, "the download runnable must not be null!"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 656
    :cond_7
    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->downloadRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    .end local v6    # "builder":Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    .end local v7    # "runnable":Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    .end local v10    # "connectionProfile":Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    .end local v13    # "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    .end local v14    # "contentLength":J
    nop

    .line 610
    .end local v30    # "etag":Ljava/lang/String;
    .restart local v2    # "etag":Ljava/lang/String;
    :goto_5
    move-wide/from16 v10, v19

    move-object/from16 v2, v30

    const/4 v6, 0x3

    const/4 v7, 0x2

    .line 610
    .end local v2    # "etag":Ljava/lang/String;
    .restart local v30    # "etag":Ljava/lang/String;
    goto/16 :goto_1

    .line 659
    .end local v19    # "totalOffset":J
    .end local v30    # "etag":Ljava/lang/String;
    .restart local v2    # "etag":Ljava/lang/String;
    .local v10, "totalOffset":J
    :cond_8
    move-object/from16 v30, v2

    .line 659
    .end local v2    # "etag":Ljava/lang/String;
    .restart local v30    # "etag":Ljava/lang/String;
    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v6

    cmp-long v2, v10, v6

    if-eqz v2, :cond_9

    .line 660
    const-string v2, "correct the sofar[%d] from connection table[%d]"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 661
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v7, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v7, v8

    .line 660
    invoke-static {v0, v2, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2, v10, v11}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setSoFar(J)V

    .line 665
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->downloadRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 666
    .local v2, "subTasks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Callable<Ljava/lang/Object;>;>;"
    iget-object v6, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->downloadRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    .line 667
    .restart local v7    # "runnable":Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    iget-boolean v12, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v12, :cond_a

    .line 668
    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->pause()V

    .line 669
    goto :goto_6

    .line 671
    :cond_a
    invoke-static {v7}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    .end local v7    # "runnable":Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    goto :goto_6

    .line 673
    :cond_b
    iget-boolean v6, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v6, :cond_c

    .line 674
    iget-object v6, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 675
    return-void

    .line 678
    :cond_c
    sget-object v6, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->DOWNLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    .line 679
    .local v6, "subTaskFutures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Object;>;>;"
    sget-boolean v7, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v7, :cond_d

    .line 680
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/Future;

    .line 681
    .local v12, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    const-string v13, "finish sub-task for [%d] %B %B"

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Object;

    .line 682
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v9

    invoke-interface {v12}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v15, v8

    invoke-interface {v12}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v16, 0x2

    aput-object v9, v15, v16

    .line 681
    invoke-static {v0, v13, v15}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    .end local v12    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    nop

    .line 680
    const/4 v9, 0x0

    goto :goto_7

    .line 685
    :cond_d
    return-void
.end method

.method private fetchWithMultipleConnectionFromBeginning(JI)V
    .locals 17
    .param p1, "totalLength"    # J
    .param p3, "connectionCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 558
    move/from16 v3, p3

    const-wide/16 v4, 0x0

    .line 559
    .local v4, "startOffset":J
    int-to-long v6, v3

    div-long v6, v1, v6

    .line 560
    .local v6, "eachRegion":J
    iget-object v8, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v8

    .line 562
    .local v8, "id":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v9, "connectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    const/4 v10, 0x0

    .line 564
    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_1

    .line 567
    add-int/lit8 v11, v3, -0x1

    if-ne v10, v11, :cond_0

    .line 569
    const-wide/16 v11, 0x0

    .line 569
    .local v11, "endOffset":J
    goto :goto_1

    .line 572
    .end local v11    # "endOffset":J
    :cond_0
    const/4 v11, 0x0

    add-long v11, v4, v6

    const-wide/16 v13, 0x1

    sub-long v15, v11, v13

    move-wide v11, v15

    .line 575
    .restart local v11    # "endOffset":J
    :goto_1
    new-instance v13, Lcom/liulishuo/filedownloader/model/ConnectionModel;

    invoke-direct {v13}, Lcom/liulishuo/filedownloader/model/ConnectionModel;-><init>()V

    .line 576
    .local v13, "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    invoke-virtual {v13, v8}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setId(I)V

    .line 577
    invoke-virtual {v13, v10}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setIndex(I)V

    .line 578
    invoke-virtual {v13, v4, v5}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setStartOffset(J)V

    .line 579
    invoke-virtual {v13, v4, v5}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setCurrentOffset(J)V

    .line 580
    invoke-virtual {v13, v11, v12}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setEndOffset(J)V

    .line 581
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v14, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v14, v13}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->insertConnectionModel(Lcom/liulishuo/filedownloader/model/ConnectionModel;)V

    .line 584
    add-long v11, v4, v6

    .line 564
    .end local v4    # "startOffset":J
    .end local v13    # "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    .local v11, "startOffset":J
    add-int/lit8 v10, v10, 0x1

    move-wide v4, v11

    goto :goto_0

    .line 587
    .end local v10    # "i":I
    .end local v11    # "startOffset":J
    .restart local v4    # "startOffset":J
    :cond_1
    iget-object v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v10, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setConnectionCount(I)V

    .line 588
    iget-object v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v10, v8, v3}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updateConnectionCount(II)V

    .line 590
    invoke-direct {v0, v9, v1, v2}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->fetchWithMultipleConnection(Ljava/util/List;J)V

    .line 591
    return-void
.end method

.method private fetchWithMultipleConnectionFromResume(ILjava/util/List;)V
    .locals 2
    .param p1, "connectionCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/ConnectionModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 551
    .local p2, "connectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->fetchWithMultipleConnection(Ljava/util/List;J)V

    .line 555
    return-void

    .line 552
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private fetchWithSingleConnection(Lcom/liulishuo/filedownloader/download/ConnectionProfile;Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V
    .locals 12
    .param p1, "firstConnectionProfile"    # Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    .param p2, "connection"    # Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 521
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->acceptPartial:Z

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setSoFar(J)V

    .line 524
    new-instance v0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->endOffset:J

    iget-wide v10, p1, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->contentLength:J

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/liulishuo/filedownloader/download/ConnectionProfile;-><init>(JJJJ)V

    .line 524
    .local v0, "profile":Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    goto :goto_0

    .line 527
    .end local v0    # "profile":Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    :cond_0
    move-object v0, p1

    .line 530
    .restart local v0    # "profile":Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    :goto_0
    new-instance v1, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    invoke-direct {v1}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;-><init>()V

    .line 531
    .local v1, "builder":Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    invoke-virtual {v1, p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setCallback(Lcom/liulishuo/filedownloader/download/ProcessCallback;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 532
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setDownloadId(I)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v2

    const/4 v3, -0x1

    .line 533
    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setConnectionIndex(I)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isWifiRequired:Z

    .line 534
    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setWifiRequired(Z)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v2

    .line 535
    invoke-virtual {v2, p2}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setConnection(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v2

    .line 536
    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setConnectionProfile(Lcom/liulishuo/filedownloader/download/ConnectionProfile;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 537
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    .line 539
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setConnectionCount(I)V

    .line 540
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v4

    invoke-interface {v2, v4, v3}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updateConnectionCount(II)V

    .line 541
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->build()Lcom/liulishuo/filedownloader/download/FetchDataTask;

    move-result-object v2

    iput-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->singleFetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    .line 542
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 544
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->singleFetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->pause()V

    goto :goto_1

    .line 546
    :cond_1
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->singleFetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->run()V

    .line 548
    :goto_1
    return-void
.end method

.method private handleFirstConnected(Ljava/util/Map;Lcom/liulishuo/filedownloader/download/ConnectTask;Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V
    .locals 21
    .param p2, "connectTask"    # Lcom/liulishuo/filedownloader/download/ConnectTask;
    .param p3, "connection"    # Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/liulishuo/filedownloader/download/ConnectTask;",
            "Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 413
    .local p1, "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    .line 413
    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    .line 414
    .local v2, "id":I
    invoke-interface/range {p3 .. p3}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseCode()I

    move-result v11

    .line 418
    .local v11, "code":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xce

    if-eq v11, v5, :cond_1

    if-ne v11, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->acceptPartial:Z

    .line 420
    const/16 v5, 0xc8

    const/16 v6, 0xc9

    if-eq v11, v5, :cond_3

    if-eq v11, v6, :cond_3

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    move v12, v5

    .line 424
    .local v12, "onlyFromBeginning":Z
    iget-object v5, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getETag()Ljava/lang/String;

    move-result-object v13

    .line 425
    .local v13, "oldEtag":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->findEtag(ILcom/liulishuo/filedownloader/connection/FileDownloadConnection;)Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "newEtag":Ljava/lang/String;
    const/4 v7, 0x0

    .line 430
    .local v7, "isPreconditionFailed":Z
    const/16 v8, 0x19c

    if-ne v11, v8, :cond_5

    .line 431
    const/4 v7, 0x1

    .line 432
    nop

    .line 457
    .end local v7    # "isPreconditionFailed":Z
    .local v20, "isPreconditionFailed":Z
    :cond_4
    :goto_4
    move/from16 v20, v7

    goto :goto_5

    .line 435
    .end local v20    # "isPreconditionFailed":Z
    .restart local v7    # "isPreconditionFailed":Z
    :cond_5
    if-eqz v13, :cond_7

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 437
    if-nez v12, :cond_6

    iget-boolean v8, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->acceptPartial:Z

    if-eqz v8, :cond_7

    .line 439
    :cond_6
    const/4 v7, 0x1

    .line 440
    goto :goto_4

    .line 444
    :cond_7
    if-ne v11, v6, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/liulishuo/filedownloader/download/ConnectTask;->isRangeNotFromBeginning()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 450
    const/4 v7, 0x1

    goto :goto_4

    .line 457
    .end local v7    # "isPreconditionFailed":Z
    .restart local v20    # "isPreconditionFailed":Z
    :goto_5
    if-eqz v20, :cond_a

    .line 459
    iget-boolean v6, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isResumeAvailableOnDB:Z

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-eqz v6, :cond_8

    .line 460
    const-string v6, "there is precondition failed on this request[%d] with old etag[%s]\u3001new etag[%s]\u3001response code is %d"

    new-array v10, v9, [Ljava/lang/Object;

    .line 462
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v3

    aput-object v13, v10, v4

    aput-object v5, v10, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v7

    .line 460
    invoke-static {v0, v6, v10}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    :cond_8
    iget-object v6, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v10

    invoke-interface {v6, v10}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V

    .line 466
    iget-object v6, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v6

    iget-object v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->deleteTaskFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iput-boolean v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isResumeAvailableOnDB:Z

    .line 469
    if-eqz v13, :cond_9

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 470
    const-string v6, "the old etag[%s] is the same to the new etag[%s], but the response status code is %d not Partial(206), so wo have to start this task from very beginning for task[%d]!"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v13, v9, v3

    aput-object v5, v9, v4

    .line 473
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v7

    .line 470
    invoke-static {v0, v6, v9}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    const/4 v5, 0x0

    .line 477
    .end local v5    # "newEtag":Ljava/lang/String;
    .local v14, "newEtag":Ljava/lang/String;
    :cond_9
    move-object v14, v5

    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setSoFar(J)V

    .line 478
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3, v4, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setTotal(J)V

    .line 479
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3, v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setETag(Ljava/lang/String;)V

    .line 480
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->resetConnectionCount()V

    .line 482
    iget-object v3, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v4, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getETag()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v6

    iget-object v4, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v8

    iget-object v4, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v10

    move v4, v2

    invoke-interface/range {v3 .. v10}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updateOldEtagOverdue(ILjava/lang/String;JJI)V

    .line 485
    new-instance v3, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    invoke-direct {v3, v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V

    throw v3

    .line 488
    .end local v14    # "newEtag":Ljava/lang/String;
    .restart local v5    # "newEtag":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/liulishuo/filedownloader/download/ConnectTask;->getFinalRedirectedUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->redirectedUrl:Ljava/lang/String;

    .line 489
    iget-boolean v6, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->acceptPartial:Z

    if-nez v6, :cond_c

    if-eqz v12, :cond_b

    goto :goto_6

    .line 511
    :cond_b
    new-instance v3, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    .line 512
    invoke-interface/range {p3 .. p3}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseHeaderFields()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v6, p1

    invoke-direct {v3, v11, v6, v4}, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;-><init>(ILjava/util/Map;Ljava/util/Map;)V

    throw v3

    .line 490
    :cond_c
    :goto_6
    move-object/from16 v6, p1

    invoke-static {v2, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->findContentLength(ILcom/liulishuo/filedownloader/connection/FileDownloadConnection;)J

    move-result-wide v7

    .line 493
    .local v7, "contentLength":J
    const/4 v9, 0x0

    .line 494
    .local v9, "fileName":Ljava/lang/String;
    iget-object v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isPathAsDirectory()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 496
    iget-object v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->findFilename(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 498
    :cond_d
    const-wide/16 v14, -0x1

    cmp-long v10, v7, v14

    if-nez v10, :cond_e

    const/4 v10, 0x1

    goto :goto_7

    :cond_e
    const/4 v10, 0x0

    :goto_7
    iput-boolean v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isChunked:Z

    .line 500
    iget-boolean v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isChunked:Z

    if-nez v10, :cond_f

    .line 501
    iget-object v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v14

    add-long v16, v14, v7

    .line 501
    .local v16, "totalLength":J
    goto :goto_8

    .line 503
    .end local v16    # "totalLength":J
    :cond_f
    move-wide/from16 v16, v7

    .line 507
    .restart local v16    # "totalLength":J
    :goto_8
    iget-object v14, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    iget-boolean v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isResumeAvailableOnDB:Z

    if-eqz v10, :cond_10

    iget-boolean v10, v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->acceptPartial:Z

    if-eqz v10, :cond_10

    const/4 v15, 0x1

    goto :goto_9

    :cond_10
    const/4 v15, 0x0

    :goto_9
    move-object/from16 v18, v5

    move-object/from16 v19, v9

    invoke-virtual/range {v14 .. v19}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onConnected(ZJLjava/lang/String;Ljava/lang/String;)V

    .line 510
    .end local v7    # "contentLength":J
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v16    # "totalLength":J
    nop

    .line 514
    return-void
.end method

.method private handlePreAllocate(JLjava/lang/String;)V
    .locals 20
    .param p1, "contentLength"    # J
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    move-wide/from16 v1, p1

    .line 690
    const/4 v3, 0x0

    .line 693
    .local v3, "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-eqz v6, :cond_2

    .line 694
    move-object/from16 v4, p0

    :try_start_0
    iget-object v5, v4, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->createOutputStream(Ljava/lang/String;)Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;

    move-result-object v5

    move-object v3, v5

    .line 695
    new-instance v5, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v6, p3

    :try_start_1
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 696
    .local v7, "breakpointBytes":J
    const/4 v5, 0x0

    sub-long v16, v1, v7

    .line 698
    .local v16, "requiredSpaceBytes":J
    invoke-static/range {p3 .. p3}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getFreeSpaceBytes(Ljava/lang/String;)J

    move-result-wide v9

    move-wide/from16 v18, v9

    .line 700
    .local v18, "freeSpaceBytes":J
    cmp-long v5, v18, v16

    if-gez v5, :cond_0

    .line 702
    new-instance v5, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    move-object v9, v5

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    move-wide v14, v7

    invoke-direct/range {v9 .. v15}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    throw v5

    .line 704
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v5

    iget-boolean v5, v5, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->FILE_NON_PRE_ALLOCATION:Z

    if-nez v5, :cond_3

    .line 706
    invoke-interface {v3, v1, v2}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    .end local v7    # "breakpointBytes":J
    .end local v16    # "requiredSpaceBytes":J
    .end local v18    # "freeSpaceBytes":J
    goto :goto_1

    .line 710
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v6, p3

    .line 710
    .end local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .local v5, "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :goto_0
    move-object v5, v3

    move-object v3, v0

    if-eqz v5, :cond_1

    .line 711
    invoke-interface {v5}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V

    :cond_1
    throw v3

    .line 710
    .end local v5    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v6, p3

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 711
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V

    .line 713
    :cond_4
    return-void
.end method

.method private isMultiConnectionAvailable()Z
    .locals 3

    .line 355
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isResumeAvailableOnDB:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 356
    return v1

    .line 359
    :cond_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->acceptPartial:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->supportSeek:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isChunked:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v0

    return v0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .line 923
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->alive:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRetry(Ljava/lang/Exception;)Z
    .locals 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 758
    instance-of v0, p1, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 759
    move-object v0, p1

    check-cast v0, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;

    .line 761
    .local v0, "httpException":Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;->getCode()I

    move-result v2

    .line 763
    .local v2, "code":I
    iget-boolean v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isSingleConnection:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_0

    .line 764
    iget-boolean v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isTriedFixRangeNotSatisfiable:Z

    if-nez v3, :cond_0

    .line 765
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->deleteTaskFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isTriedFixRangeNotSatisfiable:Z

    .line 767
    return v1

    .line 772
    .end local v0    # "httpException":Lcom/liulishuo/filedownloader/exception/FileDownloadHttpException;
    .end local v2    # "code":I
    :cond_0
    iget v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->validRetryTimes:I

    if-lez v0, :cond_1

    instance-of v0, p1, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onCompleted(Lcom/liulishuo/filedownloader/download/DownloadRunnable;JJ)V
    .locals 10
    .param p1, "doneRunnable"    # Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J

    .line 730
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 731
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 732
    const-string v0, "the task[%d] has already been paused, so pass the completed callback"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 733
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 732
    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    :cond_0
    return-void

    .line 738
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectionIndex:I

    .line 739
    .local v0, "doneConnectionIndex":I
    :goto_0
    sget-boolean v3, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v3, :cond_3

    .line 740
    const-string v3, "the connection has been completed(%d): [%d, %d)  %d"

    new-array v7, v6, [Ljava/lang/Object;

    .line 741
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    .line 740
    invoke-static {p0, v3, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    :cond_3
    iget-boolean v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isSingleConnection:Z

    if-eqz v3, :cond_4

    .line 745
    const-wide/16 v7, 0x0

    cmp-long v3, p2, v7

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v7

    cmp-long v3, p4, v7

    if-eqz v3, :cond_5

    .line 746
    const-string v3, "the single task not completed corrected(%d, %d != %d) for task(%d)"

    new-array v6, v6, [Ljava/lang/Object;

    .line 747
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v2

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v5

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    .line 746
    invoke-static {p0, v3, v6}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 750
    :cond_4
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->downloadRunnableList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 751
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->downloadRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 752
    monitor-exit v1

    .line 754
    :cond_5
    :goto_1
    return-void

    .line 752
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->error:Z

    .line 778
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->errorException:Ljava/lang/Exception;

    .line 780
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v1, :cond_1

    .line 781
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    .line 782
    const-string v1, "the task[%d] has already been paused, so pass the error callback"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 783
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 782
    invoke-static {p0, v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    :cond_0
    return-void

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->downloadRunnableList:Ljava/util/ArrayList;

    .line 790
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 791
    .local v0, "discardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liulishuo/filedownloader/download/DownloadRunnable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    .line 792
    .local v2, "runnable":Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    if-eqz v2, :cond_2

    .line 793
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->discard()V

    .line 796
    .end local v2    # "runnable":Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    :cond_2
    goto :goto_0

    .line 797
    :cond_3
    return-void
.end method

.method public onProgress(J)V
    .locals 1
    .param p1, "increaseBytes"    # J

    .line 723
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v0, :cond_0

    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onProgress(J)V

    .line 726
    return-void
.end method

.method public onRetry(Ljava/lang/Exception;J)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "invalidIncreaseBytes"    # J

    .line 801
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 802
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 803
    const-string v0, "the task[%d] has already been paused, so pass the retry callback"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 804
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 803
    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    :cond_0
    return-void

    .line 809
    :cond_1
    iget v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->validRetryTimes:I

    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->validRetryTimes:I

    if-gez v0, :cond_2

    .line 810
    const-string v0, "valid retry times is less than 0(%d) for download task(%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->validRetryTimes:I

    .line 811
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 810
    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    iget v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->validRetryTimes:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->validRetryTimes:I

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onRetry(Ljava/lang/Exception;IJ)V

    .line 815
    return-void
.end method

.method public pause()V
    .locals 3

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    .line 169
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->singleFetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->singleFetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->pause()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->downloadRunnableList:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 172
    .local v0, "pauseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liulishuo/filedownloader/download/DownloadRunnable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    .line 173
    .local v2, "runnable":Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->pause()V

    .line 177
    .end local v2    # "runnable":Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    :cond_1
    goto :goto_0

    .line 178
    :cond_2
    return-void
.end method

.method public pending()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->findConnectionModel(I)Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "connectionOnDBList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 184
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getTotalOffset(Ljava/util/List;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setSoFar(J)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setSoFar(J)V

    .line 188
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V

    .line 192
    .end local v0    # "connectionOnDBList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onPending()V

    .line 193
    return-void
.end method

.method public run()V
    .locals 18

    .line 198
    move-object/from16 v1, p0

    const/16 v2, 0xa

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 201
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v2

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    .line 202
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v2

    if-ne v2, v4, :cond_0

    .line 203
    sget-boolean v2, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v2, :cond_1

    .line 211
    const-string v2, "High concurrent cause, start runnable but already paused %d"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 212
    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 211
    invoke-static {v1, v2, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Task[%d] can\'t start the download runnable, because its status is %d not %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 219
    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v7, 0x2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v7

    .line 217
    invoke-static {v4, v6}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 338
    :cond_1
    :goto_0
    iput-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->alive:Z

    .line 339
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v2, :cond_2

    .line 340
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onPaused()V

    goto :goto_1

    .line 341
    :cond_2
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->error:Z

    if-eqz v2, :cond_3

    .line 342
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->errorException:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 345
    :cond_3
    :try_start_1
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onCompleted()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    goto :goto_1

    .line 346
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 347
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v3, v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    .line 221
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 224
    :cond_4
    :try_start_2
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-nez v2, :cond_5

    .line 225
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onStartThread()V

    .line 229
    :cond_5
    :goto_2
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v2, :cond_9

    .line 230
    sget-boolean v2, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v2, :cond_6

    .line 238
    const-string v2, "High concurrent cause, start runnable but already paused %d"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 239
    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 238
    invoke-static {v1, v2, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 338
    :cond_6
    iput-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->alive:Z

    .line 339
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v2, :cond_7

    .line 340
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onPaused()V

    goto :goto_3

    .line 341
    :cond_7
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->error:Z

    if-eqz v2, :cond_8

    .line 342
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->errorException:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 345
    :cond_8
    :try_start_3
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onCompleted()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 348
    goto :goto_3

    .line 346
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 347
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v3, v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    .line 241
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    return-void

    .line 244
    :cond_9
    const/4 v2, 0x0

    .line 249
    .local v2, "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->checkupBeforeConnect()V

    .line 252
    iget-object v6, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v7, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->findConnectionModel(I)Ljava/util/List;

    move-result-object v6

    .line 253
    .local v6, "connectionOnDBList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    invoke-direct {v1, v6}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->buildFirstConnectProfile(Ljava/util/List;)Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    move-result-object v7

    .line 254
    .local v7, "connectionProfile":Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    new-instance v8, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    invoke-direct {v8}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;-><init>()V

    .line 255
    .local v8, "build":Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;
    iget-object v9, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->setDownloadId(I)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    move-result-object v9

    iget-object v10, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 256
    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->setUrl(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    move-result-object v9

    iget-object v10, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 257
    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getETag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->setEtag(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    move-result-object v9

    iget-object v10, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->userRequestHeader:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 258
    invoke-virtual {v9, v10}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->setHeader(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    move-result-object v9

    .line 259
    invoke-virtual {v9, v7}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->setConnectionProfile(Lcom/liulishuo/filedownloader/download/ConnectionProfile;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    move-result-object v9

    .line 260
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->build()Lcom/liulishuo/filedownloader/download/ConnectTask;

    move-result-object v9

    .line 262
    .local v9, "firstConnectionTask":Lcom/liulishuo/filedownloader/download/ConnectTask;
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/download/ConnectTask;->connect()Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    move-result-object v10

    move-object v2, v10

    .line 263
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/download/ConnectTask;->getRequestHeader()Ljava/util/Map;

    move-result-object v10

    invoke-direct {v1, v10, v9, v2}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->handleFirstConnected(Ljava/util/Map;Lcom/liulishuo/filedownloader/download/ConnectTask;Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V

    .line 266
    iget-boolean v10, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v10, :cond_d

    .line 267
    iget-object v10, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v10, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    if-eqz v2, :cond_a

    :try_start_5
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 338
    :cond_a
    iput-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->alive:Z

    .line 339
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v3, :cond_b

    .line 340
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onPaused()V

    goto :goto_4

    .line 341
    :cond_b
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->error:Z

    if-eqz v3, :cond_c

    .line 342
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    iget-object v4, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->errorException:Ljava/lang/Exception;

    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_4

    .line 345
    :cond_c
    :try_start_6
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onCompleted()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 348
    goto :goto_4

    .line 346
    :catch_2
    move-exception v0

    move-object v3, v0

    .line 347
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v4, v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    .line 268
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4
    return-void

    .line 272
    :cond_d
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->checkupBeforeFetch()V

    .line 273
    iget-object v10, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v10

    .line 275
    .local v10, "totalLength":J
    iget-object v12, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v10, v11, v12}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->handlePreAllocate(JLjava/lang/String;)V

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isMultiConnectionAvailable()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 280
    iget-boolean v12, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isResumeAvailableOnDB:Z

    if-eqz v12, :cond_e

    .line 281
    iget-object v12, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v12

    .line 281
    .local v12, "connectionCount":I
    :goto_5
    goto :goto_6

    .line 283
    .end local v12    # "connectionCount":I
    :cond_e
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v12

    iget-object v13, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 284
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v13

    iget-object v14, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getUrl()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getPath()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->determineConnectionCount(ILjava/lang/String;Ljava/lang/String;J)I

    move-result v12

    goto :goto_5

    .line 287
    :cond_f
    const/4 v12, 0x1

    .line 290
    .restart local v12    # "connectionCount":I
    :goto_6
    if-gtz v12, :cond_10

    .line 291
    new-instance v13, Ljava/lang/IllegalAccessException;

    const-string v14, "invalid connection count %d, the connection count must be larger than 0"

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v2, v15, v3

    .line 292
    invoke-static {v14, v15}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 296
    :cond_10
    iget-boolean v13, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v13, :cond_14

    .line 297
    iget-object v13, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v13, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 332
    if-eqz v2, :cond_11

    :try_start_8
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 338
    :cond_11
    iput-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->alive:Z

    .line 339
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v3, :cond_12

    .line 340
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onPaused()V

    goto :goto_7

    .line 341
    :cond_12
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->error:Z

    if-eqz v3, :cond_13

    .line 342
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    iget-object v4, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->errorException:Ljava/lang/Exception;

    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_7

    .line 345
    :cond_13
    :try_start_9
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onCompleted()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 348
    goto :goto_7

    .line 346
    :catch_3
    move-exception v0

    move-object v3, v0

    .line 347
    .restart local v3    # "e":Ljava/io/IOException;
    iget-object v4, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v4, v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    .line 298
    .end local v3    # "e":Ljava/io/IOException;
    :goto_7
    return-void

    .line 301
    :cond_14
    if-ne v12, v5, :cond_15

    const/4 v13, 0x1

    goto :goto_8

    :cond_15
    const/4 v13, 0x0

    :goto_8
    :try_start_a
    iput-boolean v13, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isSingleConnection:Z

    .line 302
    iget-boolean v13, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isSingleConnection:Z

    if-eqz v13, :cond_16

    .line 304
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/download/ConnectTask;->getProfile()Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    move-result-object v13

    invoke-direct {v1, v13, v2}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->fetchWithSingleConnection(Lcom/liulishuo/filedownloader/download/ConnectionProfile;Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V

    goto :goto_9

    .line 306
    :cond_16
    if-eqz v2, :cond_17

    .line 307
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    .line 308
    const/4 v2, 0x0

    .line 311
    :cond_17
    iget-object v13, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onMultiConnection()V

    .line 312
    iget-boolean v13, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isResumeAvailableOnDB:Z

    if-eqz v13, :cond_18

    .line 313
    invoke-direct {v1, v12, v6}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->fetchWithMultipleConnectionFromResume(ILjava/util/List;)V

    goto :goto_9

    .line 315
    :cond_18
    invoke-direct {v1, v10, v11, v12}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->fetchWithMultipleConnectionFromBeginning(JI)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 332
    .end local v6    # "connectionOnDBList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    .end local v7    # "connectionProfile":Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    .end local v8    # "build":Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;
    .end local v9    # "firstConnectionTask":Lcom/liulishuo/filedownloader/download/ConnectTask;
    .end local v10    # "totalLength":J
    .end local v12    # "connectionCount":I
    :goto_9
    if-eqz v2, :cond_1e

    :try_start_b
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v6, v2

    .line 332
    .end local v2    # "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .local v6, "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    :goto_a
    move-object v2, v0

    goto/16 :goto_f

    .line 328
    .end local v6    # "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .restart local v2    # "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    :catch_4
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    .line 329
    .local v2, "retryDirectly":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;
    .restart local v6    # "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    :try_start_c
    iget-object v7, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 332
    if-eqz v6, :cond_5

    :goto_b
    :try_start_d
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    goto/16 :goto_2

    .line 326
    .end local v6    # "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .local v2, "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    :catch_5
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    .line 332
    .local v2, "discardSafely":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;
    .local v4, "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    if-eqz v4, :cond_19

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 338
    :cond_19
    iput-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->alive:Z

    .line 339
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v3, :cond_1a

    .line 340
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onPaused()V

    goto :goto_c

    .line 341
    :cond_1a
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->error:Z

    if-eqz v3, :cond_1b

    .line 342
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    iget-object v5, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->errorException:Ljava/lang/Exception;

    invoke-virtual {v3, v5}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_c

    .line 345
    :cond_1b
    :try_start_e
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onCompleted()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 348
    goto :goto_c

    .line 346
    :catch_6
    move-exception v0

    move-object v3, v0

    .line 347
    .restart local v3    # "e":Ljava/io/IOException;
    iget-object v5, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v5, v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    .line 327
    .end local v3    # "e":Ljava/io/IOException;
    :goto_c
    return-void

    .line 319
    .end local v4    # "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .local v2, "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    :catch_7
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    .line 320
    .local v2, "e":Ljava/lang/Exception;
    .restart local v6    # "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    :try_start_f
    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isRetry(Ljava/lang/Exception;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 321
    const-wide/16 v7, 0x0

    invoke-virtual {v1, v2, v7, v8}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->onRetry(Ljava/lang/Exception;J)V

    .line 332
    if-eqz v6, :cond_5

    goto :goto_b

    .line 324
    :cond_1c
    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->onError(Ljava/lang/Exception;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 332
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_1d

    :try_start_10
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 335
    :cond_1d
    move-object v2, v6

    .line 338
    .end local v6    # "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    :cond_1e
    :goto_d
    iput-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->alive:Z

    .line 339
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v2, :cond_1f

    .line 340
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onPaused()V

    goto :goto_e

    .line 341
    :cond_1f
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->error:Z

    if-eqz v2, :cond_20

    .line 342
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->errorException:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_e

    .line 345
    :cond_20
    :try_start_11
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onCompleted()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 348
    goto :goto_e

    .line 346
    :catch_8
    move-exception v0

    move-object v2, v0

    .line 347
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v3, v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    .line 350
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 351
    :goto_e
    return-void

    .line 332
    .restart local v6    # "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :goto_f
    if-eqz v6, :cond_21

    :try_start_12
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    :cond_21
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 338
    .end local v6    # "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    :catchall_2
    move-exception v0

    move-object v2, v0

    iput-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->alive:Z

    .line 339
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->paused:Z

    if-eqz v3, :cond_22

    .line 340
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onPaused()V

    goto :goto_10

    .line 341
    :cond_22
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->error:Z

    if-eqz v3, :cond_23

    .line 342
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    iget-object v4, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->errorException:Ljava/lang/Exception;

    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_10

    .line 345
    :cond_23
    :try_start_13
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onCompleted()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 348
    goto :goto_10

    .line 346
    :catch_9
    move-exception v0

    move-object v3, v0

    .line 347
    .restart local v3    # "e":Ljava/io/IOException;
    iget-object v4, v1, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->statusCallback:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;

    invoke-virtual {v4, v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    .line 348
    .end local v3    # "e":Ljava/io/IOException;
    :goto_10
    throw v2
.end method

.method public syncProgressFromCache()V
    .locals 4

    .line 819
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updateProgress(IJ)V

    .line 820
    return-void
.end method
