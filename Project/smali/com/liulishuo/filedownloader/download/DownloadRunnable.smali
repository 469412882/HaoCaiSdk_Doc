.class public Lcom/liulishuo/filedownloader/download/DownloadRunnable;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    }
.end annotation


# instance fields
.field private final callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

.field private final connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

.field final connectionIndex:I

.field private final downloadId:I

.field private fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

.field private final isWifiRequired:Z

.field private final path:Ljava/lang/String;

.field private volatile paused:Z


# direct methods
.method private constructor <init>(IILcom/liulishuo/filedownloader/download/ConnectTask;Lcom/liulishuo/filedownloader/download/ProcessCallback;ZLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "connectionIndex"    # I
    .param p3, "connectTask"    # Lcom/liulishuo/filedownloader/download/ConnectTask;
    .param p4, "callback"    # Lcom/liulishuo/filedownloader/download/ProcessCallback;
    .param p5, "isWifiRequired"    # Z
    .param p6, "path"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->downloadId:I

    .line 50
    iput p2, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectionIndex:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->paused:Z

    .line 52
    iput-object p4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    .line 53
    iput-object p6, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->path:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    .line 55
    iput-boolean p5, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->isWifiRequired:Z

    .line 56
    return-void
.end method

.method synthetic constructor <init>(IILcom/liulishuo/filedownloader/download/ConnectTask;Lcom/liulishuo/filedownloader/download/ProcessCallback;ZLjava/lang/String;Lcom/liulishuo/filedownloader/download/DownloadRunnable$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/liulishuo/filedownloader/download/ConnectTask;
    .param p4, "x3"    # Lcom/liulishuo/filedownloader/download/ProcessCallback;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Lcom/liulishuo/filedownloader/download/DownloadRunnable$1;

    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/liulishuo/filedownloader/download/DownloadRunnable;-><init>(IILcom/liulishuo/filedownloader/download/ConnectTask;Lcom/liulishuo/filedownloader/download/ProcessCallback;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public discard()V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->pause()V

    .line 65
    return-void
.end method

.method public pause()V
    .locals 1

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->paused:Z

    .line 60
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->pause()V

    .line 61
    :cond_0
    return-void
.end method

.method public run()V
    .locals 14

    .line 69
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/download/ConnectTask;->getProfile()Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    move-result-object v1

    iget-wide v1, v1, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->currentOffset:J

    .line 73
    .local v1, "beginOffset":J
    const/4 v3, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    .line 77
    .local v0, "isConnected":Z
    .local v4, "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    :goto_0
    const/4 v5, 0x1

    :try_start_0
    iget-boolean v6, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->paused:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 141
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    .line 78
    :cond_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    .line 82
    :try_start_1
    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/download/ConnectTask;->connect()Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    move-result-object v6

    move-object v4, v6

    .line 83
    invoke-interface {v4}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseCode()I

    move-result v6

    .line 85
    .local v6, "code":I
    sget-boolean v7, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-eqz v7, :cond_2

    .line 86
    const-string v7, "the connection[%d] for %d, is connected %s with code[%d]"

    new-array v11, v10, [Ljava/lang/Object;

    iget v12, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectionIndex:I

    .line 87
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    iget v12, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->downloadId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    iget-object v12, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/download/ConnectTask;->getProfile()Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    .line 86
    invoke-static {p0, v7, v11}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_2
    const/16 v7, 0xce

    if-eq v6, v7, :cond_3

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_3

    .line 91
    new-instance v7, Ljava/net/SocketException;

    const-string v11, "Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again."

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    .line 94
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/download/ConnectTask;->getRequestHeader()Ljava/util/Map;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseHeaderFields()Ljava/util/Map;

    move-result-object v13

    aput-object v13, v12, v5

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    iget v9, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->downloadId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v8

    iget v8, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectionIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v10

    .line 92
    invoke-static {v11, v12}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 98
    :cond_3
    const/4 v0, 0x1

    .line 99
    new-instance v7, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    invoke-direct {v7}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;-><init>()V

    .line 101
    .local v7, "builder":Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    iget-boolean v8, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->paused:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_5

    .line 141
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    .line 101
    :cond_4
    return-void

    .line 102
    :cond_5
    :try_start_2
    iget v8, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->downloadId:I

    .line 103
    invoke-virtual {v7, v8}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setDownloadId(I)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v8

    iget v9, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectionIndex:I

    .line 104
    invoke-virtual {v8, v9}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setConnectionIndex(I)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    .line 105
    invoke-virtual {v8, v9}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setCallback(Lcom/liulishuo/filedownloader/download/ProcessCallback;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v8

    .line 106
    invoke-virtual {v8, p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setHost(Lcom/liulishuo/filedownloader/download/DownloadRunnable;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->isWifiRequired:Z

    .line 107
    invoke-virtual {v8, v9}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setWifiRequired(Z)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v8

    .line 108
    invoke-virtual {v8, v4}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setConnection(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    .line 109
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/download/ConnectTask;->getProfile()Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setConnectionProfile(Lcom/liulishuo/filedownloader/download/ConnectionProfile;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->path:Ljava/lang/String;

    .line 110
    invoke-virtual {v8, v9}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v8

    .line 111
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->build()Lcom/liulishuo/filedownloader/download/FetchDataTask;

    move-result-object v8

    iput-object v8, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    .line 114
    iget-object v8, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->run()V

    .line 115
    iget-boolean v8, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->paused:Z

    if-eqz v8, :cond_6

    .line 116
    iget-object v8, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->pause()V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :cond_6
    if-eqz v4, :cond_b

    :goto_1
    invoke-interface {v4}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    goto :goto_3

    .line 141
    .end local v6    # "code":I
    .end local v7    # "builder":Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v7, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-interface {v7, v6}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->isRetry(Ljava/lang/Exception;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 121
    if-nez v0, :cond_7

    .line 122
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->onRetry(Ljava/lang/Exception;J)V

    goto :goto_2

    .line 123
    :cond_7
    iget-object v7, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    if-eqz v7, :cond_9

    .line 125
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    iget-wide v7, v5, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    const/4 v5, 0x0

    sub-long v9, v7, v1

    .line 126
    .local v9, "invalidIncreaseBytes":J
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-interface {v5, v6, v9, v10}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->onRetry(Ljava/lang/Exception;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    .end local v9    # "invalidIncreaseBytes":J
    nop

    .line 141
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    .line 143
    :cond_8
    goto/16 :goto_0

    .line 129
    .restart local v6    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_4
    const-string v7, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v3

    invoke-static {p0, v7, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-interface {v3, v6}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->onError(Ljava/lang/Exception;)V

    .line 141
    if-eqz v4, :cond_b

    goto :goto_1

    .line 136
    :cond_a
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-interface {v3, v6}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->onError(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    if-eqz v4, :cond_b

    goto :goto_1

    .line 145
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_3
    return-void

    .line 141
    :goto_4
    if-eqz v4, :cond_c

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    :cond_c
    throw v3
.end method
