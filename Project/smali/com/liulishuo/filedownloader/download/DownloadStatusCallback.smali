.class public Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;
.super Ljava/lang/Object;
.source "DownloadStatusCallback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;
    }
.end annotation


# static fields
.field private static final ALREADY_DEAD_MESSAGE:Ljava/lang/String; = "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

.field private static final CALLBACK_SAFE_MIN_INTERVAL_BYTES:I = 0x1

.field private static final CALLBACK_SAFE_MIN_INTERVAL_MILLIS:I = 0x5

.field private static final NO_ANY_PROGRESS_CALLBACK:I = -0x1


# instance fields
.field private final callbackIncreaseBuffer:Ljava/util/concurrent/atomic/AtomicLong;

.field private callbackMinIntervalBytes:J

.field private final callbackProgressMaxCount:I

.field private final callbackProgressMinInterval:I

.field private final database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isFirstCallback:Z

.field private volatile lastCallbackTimestamp:J

.field private final maxRetryTimes:I

.field private final model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

.field private final processParams:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;III)V
    .locals 2
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .param p2, "maxRetryTimes"    # I
    .param p3, "minIntervalMillis"    # I
    .param p4, "callbackProgressMaxCount"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->lastCallbackTimestamp:J

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackIncreaseBuffer:Ljava/util/concurrent/atomic/AtomicLong;

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->isFirstCallback:Z

    .line 69
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 70
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDatabaseInstance()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    .line 71
    const/4 v0, 0x5

    if-ge p3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackProgressMinInterval:I

    .line 73
    iput p4, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackProgressMaxCount:I

    .line 74
    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->processParams:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;

    .line 75
    iput p2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->maxRetryTimes:I

    .line 76
    return-void
.end method

.method private static calculateCallbackMinIntervalBytes(JJ)J
    .locals 7
    .param p0, "contentLength"    # J
    .param p2, "callbackProgressMaxCount"    # J

    .line 223
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide/16 v3, -0x1

    if-gtz v2, :cond_0

    .line 224
    return-wide v3

    .line 225
    :cond_0
    cmp-long v2, p0, v3

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    .line 226
    return-wide v3

    .line 228
    :cond_1
    const/4 v2, 0x0

    add-long v5, p2, v3

    div-long v5, p0, v5

    .line 229
    .local v5, "minIntervalBytes":J
    cmp-long v2, v5, v0

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v3, v5

    :goto_0
    return-wide v3
.end method

.method private exFiltrate(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 17
    .param p1, "ex"    # Ljava/lang/Exception;

    move-object/from16 v0, p0

    .line 234
    move-object/from16 v9, p1

    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v10

    .line 239
    .local v10, "tempPath":Ljava/lang/String;
    iget-object v1, v0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isChunked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v1

    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->FILE_NON_PRE_ALLOCATION:Z

    if-eqz v1, :cond_3

    :cond_0
    instance-of v1, v9, Ljava/io/IOException;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    invoke-static {v10}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getFreeSpaceBytes(Ljava/lang/String;)J

    move-result-wide v11

    .line 245
    .local v11, "freeSpaceBytes":J
    const-wide/16 v1, 0x1000

    cmp-long v3, v11, v1

    if-gtz v3, :cond_3

    .line 247
    const-wide/16 v1, 0x0

    .line 248
    .local v1, "downloadedSize":J
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v3

    .line 249
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 250
    const-string v3, "Exception with: free space isn\'t enough, and the target file not exist."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v9, v3, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    .end local v1    # "downloadedSize":J
    .local v14, "downloadedSize":J
    :goto_0
    move-wide v14, v1

    goto :goto_1

    .line 253
    .end local v14    # "downloadedSize":J
    .restart local v1    # "downloadedSize":J
    :cond_1
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_0

    .line 256
    .end local v1    # "downloadedSize":J
    .restart local v14    # "downloadedSize":J
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    .line 257
    new-instance v16, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    const-wide/16 v4, 0x1000

    move-object/from16 v1, v16

    move-wide v2, v11

    move-wide v6, v14

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJLjava/lang/Throwable;)V

    .line 257
    .end local p1    # "ex":Ljava/lang/Exception;
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 260
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local p1    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    const-wide/16 v5, 0x1000

    move-object v2, v1

    move-wide v3, v11

    move-wide v7, v14

    invoke-direct/range {v2 .. v8}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    .line 260
    .end local v11    # "freeSpaceBytes":J
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "downloadedSize":J
    .end local p1    # "ex":Ljava/lang/Exception;
    .restart local v1    # "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 267
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local p1    # "ex":Ljava/lang/Exception;
    :cond_3
    move-object v1, v9

    .line 267
    .end local p1    # "ex":Ljava/lang/Exception;
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method

