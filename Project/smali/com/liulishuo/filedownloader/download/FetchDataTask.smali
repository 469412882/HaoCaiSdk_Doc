.class public Lcom/liulishuo/filedownloader/download/FetchDataTask;
.super Ljava/lang/Object;
.source "FetchDataTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private final callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

.field private final connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

.field private final connectionIndex:I

.field private final contentLength:J

.field currentOffset:J

.field private final database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

.field private final downloadId:I

.field private final endOffset:J

.field private final hostRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;

.field private final isWifiRequired:Z

.field private volatile lastSyncBytes:J

.field private volatile lastSyncTimestamp:J

.field private outputStream:Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;

.field private final path:Ljava/lang/String;

.field private volatile paused:Z

.field private final startOffset:J


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Lcom/liulishuo/filedownloader/download/ConnectionProfile;Lcom/liulishuo/filedownloader/download/DownloadRunnable;IIZLcom/liulishuo/filedownloader/download/ProcessCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "connection"    # Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .param p2, "connectionProfile"    # Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    .param p3, "host"    # Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    .param p4, "id"    # I
    .param p5, "connectionIndex"    # I
    .param p6, "isWifiRequired"    # Z
    .param p7, "callback"    # Lcom/liulishuo/filedownloader/download/ProcessCallback;
    .param p8, "path"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncBytes:J

    .line 194
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncTimestamp:J

    .line 65
    iput-object p7, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    .line 66
    iput-object p8, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->path:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    .line 68
    iput-boolean p6, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->isWifiRequired:Z

    .line 69
    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->hostRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    .line 70
    iput p5, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    .line 71
    iput p4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->downloadId:I

    .line 72
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDatabaseInstance()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    .line 74
    iget-wide v0, p2, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->startOffset:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->startOffset:J

    .line 75
    iget-wide v0, p2, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->endOffset:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    .line 76
    iget-wide v0, p2, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->currentOffset:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    .line 77
    iget-wide v0, p2, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->contentLength:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->contentLength:J

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Lcom/liulishuo/filedownloader/download/ConnectionProfile;Lcom/liulishuo/filedownloader/download/DownloadRunnable;IIZLcom/liulishuo/filedownloader/download/ProcessCallback;Ljava/lang/String;Lcom/liulishuo/filedownloader/download/FetchDataTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .param p2, "x1"    # Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    .param p3, "x2"    # Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lcom/liulishuo/filedownloader/download/ProcessCallback;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Lcom/liulishuo/filedownloader/download/FetchDataTask$1;

    .line 37
    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/download/FetchDataTask;-><init>(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Lcom/liulishuo/filedownloader/download/ConnectionProfile;Lcom/liulishuo/filedownloader/download/DownloadRunnable;IIZLcom/liulishuo/filedownloader/download/ProcessCallback;Ljava/lang/String;)V

    return-void
.end method

