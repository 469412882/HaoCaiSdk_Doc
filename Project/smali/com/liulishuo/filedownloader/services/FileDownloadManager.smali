.class Lcom/liulishuo/filedownloader/services/FileDownloadManager;
.super Ljava/lang/Object;
.source "FileDownloadManager.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/IThreadPoolMonitor;


# instance fields
.field private final mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

.field private final mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    .line 52
    .local v0, "holder":Lcom/liulishuo/filedownloader/download/CustomComponentHolder;
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDatabaseInstance()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    .line 53
    new-instance v1, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getMaxNetworkThreadCount()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;-><init>(I)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    .line 54
    return-void
.end method


# virtual methods
.method public clearAllTaskData()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->clear()V

    .line 338
    return-void
.end method

.method public clearTaskData(I)Z
    .locals 4
    .param p1, "id"    # I

    .line 321
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 322
    const-string v2, "The task[%d] id is invalid, can\'t clear it."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p0, v2, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    return v1

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->isDownloading(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    const-string v2, "The task[%d] is downloading, can\'t clear it."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p0, v2, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    return v1

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->remove(I)Z

    .line 332
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V

    .line 333
    return v0
.end method

.method public findRunningTaskIdBySameTempPath(Ljava/lang/String;I)I
    .locals 1
    .param p1, "tempFilePath"    # Ljava/lang/String;
    .param p2, "excludeId"    # I

    .line 317
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->findRunningTaskIdBySameTempPath(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSoFar(I)J
    .locals 6
    .param p1, "id"    # I

    .line 228
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    .line 229
    .local v0, "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 230
    return-wide v1

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v3

    .line 234
    .local v3, "connectionCount":I
    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 235
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v1

    return-wide v1

    .line 237
    :cond_1
    iget-object v4, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v4, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->findConnectionModel(I)Ljava/util/List;

    move-result-object v4

    .line 238
    .local v4, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v3, :cond_2

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {v4}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getTotalOffset(Ljava/util/List;)J

    move-result-wide v1

    return-wide v1

    .line 239
    :cond_3
    :goto_0
    return-wide v1
.end method

.method public getStatus(I)B
    .locals 2
    .param p1, "id"    # I

    .line 256
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    .line 257
    .local v0, "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    if-nez v0, :cond_0

    .line 258
    const/4 v1, 0x0

    return v1

    .line 261
    :cond_0
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v1

    return v1
.end method

.method public getTotal(I)J
    .locals 3
    .param p1, "id"    # I

    .line 247
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    .line 248
    .local v0, "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    if-nez v0, :cond_0

    .line 249
    const-wide/16 v1, 0x0

    return-wide v1

    .line 252
    :cond_0
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v1

    return-wide v1
.end method

.method public isDownloading(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 195
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->isDownloading(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v0

    return v0
.end method

.method public isDownloading(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Z
    .locals 6
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 274
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 275
    return v0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->isInThreadPool(I)Z

    move-result v1

    .line 282
    .local v1, "isInPool":Z
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v2

    invoke-static {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isOver(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    if-eqz v1, :cond_1

    .line 288
    const/4 v0, 0x1

    .line 288
    .local v0, "isDownloading":Z
    :goto_0
    goto :goto_1

    .line 292
    .end local v0    # "isDownloading":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :cond_2
    if-eqz v1, :cond_3

    .line 299
    const/4 v0, 0x1

    goto :goto_0

    .line 303
    :cond_3
    const-string v2, "%d status is[%s](not finish) & but not in the pool"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 304
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 303
    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    nop

    .line 312
    .restart local v0    # "isDownloading":Z
    :goto_1
    return v0
.end method

.method public isDownloading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 191
    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->isDownloading(I)Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->exactSize()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause(I)Z
    .locals 5
    .param p1, "id"    # I

    .line 199
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "request pause the task %d"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    .line 204
    .local v0, "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    if-nez v0, :cond_1

    .line 205
    return v1

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->cancel(I)V

    .line 209
    return v2
.end method

.method public pauseAll()V
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->getAllExactRunningDownloadIds()Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    .line 219
    const-string v1, "pause all tasks %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 223
    .local v2, "id":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->pause(I)Z

    .line 224
    .end local v2    # "id":Ljava/lang/Integer;
    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method

.method public declared-synchronized setMaxNetworkThreadCount(I)Z
    .locals 1
    .param p1, "count"    # I

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->setMaxNetworkThreadCount(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 269
    .end local p1    # "count":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pathAsDirectory"    # Z
    .param p4, "callbackProgressTimes"    # I
    .param p5, "callbackProgressMinIntervalMillis"    # I
    .param p6, "autoRetryTimes"    # I
    .param p7, "forceReDownload"    # Z
    .param p8, "header"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .param p9, "isWifiRequired"    # Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    monitor-enter p0

    .line 62
    :try_start_0
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "request start the task with url(%s) path(%s) isDirectory(%B)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v12

    aput-object v9, v2, v13

    .line 64
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v11

    .line 63
    invoke-static {v7, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    invoke-static/range {p1 .. p3}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    move v14, v1

    .line 68
    .local v14, "id":I
    iget-object v1, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v14}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v1

    .line 70
    .local v1, "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    const/4 v2, 0x0

    .line 72
    .local v2, "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    if-nez v10, :cond_2

    if-nez v1, :cond_2

    .line 74
    invoke-static/range {p2 .. p2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3, v13}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    .line 76
    .local v3, "dirCaseId":I
    iget-object v4, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v4, v3}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v4

    move-object v1, v4

    .line 77
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    sget-boolean v4, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v4, :cond_1

    .line 79
    const-string v4, "task[%d] find model by dirCaseId[%d]"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v7, v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_1
    iget-object v4, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v4, v3}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->findConnectionModel(I)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    .line 86
    .end local v1    # "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .end local v2    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    .end local v3    # "dirCaseId":I
    .local v6, "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    .local v15, "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    :cond_2
    move-object v15, v1

    move-object v6, v2

    invoke-static {v14, v15, v7, v13}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->inspectAndInflowDownloading(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_3

    .line 88
    const-string v1, "has already started download %d"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v7, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_3
    monitor-exit p0

    return-void

    .line 93
    :cond_4
    if-eqz v15, :cond_5

    :try_start_1
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 94
    invoke-static {v9, v10, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getTargetFilePath(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    .line 95
    .local v5, "targetFilePath":Ljava/lang/String;
    move/from16 v1, p7

    invoke-static {v14, v5, v1, v13}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->inspectAndInflowDownloaded(ILjava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 97
    sget-boolean v2, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v2, :cond_6

    .line 98
    const-string v2, "has already completed downloading %d"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v7, v2, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_6
    monitor-exit p0

    return-void

    .line 103
    :cond_7
    const-wide/16 v2, 0x0

    if-eqz v15, :cond_8

    :try_start_2
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v16

    goto :goto_1

    :cond_8
    move-wide/from16 v16, v2

    :goto_1
    move-wide/from16 v2, v16

    .line 104
    .local v2, "sofar":J
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 105
    :cond_9
    invoke-static {v5}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getTempPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "tempFilePath":Ljava/lang/String;
    :goto_2
    move v1, v14

    move-object/from16 v16, v5

    .line 106
    .end local v5    # "targetFilePath":Ljava/lang/String;
    .local v16, "targetFilePath":Ljava/lang/String;
    move-object/from16 v18, v6

    move-object v6, v7

    .line 106
    .end local v6    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    .local v18, "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    invoke-static/range {v1 .. v6}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->inspectAndInflowConflictPath(IJLjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 108
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_a

    .line 109
    const-string v1, "there is an another task with the same target-file-path %d %s"

    new-array v5, v11, [Ljava/lang/Object;

    .line 110
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    aput-object v16, v5, v13

    .line 109
    invoke-static {v7, v1, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    if-eqz v15, :cond_a

    .line 113
    iget-object v1, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v14}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->remove(I)Z

    .line 114
    iget-object v1, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v1, v14}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :cond_a
    monitor-exit p0

    return-void

    .line 123
    :cond_b
    if-eqz v15, :cond_11

    .line 124
    :try_start_3
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v1

    const/4 v5, -0x2

    if-eq v1, v5, :cond_d

    .line 125
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_c

    goto :goto_3

    .line 153
    :cond_c
    move-object/from16 v1, v18

    goto :goto_6

    .line 128
    :cond_d
    :goto_3
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    if-eq v1, v14, :cond_f

    .line 130
    iget-object v1, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->remove(I)Z

    .line 131
    iget-object v1, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->removeConnections(I)V

    .line 133
    invoke-virtual {v15, v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setId(I)V

    .line 134
    invoke-virtual {v15, v9, v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setPath(Ljava/lang/String;Z)V

    .line 135
    move-object/from16 v1, v18

    if-eqz v1, :cond_e

    .line 136
    .end local v18    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    .local v1, "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liulishuo/filedownloader/model/ConnectionModel;

    .line 137
    .local v6, "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    invoke-virtual {v6, v14}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setId(I)V

    .line 138
    iget-object v11, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v11, v6}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->insertConnectionModel(Lcom/liulishuo/filedownloader/model/ConnectionModel;)V

    .line 139
    .end local v6    # "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    goto :goto_4

    .line 142
    :cond_e
    const/4 v13, 0x1

    goto :goto_5

    .line 144
    .end local v1    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    .restart local v18    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    :cond_f
    move-object/from16 v1, v18

    .line 144
    .end local v18    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    .restart local v1    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 146
    invoke-virtual {v15, v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setUrl(Ljava/lang/String;)V

    .line 147
    const/4 v13, 0x1

    goto :goto_5

    .line 149
    :cond_10
    const/4 v13, 0x0

    .line 149
    .local v13, "needUpdate2DB":Z
    :goto_5
    goto :goto_7

    .line 153
    .end local v1    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    .end local v13    # "needUpdate2DB":Z
    .restart local v18    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    :cond_11
    move-object/from16 v1, v18

    .line 153
    .end local v18    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    .restart local v1    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    :goto_6
    if-nez v15, :cond_12

    .line 154
    new-instance v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-direct {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;-><init>()V

    move-object v15, v5

    .line 156
    :cond_12
    invoke-virtual {v15, v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setUrl(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v15, v9, v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setPath(Ljava/lang/String;Z)V

    .line 159
    invoke-virtual {v15, v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setId(I)V

    .line 160
    const-wide/16 v5, 0x0

    invoke-virtual {v15, v5, v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setSoFar(J)V

    .line 161
    invoke-virtual {v15, v5, v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setTotal(J)V

    .line 162
    invoke-virtual {v15, v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 163
    invoke-virtual {v15, v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setConnectionCount(I)V

    .line 164
    nop

    .line 164
    .restart local v13    # "needUpdate2DB":Z
    :goto_7
    move v5, v13

    .line 168
    .end local v13    # "needUpdate2DB":Z
    .local v5, "needUpdate2DB":Z
    if-eqz v5, :cond_13

    .line 169
    iget-object v6, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v6, v15}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->update(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 172
    :cond_13
    new-instance v6, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    invoke-direct {v6}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;-><init>()V

    .line 174
    .local v6, "builder":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;
    nop

    .line 175
    invoke-virtual {v6, v15}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setModel(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v11

    .line 176
    move-object/from16 v12, p8

    invoke-virtual {v11, v12}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setHeader(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v11

    .line 177
    invoke-virtual {v11, v7}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setThreadPoolMonitor(Lcom/liulishuo/filedownloader/IThreadPoolMonitor;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v11

    .line 178
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setMinIntervalMillis(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v11

    .line 179
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setCallbackProgressMaxCount(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v11

    .line 180
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setForceReDownload(Ljava/lang/Boolean;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v11

    .line 181
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setWifiRequired(Ljava/lang/Boolean;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v11

    .line 182
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setMaxRetryTimes(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v11

    .line 183
    invoke-virtual {v11}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->build()Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    move-result-object v11

    .line 186
    .local v11, "runnable":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    iget-object v13, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v13, v11}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->execute(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 61
    .end local v1    # "dirConnectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    .end local v2    # "sofar":J
    .end local v4    # "tempFilePath":Ljava/lang/String;
    .end local v5    # "needUpdate2DB":Z
    .end local v6    # "builder":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;
    .end local v11    # "runnable":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    .end local v14    # "id":I
    .end local v15    # "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .end local v16    # "targetFilePath":Ljava/lang/String;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "pathAsDirectory":Z
    .end local p4    # "callbackProgressTimes":I
    .end local p5    # "callbackProgressMinIntervalMillis":I
    .end local p6    # "autoRetryTimes":I
    .end local p7    # "forceReDownload":Z
    .end local p8    # "header":Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .end local p9    # "isWifiRequired":Z
    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method