.method private handleCompleted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->renameTempFile()V

    .line 379
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 381
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updateCompleted(IJ)V

    .line 382
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V

    .line 384
    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onStatusChanged(B)V

    .line 386
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->BROADCAST_COMPLETED:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadBroadcastHandler;->sendCompletedBroadcast(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 389
    :cond_0
    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 424
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->exFiltrate(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    .line 426
    .local v0, "errProcessEx":Ljava/lang/Exception;
    instance-of v1, v0, Landroid/database/sqlite/SQLiteFullException;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 429
    move-object v1, v0

    check-cast v1, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handleSQLiteFullException(Landroid/database/sqlite/SQLiteFullException;)V

    goto :goto_0

    .line 434
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 435
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setErrMsg(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v4

    invoke-interface {v1, v3, v0, v4, v5}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updateError(ILjava/lang/Throwable;J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "fullException":Landroid/database/sqlite/SQLiteFullException;
    move-object v0, v1

    .line 440
    move-object v3, v0

    check-cast v3, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {p0, v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handleSQLiteFullException(Landroid/database/sqlite/SQLiteFullException;)V

    .line 444
    .end local v1    # "fullException":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->processParams:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->setException(Ljava/lang/Exception;)V

    .line 445
    invoke-direct {p0, v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onStatusChanged(B)V

    .line 446
    return-void
.end method

.method private handlePaused()V
    .locals 5

    .line 417
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 419
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updatePause(IJ)V

    .line 420
    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onStatusChanged(B)V

    .line 421
    return-void
.end method

.method private handleProgress(JZ)V
    .locals 5
    .param p1, "now"    # J
    .param p3, "isNeedCallbackToUser"    # Z

    .line 364
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 365
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updateProgress(IJ)V

    .line 366
    return-void

    .line 369
    :cond_0
    if-eqz p3, :cond_1

    .line 370
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->lastCallbackTimestamp:J

    .line 371
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onStatusChanged(B)V

    .line 372
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackIncreaseBuffer:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 374
    :cond_1
    return-void
.end method

.method private handleRetry(Ljava/lang/Exception;I)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "remainRetryTimes"    # I

    .line 405
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->exFiltrate(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    .line 406
    .local v0, "processEx":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->processParams:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->setException(Ljava/lang/Exception;)V

    .line 407
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->processParams:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;

    iget v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->maxRetryTimes:I

    sub-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->setRetryingTimes(I)V

    .line 409
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 410
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setErrMsg(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v3

    invoke-interface {v1, v3, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updateRetry(ILjava/lang/Throwable;)V

    .line 413
    invoke-direct {p0, v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onStatusChanged(B)V

    .line 414
    return-void
.end method

.method private handleSQLiteFullException(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 5
    .param p1, "sqLiteFullException"    # Landroid/database/sqlite/SQLiteFullException;

    .line 271
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v0

    .line 272
    .local v0, "id":I
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    .line 273
    const-string v1, "the data of the task[%d] is dirty, because the SQLite full exception[%s], so remove it from the database directly."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 275
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 273
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setErrMsg(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 281
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->remove(I)Z

    .line 282
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V

    .line 283
    return-void
.end method

.method private interceptBeforeCompleted()Z
    .locals 6

    .line 392
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isChunked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setTotal(J)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 395
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v2, "sofar[%d] not equal total[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 397
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 396
    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    .line 398
    return v4

    .line 401
    :cond_1
    :goto_0
    return v1
.end method

.method private isNeedCallbackToUser(J)Z
    .locals 9
    .param p1, "now"    # J

    .line 450
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->isFirstCallback:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 451
    iput-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->isFirstCallback:Z

    .line 452
    return v1

    .line 455
    :cond_0
    iget-wide v3, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->lastCallbackTimestamp:J

    sub-long v5, p1, v3

    .line 458
    .local v5, "callbackTimeDelta":J
    iget-wide v3, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackMinIntervalBytes:J

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackIncreaseBuffer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackMinIntervalBytes:J

    cmp-long v0, v3, v7

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackProgressMinInterval:I

    int-to-long v3, v0

    cmp-long v0, v5, v3

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onStatusChanged(B)V
    .locals 4
    .param p1, "status"    # B

    .line 465
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 466
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "High concurrent cause, Already paused and we don\'t need to call-back to Task in here, %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 479
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 478
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    :cond_0
    return-void

    .line 484
    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->getImpl()Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->processParams:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;

    invoke-static {p1, v1, v2}, Lcom/liulishuo/filedownloader/message/MessageSnapshotTaker;->take(BLcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->inflow(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 485
    return-void
.end method

.method private renameTempFile()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "tempPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "targetPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v2, "tempFile":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v5, "targetFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_1

    .line 294
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 295
    .local v8, "oldTargetFileLength":J
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 296
    new-instance v6, Ljava/io/IOException;

    const-string v10, "Can\'t delete the old file([%s], [%d]), so can\'t replace it with the new downloaded one."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    .line 299
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v3

    .line 296
    invoke-static {v10, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 302
    :cond_0
    const-string v6, "The target file([%s], [%d]) will be replaced with the new downloaded file[%d]"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v4

    .line 304
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    .line 302
    invoke-static {p0, v6, v10}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    .end local v8    # "oldTargetFileLength":J
    :cond_1
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 309
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Can\'t rename the  temp downloaded file(%s) to the target file(%s)"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    aput-object v1, v7, v3

    invoke-static {v8, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .end local v5    # "targetFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 316
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 317
    const-string v5, "delete the temp file(%s) failed, on completed downloading."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0, v5, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :cond_3
    return-void

    .line 315
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 316
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_4

    .line 317
    const-string v6, "delete the temp file(%s) failed, on completed downloading."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0, v6, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    throw v5
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .line 200
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 201
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_0
    return-void

    .line 208
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 211
    sget-boolean v3, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v3, :cond_2

    .line 212
    const-string v3, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p0, v3, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    return-void

    .line 216
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 326
    iget v0, p1, Landroid/os/Message;->what:I

    .line 328
    .local v0, "status":I
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 351
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handleError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 348
    :pswitch_1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handlePaused()V

    .line 349
    goto :goto_0

    .line 333
    :pswitch_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->interceptBeforeCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    return v2

    .line 338
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handleCompleted()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onError(Ljava/lang/Exception;)V

    .line 341
    return v2

    .line 345
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handleRetry(Ljava/lang/Exception;I)V

    .line 346
    goto :goto_0

    .line 330
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handleProgress(JZ)V

    .line 331
    nop

    .line 355
    :goto_0
    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isOver(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 359
    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAlive()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onCompleted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->interceptBeforeCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handleCompleted()V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->sendMessage(Landroid/os/Message;)V

    .line 192
    :goto_0
    return-void
.end method

.method onConnected(ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "isResume"    # Z
    .param p2, "totalLength"    # J
    .param p4, "etag"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getETag()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "oldEtag":Ljava/lang/String;
    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback onConnected must with precondition succeed, but the etag is changes(%s != %s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v1, v4

    const/4 v4, 0x1

    aput-object v0, v1, v4

    .line 99
    invoke-static {v3, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->processParams:Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;

    invoke-virtual {v2, p1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->setResuming(Z)V

    .line 106
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 107
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2, p2, p3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setTotal(J)V

    .line 108
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2, p4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setETag(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2, p5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setFilename(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v4

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updateConnected(IJLjava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onStatusChanged(B)V

    .line 114
    iget v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackProgressMaxCount:I

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->calculateCallbackMinIntervalBytes(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackMinIntervalBytes:J

    .line 115
    return-void
.end method

.method onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 171
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handleError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->sendMessage(Landroid/os/Message;)V

    .line 178
    :goto_0
    return-void
.end method

.method onMultiConnection()V
    .locals 2

    .line 118
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "source-status-callback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handlerThread:Landroid/os/HandlerThread;

    .line 119
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method onPaused()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handlePaused()V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->sendMessage(Landroid/os/Message;)V

    .line 168
    :goto_0
    return-void
.end method

.method public onPending()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 86
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updatePending(I)V

    .line 87
    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onStatusChanged(B)V

    .line 88
    return-void
.end method

.method onProgress(J)V
    .locals 5
    .param p1, "increaseBytes"    # J

    .line 129
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackIncreaseBuffer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 130
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->increaseSoFar(J)V

    .line 132
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 136
    .local v2, "now":J
    invoke-direct {p0, v2, v3}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->isNeedCallbackToUser(J)Z

    move-result v0

    .line 138
    .local v0, "isNeedCallbackToUser":Z
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 140
    invoke-direct {p0, v2, v3, v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handleProgress(JZ)V

    goto :goto_0

    .line 141
    :cond_0
    if-eqz v0, :cond_1

    .line 143
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->sendMessage(Landroid/os/Message;)V

    .line 145
    :cond_1
    :goto_0
    return-void
.end method

.method onRetry(Ljava/lang/Exception;IJ)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "remainRetryTimes"    # I
    .param p3, "invalidIncreaseBytes"    # J

    .line 148
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->callbackIncreaseBuffer:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 149
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    neg-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->increaseSoFar(J)V

    .line 151
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handleRetry(Ljava/lang/Exception;I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->sendMessage(Landroid/os/Message;)V

    .line 158
    :goto_0
    return-void
.end method

.method onStartThread()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 93
    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;->onStatusChanged(B)V

    .line 94
    return-void
.end method
