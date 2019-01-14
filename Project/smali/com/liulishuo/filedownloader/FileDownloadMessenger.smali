.class Lcom/liulishuo/filedownloader/FileDownloadMessenger;
.super Ljava/lang/Object;
.source "FileDownloadMessenger.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/IFileDownloadMessenger;


# instance fields
.field private mIsDiscard:Z

.field private mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

.field private mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

.field private parcelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;)V
    .locals 1
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    .param p2, "callback"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mIsDiscard:Z

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->init(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;)V

    .line 47
    return-void
.end method

.method private init(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;)V
    .locals 1
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    .param p2, "callback"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    .line 50
    iput-object p1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 51
    iput-object p2, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    .line 52
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->parcelQueue:Ljava/util/Queue;

    .line 53
    return-void
.end method

.method private inspectAndHandleOverStatus(I)V
    .locals 6
    .param p1, "status"    # I

    .line 228
    invoke-static {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isOver(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->parcelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->parcelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 231
    .local v0, "queueTopTask":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    .line 235
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->parcelQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 232
    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    .end local v0    # "queueTopTask":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 239
    :cond_1
    return-void
.end method

.method private process(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 198
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    if-nez v0, :cond_1

    .line 199
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "occur this case, it would be the host task of this messenger has been over(paused/warn/completed/error) on the other thread before receiving the snapshot(id[%d], status[%d])"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 205
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    .line 202
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_0
    return-void

    .line 210
    :cond_1
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mIsDiscard:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getListener()Lcom/liulishuo/filedownloader/FileDownloadListener;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->parcelQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 222
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadMessageStation;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->requestEnqueue(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)V

    goto :goto_1

    .line 211
    :cond_3
    :goto_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMonitor;->isValid()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->isContainFinishListener()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 212
    :cond_4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 215
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onOver()V

    .line 218
    :cond_5
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->inspectAndHandleOverStatus(I)V

    .line 224
    :goto_1
    return-void
.end method


# virtual methods
.method public discard()V
    .locals 1

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mIsDiscard:Z

    .line 391
    return-void
.end method

.method public handoverDirectly()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isSyncCallback()Z

    move-result v0

    return v0
.end method

.method public handoverMessage()V
    .locals 15

    .line 243
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mIsDiscard:Z

    if-eqz v0, :cond_0

    .line 244
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->parcelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 248
    .local v0, "message":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v1

    .line 249
    .local v1, "currentStatus":I
    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 251
    .local v2, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    const-string v3, "can\'t handover the message, no master to receive this message(status[%d]) size[%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->parcelQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 252
    invoke-static {v3, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 251
    const/4 v6, 0x1

    goto :goto_0

    .line 252
    :cond_1
    nop

    .line 251
    :goto_0
    invoke-static {v3, v6}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 257
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v3

    .line 259
    .local v3, "originTask":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getListener()Lcom/liulishuo/filedownloader/FileDownloadListener;

    move-result-object v4

    .line 260
    .local v4, "listener":Lcom/liulishuo/filedownloader/FileDownloadListener;
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getMessageHandler()Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;

    move-result-object v5

    .line 262
    .local v5, "messageHandler":Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;
    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->inspectAndHandleOverStatus(I)V

    .line 264
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/FileDownloadListener;->isInvalid()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_3

    .line 268
    :cond_2
    const/4 v6, 0x4

    if-ne v1, v6, :cond_3

    .line 270
    :try_start_0
    invoke-virtual {v4, v3}, Lcom/liulishuo/filedownloader/FileDownloadListener;->blockComplete(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 271
    move-object v6, v0

    check-cast v6, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;

    invoke-interface {v6}, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;->transmitToCompleted()Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->notifyCompleted(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 272
    :catch_0
    move-exception v6

    .line 273
    .local v6, "throwable":Ljava/lang/Throwable;
    invoke-interface {v5, v6}, Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;->prepareErrorMessage(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->notifyError(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 274
    .end local v6    # "throwable":Ljava/lang/Throwable;
    :goto_1
    goto/16 :goto_2

    .line 276
    :cond_3
    const/4 v6, 0x0

    .line 277
    .local v6, "largeFileListener":Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;
    instance-of v7, v4, Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;

    if-eqz v7, :cond_4

    .line 278
    move-object v6, v4

    check-cast v6, Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;

    .line 281
    :cond_4
    packed-switch v1, :pswitch_data_0

    .line 281
    .end local v6    # "largeFileListener":Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;
    :pswitch_0
    goto/16 :goto_2

    .line 295
    .restart local v6    # "largeFileListener":Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;
    :pswitch_1
    invoke-virtual {v4, v3}, Lcom/liulishuo/filedownloader/FileDownloadListener;->started(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 296
    goto/16 :goto_2

    .line 327
    :pswitch_2
    if-eqz v6, :cond_5

    .line 328
    nop

    .line 329
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getThrowable()Ljava/lang/Throwable;

    move-result-object v9

    .line 330
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getRetryingTimes()I

    move-result v10

    .line 331
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v11

    .line 328
    move-object v7, v6

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;->retry(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;IJ)V

    goto/16 :goto_2

    .line 333
    :cond_5
    nop

    .line 334
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getThrowable()Ljava/lang/Throwable;

    move-result-object v7

    .line 335
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getRetryingTimes()I

    move-result v8

    .line 336
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getSmallSofarBytes()I

    move-result v9

    .line 333
    invoke-virtual {v4, v3, v7, v8, v9}, Lcom/liulishuo/filedownloader/FileDownloadListener;->retry(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;II)V

    .line 339
    goto/16 :goto_2

    .line 315
    :pswitch_3
    if-eqz v6, :cond_6

    .line 316
    nop

    .line 317
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v9

    .line 318
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileTotalBytes()J

    move-result-wide v11

    .line 316
    move-object v7, v6

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;->progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V

    goto/16 :goto_2

    .line 321
    :cond_6
    nop

    .line 322
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getSmallSofarBytes()I

    move-result v7

    .line 323
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getSmallFileTotalBytes()I

    move-result v8

    .line 321
    invoke-virtual {v4, v3, v7, v8}, Lcom/liulishuo/filedownloader/FileDownloadListener;->progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V

    .line 325
    goto/16 :goto_2

    .line 298
    :pswitch_4
    if-eqz v6, :cond_7

    .line 299
    nop

    .line 300
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getEtag()Ljava/lang/String;

    move-result-object v9

    .line 301
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->isResuming()Z

    move-result v10

    .line 302
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileSoFarBytes()J

    move-result-wide v11

    .line 303
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeTotalBytes()J

    move-result-wide v13

    .line 299
    move-object v7, v6

    move-object v8, v3

    invoke-virtual/range {v7 .. v14}, Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;->connected(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;ZJJ)V

    goto/16 :goto_2

    .line 306
    :cond_7
    nop

    .line 307
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getEtag()Ljava/lang/String;

    move-result-object v9

    .line 308
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->isResuming()Z

    move-result v10

    .line 309
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getSmallFileSoFarBytes()I

    move-result v11

    .line 310
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getSmallTotalBytes()I

    move-result v12

    .line 306
    move-object v7, v4

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Lcom/liulishuo/filedownloader/FileDownloadListener;->connected(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;ZII)V

    .line 313
    goto :goto_2

    .line 283
    :pswitch_5
    if-eqz v6, :cond_8

    .line 284
    nop

    .line 285
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v9

    .line 286
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeTotalBytes()J

    move-result-wide v11

    .line 284
    move-object v7, v6

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;->pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V

    goto :goto_2

    .line 288
    :cond_8
    nop

    .line 289
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getSmallSofarBytes()I

    move-result v7

    .line 290
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getSmallTotalBytes()I

    move-result v8

    .line 288
    invoke-virtual {v4, v3, v7, v8}, Lcom/liulishuo/filedownloader/FileDownloadListener;->pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V

    .line 293
    goto :goto_2

    .line 344
    :pswitch_6
    nop

    .line 345
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getThrowable()Ljava/lang/Throwable;

    move-result-object v7

    .line 344
    invoke-virtual {v4, v3, v7}, Lcom/liulishuo/filedownloader/FileDownloadListener;->error(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;)V

    .line 346
    goto :goto_2

    .line 348
    :pswitch_7
    if-eqz v6, :cond_9

    .line 349
    nop

    .line 350
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v9

    .line 351
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getLargeTotalBytes()J

    move-result-wide v11

    .line 349
    move-object v7, v6

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;->paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V

    goto :goto_2

    .line 353
    :cond_9
    nop

    .line 354
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getSmallSofarBytes()I

    move-result v7

    .line 355
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getSmallTotalBytes()I

    move-result v8

    .line 353
    invoke-virtual {v4, v3, v7, v8}, Lcom/liulishuo/filedownloader/FileDownloadListener;->paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V

    .line 357
    goto :goto_2

    .line 341
    :pswitch_8
    invoke-virtual {v4, v3}, Lcom/liulishuo/filedownloader/FileDownloadListener;->completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 342
    goto :goto_2

    .line 360
    :pswitch_9
    invoke-virtual {v4, v3}, Lcom/liulishuo/filedownloader/FileDownloadListener;->warn(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 364
    .end local v6    # "largeFileListener":Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;
    :goto_2
    return-void

    .line 265
    :cond_a
    :goto_3
    return-void

    nop

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

.method public isBlockingCompleted()Z
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->parcelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyBegin()Z
    .locals 5

    .line 57
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "notify begin %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    if-nez v0, :cond_1

    .line 62
    const-string v0, "can\'t begin the task, the holder fo the messenger is nil, %d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->parcelQueue:Ljava/util/Queue;

    .line 63
    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 62
    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return v1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onBegin()V

    .line 69
    return v2
.end method

.method public notifyBlockComplete(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 130
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "notify block completed %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onIng()V

    .line 136
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->process(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 137
    return-void
.end method

.method public notifyCompleted(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 188
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "notify completed %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onOver()V

    .line 194
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->process(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 195
    return-void
.end method

.method public notifyConnected(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 96
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "notify connected %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onIng()V

    .line 102
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->process(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 103
    return-void
.end method

.method public notifyError(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 166
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "notify error %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getErrorCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onOver()V

    .line 172
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->process(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 173
    return-void
.end method

.method public notifyPaused(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 177
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "notify paused %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onOver()V

    .line 183
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->process(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 184
    return-void
.end method

.method public notifyPending(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 74
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "notify pending %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onIng()V

    .line 80
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->process(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 81
    return-void
.end method

.method public notifyProgress(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 8
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 107
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    .line 108
    .local v0, "originTask":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "notify progress %s %d %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 110
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileSoFarBytes()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileTotalBytes()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 109
    invoke-static {p0, v1, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getCallbackProgressTimes()I

    move-result v1

    if-gtz v1, :cond_2

    .line 113
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_1

    .line 114
    const-string v1, "notify progress but client not request notify %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_1
    return-void

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onIng()V

    .line 121
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->process(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 123
    return-void
.end method

.method public notifyRetry(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 5
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 141
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    .line 143
    .local v0, "originTask":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    const-string v1, "notify retry %s %d %d %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 144
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getAutoRetryTimes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getRetryingTimes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getErrorCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 143
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .end local v0    # "originTask":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onIng()V

    .line 149
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->process(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 150
    return-void
.end method

.method public notifyStarted(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 85
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "notify started %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onIng()V

    .line 91
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->process(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 92
    return-void
.end method

.method public notifyWarn(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 155
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "notify warn %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mLifeCycleCallback:Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;->onOver()V

    .line 161
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->process(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 162
    return-void
.end method

.method public reAppointment(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;)V
    .locals 4
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    .param p2, "callback"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;

    .line 374
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the messenger is working, can\'t re-appointment for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 376
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->init(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/BaseDownloadTask$LifeCycleCallback;)V

    .line 381
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 395
    const-string v0, "%d:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadMessenger;->mTask:Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v2

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
