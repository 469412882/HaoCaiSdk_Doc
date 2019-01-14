.class public Lcom/liulishuo/filedownloader/DownloadTaskHunter;
.super Ljava/lang/Object;
.source "DownloadTaskHunter.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/ITaskHunter;
.implements Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;
.implements Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;
.implements Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;
    }
.end annotation


# instance fields
.field private mEtag:Ljava/lang/String;

.field private mIsLargeFile:Z

.field private mIsResuming:Z

.field private mIsReusedOldFile:Z

.field private mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

.field private final mPauseLock:Ljava/lang/Object;

.field private mRetryingTimes:I

.field private mSoFarBytes:J

.field private final mSpeedLookup:Lcom/liulishuo/filedownloader/IDownloadSpeed$Lookup;

.field private final mSpeedMonitor:Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;

.field private volatile mStatus:B

.field private final mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

.field private mThrowable:Ljava/lang/Throwable;

.field private mTotalBytes:J


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;Ljava/lang/Object;)V
    .locals 3
    .param p1, "task"    # Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;
    .param p2, "pauseLock"    # Ljava/lang/Object;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mThrowable:Ljava/lang/Throwable;

    .line 331
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mIsReusedOldFile:Z

    .line 334
    iput-object p2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mPauseLock:Ljava/lang/Object;

    .line 335
    iput-object p1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    .line 336
    new-instance v0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;-><init>()V

    .line 337
    .local v0, "monitor":Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;
    iput-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSpeedMonitor:Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;

    .line 338
    iput-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSpeedLookup:Lcom/liulishuo/filedownloader/IDownloadSpeed$Lookup;

    .line 339
    new-instance v1, Lcom/liulishuo/filedownloader/FileDownloadMessenger;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;-><init>(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    .line 340
    return-void
.end method

.method private getId()I
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v0

    return v0
.end method

.method private prepare()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    .line 521
    .local v0, "runningTask":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    .line 523
    .local v1, "origin":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 524
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getDefaultSaveFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 525
    sget-boolean v2, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v2, :cond_0

    .line 526
    const-string v2, "save Path is null to %s"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p0, v2, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    :cond_0
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isPathAsDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    new-instance v2, Ljava/io/File;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    .local v2, "dir":Ljava/io/File;
    goto :goto_0

    .line 534
    .end local v2    # "dir":Ljava/io/File;
    :cond_1
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "dirString":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 536
    new-instance v5, Ljava/security/InvalidParameterException;

    const-string v6, "the provided mPath[%s] is invalid, can\'t find its directory"

    new-array v4, v4, [Ljava/lang/Object;

    .line 538
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    .line 537
    invoke-static {v6, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 540
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    .end local v2    # "dirString":Ljava/lang/String;
    move-object v2, v5

    .line 543
    .local v2, "dir":Ljava/io/File;
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 544
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 545
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Create parent directory failed, please make sure you have permission to create file or directory on the path: %s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 548
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    .line 546
    invoke-static {v6, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 551
    :cond_3
    return-void
.end method

.method private update(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 10
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 126
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    .line 127
    .local v0, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v1

    .line 129
    .local v1, "status":B
    iput-byte v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    .line 130
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->isLargeFile()Z

    move-result v2

    iput-boolean v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mIsLargeFile:Z

    .line 132
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 142
    :pswitch_1
    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    invoke-interface {v2, p1}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->notifyStarted(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 143
    goto/16 :goto_1

    .line 176
    :pswitch_2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSoFarBytes:J

    .line 177
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mThrowable:Ljava/lang/Throwable;

    .line 178
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getRetryingTimes()I

    move-result v2

    iput v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mRetryingTimes:I

    .line 180
    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSpeedMonitor:Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;->reset()V

    .line 183
    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    invoke-interface {v2, p1}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->notifyRetry(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 184
    goto/16 :goto_1

    .line 164
    :pswitch_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSoFarBytes:J

    .line 165
    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSpeedMonitor:Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;->update(J)V

    .line 168
    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    invoke-interface {v2, p1}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->notifyProgress(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 169
    goto/16 :goto_1

    .line 145
    :pswitch_4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeTotalBytes()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTotalBytes:J

    .line 146
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->isResuming()Z

    move-result v5

    iput-boolean v5, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mIsResuming:Z

    .line 147
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getEtag()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mEtag:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "filename":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 151
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 152
    const-string v6, "already has mFilename[%s], but assign mFilename[%s] again"

    new-array v2, v2, [Ljava/lang/Object;

    .line 153
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    aput-object v5, v2, v4

    .line 152
    invoke-static {p0, v6, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v2, v5}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->setFileName(Ljava/lang/String;)V

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSpeedMonitor:Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;

    iget-wide v3, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSoFarBytes:J

    invoke-interface {v2, v3, v4}, Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;->start(J)V

    .line 161
    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    invoke-interface {v2, p1}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->notifyConnected(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 162
    goto/16 :goto_1

    .line 134
    .end local v5    # "filename":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSoFarBytes:J

    .line 135
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeTotalBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTotalBytes:J

    .line 138
    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    invoke-interface {v2, p1}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->notifyPending(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 139
    goto/16 :goto_1

    .line 186
    :pswitch_6
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mThrowable:Ljava/lang/Throwable;

    .line 187
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSoFarBytes:J

    .line 190
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->remove(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    .line 192
    goto/16 :goto_1

    .line 197
    :pswitch_7
    goto/16 :goto_1

    .line 199
    :pswitch_8
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->isReusedDownloadedFile()Z

    move-result v2

    iput-boolean v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mIsReusedOldFile:Z

    .line 201
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeTotalBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSoFarBytes:J

    .line 202
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeTotalBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTotalBytes:J

    .line 205
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->remove(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    .line 207
    goto/16 :goto_1

    .line 209
    :pswitch_9
    iget-object v5, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSpeedMonitor:Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;

    invoke-interface {v5}, Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;->reset()V

    .line 211
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v5

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/liulishuo/filedownloader/FileDownloadList;->count(I)I

    move-result v5

    .line 215
    .local v5, "sameIdTaskCount":I
    if-gt v5, v4, :cond_2

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isPathAsDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 216
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v6

    .line 217
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTargetFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 216
    invoke-virtual {v6, v7}, Lcom/liulishuo/filedownloader/FileDownloadList;->count(I)I

    move-result v6

    .line 216
    .local v6, "sameStoreTaskCount":I
    goto :goto_0

    .line 219
    .end local v6    # "sameStoreTaskCount":I
    :cond_2
    const/4 v6, 0x0

    .line 222
    .restart local v6    # "sameStoreTaskCount":I
    :goto_0
    add-int v7, v5, v6

    if-gt v7, v4, :cond_3

    .line 227
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v7

    .line 228
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getStatus(I)B

    move-result v7

    .line 229
    .local v7, "currentStatus":I
    const-string v8, "warn, but no mListener to receive, switch to pending %d %d"

    new-array v2, v2, [Ljava/lang/Object;

    .line 230
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 229
    invoke-static {p0, v8, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-static {v7}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isIng(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    iput-byte v4, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    .line 238
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeTotalBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTotalBytes:J

    .line 239
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSoFarBytes:J

    .line 241
    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSpeedMonitor:Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;

    iget-wide v3, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSoFarBytes:J

    invoke-interface {v2, v3, v4}, Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;->start(J)V

    .line 243
    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    move-object v3, p1

    check-cast v3, Lcom/liulishuo/filedownloader/message/MessageSnapshot$IWarnMessageSnapshot;

    .line 245
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$IWarnMessageSnapshot;->turnToPending()Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v3

    .line 244
    invoke-interface {v2, v3}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->notifyPending(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 246
    goto :goto_1

    .line 254
    .end local v7    # "currentStatus":I
    :cond_3
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->remove(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    .line 257
    .end local v5    # "sameIdTaskCount":I
    .end local v6    # "sameStoreTaskCount":I
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equalListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 649
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getListener()Lcom/liulishuo/filedownloader/FileDownloadListener;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public free()V
    .locals 5

    .line 513
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 514
    const-string v0, "free the task %d, when the status is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    iget-byte v4, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    :cond_0
    iput-byte v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    .line 517
    return-void
.end method

.method public getErrorCause()Ljava/lang/Throwable;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getMessenger()Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    return-object v0
.end method

.method public getRetryingTimes()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mRetryingTimes:I

    return v0
.end method

.method public getSofarBytes()J
    .locals 2

    .line 473
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSoFarBytes:J

    return-wide v0
.end method

.method public getSpeed()I
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSpeedLookup:Lcom/liulishuo/filedownloader/IDownloadSpeed$Lookup;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/IDownloadSpeed$Lookup;->getSpeed()I

    move-result v0

    return v0
.end method

.method public getStatus()B
    .locals 1

    .line 433
    iget-byte v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    return v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 478
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTotalBytes:J

    return-wide v0
.end method

.method public intoLaunchPool()V
    .locals 8

    .line 344
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iget-byte v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 346
    const-string v1, "High concurrent cause, this task %d will not input to launch pool, because of the status isn\'t idle : %d"

    new-array v2, v2, [Ljava/lang/Object;

    .line 348
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    iget-byte v3, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    .line 346
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    monitor-exit v0

    return-void

    .line 352
    :cond_0
    const/16 v1, 0xa

    iput-byte v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    .line 353
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    .line 356
    .local v0, "runningTask":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    .line 358
    .local v1, "origin":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMonitor;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 359
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMonitor;->getMonitor()Lcom/liulishuo/filedownloader/FileDownloadMonitor$IMonitor;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/liulishuo/filedownloader/FileDownloadMonitor$IMonitor;->onRequestStart(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 362
    :cond_1
    sget-boolean v5, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v5, :cond_2

    .line 363
    const-string v5, "call start Url[%s], Path[%s] Listener[%s], Tag[%s]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 365
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getListener()Lcom/liulishuo/filedownloader/FileDownloadListener;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    .line 363
    invoke-static {p0, v5, v6}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    :cond_2
    move v2, v4

    .line 371
    .local v2, "ready":Z
    :try_start_1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->prepare()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    goto :goto_0

    .line 372
    :catch_0
    move-exception v5

    .line 373
    .local v5, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 375
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/liulishuo/filedownloader/FileDownloadList;->add(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V

    .line 376
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->prepareErrorMessage(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/liulishuo/filedownloader/FileDownloadList;->remove(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    .line 379
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_3

    .line 380
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;->launch(Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;)V

    .line 383
    :cond_3
    sget-boolean v5, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v5, :cond_4

    .line 384
    const-string v5, "the task[%d] has been into the launch pool."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {p0, v5, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :cond_4
    return-void

    .line 353
    .end local v0    # "runningTask":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    .end local v1    # "origin":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .end local v2    # "ready":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isLargeFile()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mIsLargeFile:Z

    return v0
.end method

.method public isResuming()Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mIsResuming:Z

    return v0
.end method

.method public isReusedOldFile()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mIsReusedOldFile:Z

    return v0
.end method

.method public onBegin()V
    .locals 4

    .line 261
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMonitor;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMonitor;->getMonitor()Lcom/liulishuo/filedownloader/FileDownloadMonitor$IMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadMonitor$IMonitor;->onTaskBegin(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 265
    :cond_0
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_1

    .line 266
    const-string v0, "filedownloader:lifecycle:start %s by %d "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getStatus()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_1
    return-void
.end method

.method public onIng()V
    .locals 2

    .line 272
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMonitor;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getStatus()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 273
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMonitor;->getMonitor()Lcom/liulishuo/filedownloader/FileDownloadMonitor$IMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadMonitor$IMonitor;->onTaskStarted(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onOver()V
    .locals 6

    .line 279
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    .line 281
    .local v0, "origin":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMonitor;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMonitor;->getMonitor()Lcom/liulishuo/filedownloader/FileDownloadMonitor$IMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/FileDownloadMonitor$IMonitor;->onTaskOver(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 285
    :cond_0
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 286
    const-string v1, "filedownloader:lifecycle:over %s by %d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 287
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getStatus()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 286
    invoke-static {p0, v1, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSpeedMonitor:Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;

    iget-wide v3, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSoFarBytes:J

    invoke-interface {v1, v3, v4}, Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;->end(J)V

    .line 291
    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getFinishListenerList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    .line 294
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getFinishListenerList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 295
    .local v1, "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 296
    .local v3, "numListeners":I
    nop

    .line 296
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 297
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;

    invoke-interface {v4, v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;->over(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;>;"
    .end local v2    # "i":I
    .end local v3    # "numListeners":I
    :cond_2
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/FileDownloader;->getLostConnectedHandler()Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;->taskWorkFine(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V

    .line 302
    return-void
.end method

.method public pause()Z
    .locals 7

    .line 390
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getStatus()B

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isOver(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 391
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "High concurrent cause, Already is over, can\'t pause again, %d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 399
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getStatus()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v4

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v4

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 398
    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :cond_0
    return v2

    .line 403
    :cond_1
    const/4 v0, -0x2

    iput-byte v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    .line 405
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    .line 406
    .local v0, "runningTask":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v3

    .line 408
    .local v3, "origin":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;->expire(Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;)V

    .line 409
    sget-boolean v4, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v4, :cond_2

    .line 410
    const-string v4, "the task[%d] has been expired from the launch pool."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p0, v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    :cond_2
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 414
    sget-boolean v4, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v4, :cond_4

    .line 415
    const-string v4, "request pause the task[%d] to the download service, but the download service isn\'t connected yet."

    new-array v5, v1, [Ljava/lang/Object;

    .line 416
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 415
    invoke-static {p0, v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 419
    :cond_3
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v2

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->pause(I)Z

    .line 423
    :cond_4
    :goto_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/FileDownloadList;->add(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V

    .line 424
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v2

    invoke-static {v3}, Lcom/liulishuo/filedownloader/message/MessageSnapshotTaker;->catchPause(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/liulishuo/filedownloader/FileDownloadList;->remove(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    .line 426
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/FileDownloader;->getLostConnectedHandler()Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;->taskWorkFine(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V

    .line 428
    return v1
.end method

.method public prepareErrorMessage(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 120
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    .line 121
    iput-object p1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mThrowable:Ljava/lang/Throwable;

    .line 122
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getSofarBytes()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshotTaker;->catchException(IJLjava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 3

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mThrowable:Ljava/lang/Throwable;

    .line 440
    iput-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mEtag:Ljava/lang/String;

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mIsResuming:Z

    .line 442
    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mRetryingTimes:I

    .line 443
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mIsReusedOldFile:Z

    .line 444
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mIsLargeFile:Z

    .line 446
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSoFarBytes:J

    .line 447
    iput-wide v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTotalBytes:J

    .line 449
    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSpeedMonitor:Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;->reset()V

    .line 451
    iget-byte v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    invoke-static {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isOver(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->discard()V

    .line 453
    new-instance v1, Lcom/liulishuo/filedownloader/FileDownloadMessenger;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;-><init>(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    goto :goto_0

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mMessenger:Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->reAppointment(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;)V

    .line 458
    :goto_0
    iput-byte v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    .line 459
    return-void
.end method

.method public setMinIntervalUpdateSpeed(I)V
    .locals 1
    .param p1, "minIntervalUpdateSpeed"    # I

    .line 463
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mSpeedLookup:Lcom/liulishuo/filedownloader/IDownloadSpeed$Lookup;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IDownloadSpeed$Lookup;->setMinIntervalUpdateSpeed(I)V

    .line 464
    return-void
.end method

.method public start()V
    .locals 19

    .line 559
    move-object/from16 v1, p0

    iget-byte v2, v1, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v4, :cond_0

    .line 560
    const-string v2, "High concurrent cause, this task %d will not start, because the of status isn\'t toLaunchPool: %d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 562
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-byte v4, v1, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    .line 560
    invoke-static {v1, v2, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    return-void

    .line 566
    :cond_0
    iget-object v2, v1, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v2

    .line 567
    .local v2, "runningTask":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v7

    .line 569
    .local v7, "origin":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v8

    .line 570
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/FileDownloader;->getLostConnectedHandler()Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;

    move-result-object v8

    .line 573
    .local v8, "lostConnectedHandler":Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;
    :try_start_0
    invoke-interface {v8, v2}, Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;->dispatchTaskStart(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 574
    return-void

    .line 577
    :cond_1
    iget-object v9, v1, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mPauseLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :try_start_1
    iget-byte v10, v1, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    if-eq v10, v4, :cond_2

    .line 579
    const-string v4, "High concurrent cause, this task %d will not start, the status can\'t assign to toFileDownloadService, because the status isn\'t toLaunchPool: %d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v5

    iget-byte v5, v1, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v6

    .line 579
    invoke-static {v1, v4, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    monitor-exit v9

    return-void

    .line 586
    :cond_2
    const/16 v3, 0xb

    iput-byte v3, v1, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    .line 587
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :try_start_2
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/liulishuo/filedownloader/FileDownloadList;->add(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V

    .line 590
    nop

    .line 591
    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v3

    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTargetFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isForceReDownload()Z

    move-result v9

    .line 590
    invoke-static {v3, v4, v9, v6}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->inspectAndInflowDownloaded(ILjava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 594
    return-void

    .line 597
    :cond_3
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v9

    .line 599
    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 600
    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 601
    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isPathAsDirectory()Z

    move-result v12

    .line 602
    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getCallbackProgressTimes()I

    move-result v13

    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getCallbackProgressMinInterval()I

    move-result v14

    .line 603
    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getAutoRetryTimes()I

    move-result v15

    .line 604
    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isForceReDownload()Z

    move-result v16

    iget-object v3, v1, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    .line 605
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getHeader()Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    move-result-object v17

    .line 606
    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isWifiRequired()Z

    move-result v18

    .line 598
    invoke-virtual/range {v9 .. v18}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z

    move-result v3

    .line 608
    .local v3, "succeed":Z
    iget-byte v4, v1, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    const/4 v9, -0x2

    if-ne v4, v9, :cond_5

    .line 609
    const-string v4, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied"

    new-array v6, v6, [Ljava/lang/Object;

    .line 610
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    .line 609
    invoke-static {v1, v4, v6}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    if-eqz v3, :cond_4

    .line 612
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->pause(I)Z

    .line 614
    :cond_4
    return-void

    .line 617
    :cond_5
    if-nez v3, :cond_7

    .line 619
    invoke-interface {v8, v2}, Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;->dispatchTaskStart(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 620
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->prepareErrorMessage(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v4

    .line 625
    .local v4, "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/liulishuo/filedownloader/FileDownloadList;->isNotContains(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 626
    invoke-interface {v8, v2}, Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;->taskWorkFine(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V

    .line 627
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/liulishuo/filedownloader/FileDownloadList;->add(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V

    .line 630
    :cond_6
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/liulishuo/filedownloader/FileDownloadList;->remove(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    .line 632
    .end local v4    # "snapshot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto :goto_0

    .line 637
    :cond_7
    invoke-interface {v8, v2}, Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;->taskWorkFine(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 644
    .end local v3    # "succeed":Z
    :cond_8
    :goto_0
    goto :goto_1

    .line 587
    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 640
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 641
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 643
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->prepareErrorMessage(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/liulishuo/filedownloader/FileDownloadList;->remove(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    .line 645
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public updateKeepAhead(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 5
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 44
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getStatus()B

    move-result v0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v1

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isKeepAhead(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 45
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "can\'t update mStatus change by keep ahead, %d, but the current mStatus is %d, %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-byte v4, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    .line 47
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getStatus()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 46
    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    return v2

    .line 52
    :cond_1
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->update(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 53
    return v1
.end method

.method public updateKeepFlow(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 7
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 58
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getStatus()B

    move-result v0

    .line 59
    .local v0, "currentStatus":I
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v1

    .line 61
    .local v1, "nextStatus":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-ne v4, v0, :cond_1

    invoke-static {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isIng(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    sget-boolean v4, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v4, :cond_0

    .line 69
    const-string v4, "High concurrent cause, callback pending, but has already be paused %d"

    new-array v5, v3, [Ljava/lang/Object;

    .line 70
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 69
    invoke-static {p0, v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_0
    return v3

    .line 75
    :cond_1
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isKeepFlow(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 76
    sget-boolean v4, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v4, :cond_2

    .line 77
    const-string v4, "can\'t update mStatus change by keep flow, %d, but the current mStatus is %d, %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-byte v6, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mStatus:B

    .line 78
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getStatus()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 77
    invoke-static {p0, v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_2
    return v2

    .line 84
    :cond_3
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->update(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 85
    return v3
.end method

.method public updateMoreLikelyCompleted(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 1
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 90
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isMoreLikelyCompleted(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->update(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public updateSameFilePathTaskRunning(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 3
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 100
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->mTask:Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter$ICaptureTask;->getRunningTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isPathAsDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    return v1

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v0

    const/4 v2, -0x4

    if-ne v0, v2, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->getStatus()B

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/DownloadTaskHunter;->update(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 110
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_2
    :goto_0
    return v1
.end method