.method private checkAndSync()V
    .locals 8

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 198
    .local v0, "now":J
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncBytes:J

    sub-long v6, v2, v4

    .line 199
    .local v6, "bytesDelta":J
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncTimestamp:J

    sub-long v4, v0, v2

    .line 201
    .local v4, "timestampDelta":J
    invoke-static {v6, v7, v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isNeedSync(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->sync()V

    .line 204
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncBytes:J

    .line 205
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncTimestamp:J

    .line 207
    :cond_0
    return-void
.end method

.method private sync()V
    .locals 12

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 214
    .local v0, "startTimestamp":J
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->outputStream:Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->flushAndSync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/4 v4, 0x1

    .line 223
    .local v4, "bufferPersistToDevice":Z
    goto :goto_0

    .line 216
    .end local v4    # "bufferPersistToDevice":Z
    :catch_0
    move-exception v4

    .line 217
    .local v4, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 218
    .local v5, "bufferPersistToDevice":Z
    sget-boolean v6, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v6, :cond_0

    .line 219
    const-string v6, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to file failed, we just not flushAndSync process to database too %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {p0, v6, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    move v4, v5

    .line 225
    .end local v5    # "bufferPersistToDevice":Z
    .local v4, "bufferPersistToDevice":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 226
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->hostRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 227
    .local v5, "isBelongMultiConnection":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 229
    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    iget v7, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->downloadId:I

    iget v8, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    iget-wide v9, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->updateConnectionModel(IIJ)V

    goto :goto_2

    .line 232
    :cond_2
    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-interface {v6}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->syncProgressFromCache()V

    .line 235
    :goto_2
    sget-boolean v6, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v6, :cond_3

    .line 236
    const-string v6, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->downloadId:I

    .line 237
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    const/4 v2, 0x2

    iget-wide v8, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    .line 236
    invoke-static {p0, v6, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .end local v5    # "isBelongMultiConnection":Z
    :cond_3
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->paused:Z

    .line 60
    return-void
.end method

.method public run()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;
        }
    .end annotation

    .line 83
    move-object/from16 v1, p0

    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->paused:Z

    if-eqz v2, :cond_0

    return-void

    .line 85
    :cond_0
    iget v2, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->findContentLength(ILcom/liulishuo/filedownloader/connection/FileDownloadConnection;)J

    move-result-wide v2

    .line 86
    .local v2, "contentLength":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_1

    .line 87
    new-instance v4, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v5, "there isn\'t any content need to download on %d-%d with the content-length is 0"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->downloadId:I

    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget v7, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :cond_1
    iget-wide v10, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->contentLength:J

    cmp-long v6, v10, v4

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-lez v6, :cond_3

    iget-wide v13, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->contentLength:J

    cmp-long v6, v2, v13

    if-eqz v6, :cond_3

    .line 93
    iget-wide v13, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    cmp-long v6, v13, v4

    if-nez v6, :cond_2

    .line 94
    const-string v4, "range[%d-)"

    new-array v5, v8, [Ljava/lang/Object;

    iget-wide v13, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "range":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v4    # "range":Ljava/lang/String;
    :cond_2
    const-string v4, "range[%d-%d)"

    new-array v5, v7, [Ljava/lang/Object;

    iget-wide v13, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    iget-wide v13, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .restart local v4    # "range":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v6, "require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem."

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v9

    iget-wide v13, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->contentLength:J

    .line 102
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v7

    iget v7, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->downloadId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v12

    iget v7, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v11

    .line 99
    invoke-static {v6, v10}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 105
    .end local v4    # "range":Ljava/lang/String;
    :cond_3
    iget-wide v4, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    .line 107
    .local v4, "fetchBeginOffset":J
    const/4 v6, 0x0

    .line 108
    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 111
    .local v13, "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->isSupportSeek()Z

    move-result v14

    .line 112
    .local v14, "isSupportSeek":Z
    iget-object v15, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->hostRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v15, :cond_4

    if-nez v14, :cond_4

    .line 113
    :try_start_1
    new-instance v7, Ljava/lang/IllegalAccessException;

    const-string v8, "can\'t using multi-download when the output stream can\'t support seek"

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local v14    # "isSupportSeek":Z
    :catchall_0
    move-exception v0

    move-wide/from16 v20, v2

    move-object v2, v0

    goto/16 :goto_11

    .line 116
    .restart local v14    # "isSupportSeek":Z
    :cond_4
    :try_start_2
    iget-object v15, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->path:Ljava/lang/String;

    invoke-static {v15}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->createOutputStream(Ljava/lang/String;)Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object v13, v15

    :try_start_3
    iput-object v15, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->outputStream:Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 117
    if-eqz v14, :cond_5

    .line 118
    :try_start_4
    iget-wide v7, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-interface {v13, v7, v8}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->seek(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    :cond_5
    :try_start_5
    sget-boolean v7, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v7, :cond_6

    .line 122
    :try_start_6
    const-string v7, "start fetch(%d): range [%d, %d), seek to[%d]"

    new-array v8, v11, [Ljava/lang/Object;

    iget v15, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    .line 123
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v8, v9

    iget-wide v10, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->startOffset:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v8, v11

    iget-wide v10, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v8, v11

    iget-wide v10, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v12

    .line 122
    invoke-static {v1, v7, v8}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 126
    :cond_6
    :try_start_7
    iget-object v7, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    invoke-interface {v7}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v6, v7

    .line 128
    const/16 v7, 0x1000

    new-array v7, v7, [B

    .line 130
    .local v7, "buff":[B
    iget-boolean v8, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->paused:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v8, :cond_b

    .line 158
    if-eqz v6, :cond_7

    .line 160
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 163
    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 162
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    .end local v8    # "e":Ljava/io/IOException;
    :cond_7
    :goto_1
    if-eqz v13, :cond_9

    .line 167
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->sync()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 169
    :catchall_1
    move-exception v0

    move-object v8, v0

    if-eqz v13, :cond_8

    .line 171
    :try_start_a
    invoke-interface {v13}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 174
    goto :goto_2

    .line 172
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 173
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    .end local v9    # "e":Ljava/io/IOException;
    :cond_8
    :goto_2
    throw v8

    .line 169
    :cond_9
    :goto_3
    if-eqz v13, :cond_a

    .line 171
    :try_start_b
    invoke-interface {v13}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 174
    :goto_4
    goto :goto_5

    .line 172
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 173
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 130
    :cond_a
    :goto_5
    return-void

    .line 133
    :cond_b
    :goto_6
    :try_start_c
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 134
    .local v8, "byteCount":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_11

    .line 135
    nop

    .line 158
    .end local v7    # "buff":[B
    .end local v8    # "byteCount":I
    .end local v14    # "isSupportSeek":Z
    if-eqz v6, :cond_c

    .line 160
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 163
    goto :goto_7

    .line 161
    :catch_3
    move-exception v0

    move-object v7, v0

    .line 162
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    .end local v7    # "e":Ljava/io/IOException;
    :cond_c
    :goto_7
    if-eqz v13, :cond_e

    .line 167
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->sync()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_9

    .line 169
    :catchall_2
    move-exception v0

    move-object v7, v0

    if-eqz v13, :cond_d

    .line 171
    :try_start_f
    invoke-interface {v13}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 174
    goto :goto_8

    .line 172
    :catch_4
    move-exception v0

    move-object v8, v0

    .line 173
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    .end local v8    # "e":Ljava/io/IOException;
    :cond_d
    :goto_8
    throw v7

    .line 169
    :cond_e
    :goto_9
    if-eqz v13, :cond_f

    .line 171
    :try_start_10
    invoke-interface {v13}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 174
    :goto_a
    goto :goto_b

    .line 172
    :catch_5
    move-exception v0

    move-object v7, v0

    .line 173
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    .end local v7    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 177
    :cond_f
    :goto_b
    nop

    .line 179
    iget-wide v7, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    sub-long v10, v7, v4

    .line 180
    .local v10, "fetchedLength":J
    const-wide/16 v7, -0x1

    cmp-long v14, v2, v7

    if-eqz v14, :cond_10

    cmp-long v7, v2, v10

    if-eqz v7, :cond_10

    .line 181
    new-instance v7, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v8, "fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    .line 184
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v15, 0x1

    aput-object v9, v14, v15

    move-object/from16 v18, v13

    iget-wide v12, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->startOffset:J

    .line 185
    .end local v13    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .local v18, "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v14, v12

    iget-wide v12, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v13, 0x3

    aput-object v9, v14, v13

    iget-wide v12, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v16, 0x4

    aput-object v9, v14, v16

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v17, 0x5

    aput-object v9, v14, v17

    .line 182
    invoke-static {v8, v14}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 189
    .end local v18    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v13    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :cond_10
    move-object/from16 v18, v13

    .line 189
    .end local v13    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v18    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    iget-object v12, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    iget-object v13, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->hostRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    iget-wide v14, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->startOffset:J

    iget-wide v7, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    move-wide/from16 v16, v7

    invoke-interface/range {v12 .. v17}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->onCompleted(Lcom/liulishuo/filedownloader/download/DownloadRunnable;JJ)V

    .line 190
    return-void

    .line 138
    .end local v10    # "fetchedLength":J
    .end local v18    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .local v7, "buff":[B
    .local v8, "byteCount":I
    .restart local v13    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v14    # "isSupportSeek":Z
    :cond_11
    move-object/from16 v18, v13

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v15, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x5

    .line 138
    .end local v13    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v18    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    move-object/from16 v10, v18

    :try_start_11
    invoke-interface {v10, v7, v9, v8}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->write([BII)V

    .line 140
    .end local v18    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .local v10, "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    iget-wide v12, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v19, v10

    int-to-long v9, v8

    .line 140
    .end local v10    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .local v19, "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    move-wide/from16 v20, v2

    add-long v2, v12, v9

    .line 140
    .end local v2    # "contentLength":J
    .local v20, "contentLength":J
    :try_start_12
    iput-wide v2, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    .line 143
    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    int-to-long v9, v8

    invoke-interface {v2, v9, v10}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->onProgress(J)V

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->checkAndSync()V

    .line 148
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->paused:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-eqz v2, :cond_16

    .line 158
    if-eqz v6, :cond_12

    .line 160
    :try_start_13
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    .line 163
    goto :goto_c

    .line 161
    :catch_6
    move-exception v0

    move-object v2, v0

    .line 162
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    .end local v2    # "e":Ljava/io/IOException;
    :cond_12
    :goto_c
    if-eqz v19, :cond_14

    .line 167
    :try_start_14
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->sync()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 169
    move-object/from16 v3, v19

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz v19, :cond_13

    .line 171
    move-object/from16 v3, v19

    :try_start_15
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    .line 174
    .end local v19    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .local v3, "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    goto :goto_d

    .line 172
    :catch_7
    move-exception v0

    move-object v9, v0

    .line 173
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    .end local v9    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 174
    .end local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v19    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :cond_13
    move-object/from16 v3, v19

    .line 174
    .end local v19    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :goto_d
    throw v2

    .line 169
    .end local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v19    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :cond_14
    move-object/from16 v3, v19

    .line 169
    .end local v19    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :goto_e
    if-eqz v3, :cond_15

    .line 171
    :try_start_16
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    .line 174
    :goto_f
    goto :goto_10

    .line 172
    :catch_8
    move-exception v0

    move-object v2, v0

    .line 173
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 148
    :cond_15
    :goto_10
    return-void

    .line 150
    .end local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v19    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :cond_16
    move-object/from16 v3, v19

    .line 150
    .end local v19    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :try_start_17
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/download/FetchDataTask;->isWifiRequired:Z

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isNetworkNotOnWifiType()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 151
    new-instance v2, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v2}, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 154
    .end local v8    # "byteCount":I
    :cond_17
    nop

    .line 133
    move-object v13, v3

    move-wide/from16 v2, v20

    const/4 v9, 0x0

    const/4 v12, 0x3

    goto/16 :goto_6

    .line 158
    .end local v7    # "buff":[B
    .end local v14    # "isSupportSeek":Z
    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v13, v3

    goto :goto_11

    .line 158
    .end local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v19    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :catchall_5
    move-exception v0

    move-object/from16 v3, v19

    move-object v2, v0

    move-object v13, v3

    .line 158
    .end local v19    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    goto :goto_11

    .line 158
    .end local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .end local v20    # "contentLength":J
    .local v2, "contentLength":J
    .restart local v10    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :catchall_6
    move-exception v0

    move-wide/from16 v20, v2

    move-object v3, v10

    move-object v2, v0

    move-object v13, v3

    .line 158
    .end local v2    # "contentLength":J
    .end local v10    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v20    # "contentLength":J
    goto :goto_11

    .line 158
    .end local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .end local v20    # "contentLength":J
    .restart local v2    # "contentLength":J
    .restart local v13    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :catchall_7
    move-exception v0

    move-wide/from16 v20, v2

    move-object v3, v13

    move-object v2, v0

    .line 158
    .end local v2    # "contentLength":J
    .end local v13    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .restart local v20    # "contentLength":J
    goto :goto_11

    .line 158
    .end local v3    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .end local v20    # "contentLength":J
    .restart local v2    # "contentLength":J
    .restart local v13    # "outputStream":Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    :catchall_8
    move-exception v0

    move-wide/from16 v20, v2

    move-object v2, v0

    .line 158
    .end local v2    # "contentLength":J
    .restart local v20    # "contentLength":J
    :goto_11
    if-eqz v6, :cond_18

    .line 160
    :try_start_18
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9

    .line 163
    goto :goto_12

    .line 161
    :catch_9
    move-exception v0

    move-object v3, v0

    .line 162
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    .end local v3    # "e":Ljava/io/IOException;
    :cond_18
    :goto_12
    if-eqz v13, :cond_1a

    .line 167
    :try_start_19
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->sync()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    goto :goto_14

    .line 169
    :catchall_9
    move-exception v0

    move-object v2, v0

    if-eqz v13, :cond_19

    .line 171
    :try_start_1a
    invoke-interface {v13}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a

    .line 174
    goto :goto_13

    .line 172
    :catch_a
    move-exception v0

    move-object v3, v0

    .line 173
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    .end local v3    # "e":Ljava/io/IOException;
    :cond_19
    :goto_13
    throw v2

    .line 169
    :cond_1a
    :goto_14
    if-eqz v13, :cond_1b

    .line 171
    :try_start_1b
    invoke-interface {v13}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_b

    .line 174
    :goto_15
    goto :goto_16

    .line 172
    :catch_b
    move-exception v0

    move-object v3, v0

    .line 173
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_15

    .line 174
    :cond_1b
    :goto_16
    throw v2
.end method
