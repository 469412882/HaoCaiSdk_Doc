.class Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;
.super Ljava/lang/Object;
.source "FileDownloadThreadPool.java"


# instance fields
.field private final THREAD_PREFIX:Ljava/lang/String;

.field private mIgnoreCheckTimes:I

.field private mMaxThreadCount:I

.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private runnablePool:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxNetworkThreadCount"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    .line 39
    const-string v0, "Network"

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->THREAD_PREFIX:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mIgnoreCheckTimes:I

    .line 43
    const-string v0, "Network"

    invoke-static {p1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadExecutors;->newDefaultThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 44
    iput p1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mMaxThreadCount:I

    .line 45
    return-void
.end method

.method private declared-synchronized filterOutNoExist()V
    .locals 6

    monitor-enter p0

    .line 111
    :try_start_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 112
    .local v0, "correctedRunnablePool":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;>;"
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 113
    .local v1, "size":I
    const/4 v2, 0x0

    .line 113
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 114
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 115
    .local v3, "key":I
    iget-object v4, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    .line 116
    .local v4, "runnable":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    .end local v3    # "key":I
    .end local v4    # "runnable":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "i":I
    :cond_1
    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 110
    .end local v0    # "correctedRunnablePool":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;>;"
    .end local v1    # "size":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(I)V
    .locals 6
    .param p1, "id"    # I

    .line 91
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->filterOutNoExist()V

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    .line 94
    .local v0, "r":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->pause()V

    .line 96
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v1

    .line 97
    .local v1, "result":Z
    sget-boolean v2, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v2, :cond_0

    .line 100
    const-string v2, "successful cancel %d %B"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .end local v1    # "result":Z
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 104
    .end local v0    # "r":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    monitor-exit p0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized exactSize()I
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->filterOutNoExist()V

    .line 156
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V
    .locals 3
    .param p1, "launchRunnable"    # Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    .line 75
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->pending()V

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 81
    const/16 v0, 0x258

    .line 82
    .local v0, "CHECK_THRESHOLD_VALUE":I
    iget v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mIgnoreCheckTimes:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->filterOutNoExist()V

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mIgnoreCheckTimes:I

    goto :goto_0

    .line 86
    :cond_0
    iget v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mIgnoreCheckTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mIgnoreCheckTimes:I

    .line 88
    :goto_0
    return-void

    .line 78
    .end local v0    # "CHECK_THRESHOLD_VALUE":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public findRunningTaskIdBySameTempPath(Ljava/lang/String;I)I
    .locals 5
    .param p1, "tempFilePath"    # Ljava/lang/String;
    .param p2, "excludeId"    # I

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 130
    return v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 134
    .local v1, "size":I
    const/4 v2, 0x0

    .line 134
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 135
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    .line 139
    .local v3, "runnable":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    if-nez v3, :cond_1

    .line 142
    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->getId()I

    move-result v4

    if-eq v4, p2, :cond_2

    .line 146
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->getTempFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->getId()I

    move-result v0

    return v0

    .line 134
    .end local v3    # "runnable":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "i":I
    :cond_3
    return v0
.end method

.method public declared-synchronized getAllExactRunningDownloadIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->filterOutNoExist()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 163
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_0
    monitor-exit p0

    return-object v0

    .line 159
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInThreadPool(I)Z
    .locals 2
    .param p1, "downloadId"    # I

    .line 124
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->runnablePool:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    .line 125
    .local v0, "runnable":Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public declared-synchronized setMaxNetworkThreadCount(I)Z
    .locals 7
    .param p1, "count"    # I

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->exactSize()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 49
    const-string v0, "Can\'t change the max network thread count, because the  network thread pool isn\'t in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return v1

    .line 55
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getValidNetworkThreadCount(I)I

    move-result v0

    .line 57
    .local v0, "validCount":I
    sget-boolean v2, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 58
    const-string v2, "change the max network thread count, from %d to %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mMaxThreadCount:I

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 58
    invoke-static {p0, v2, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, "taskQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    const-string v4, "Network"

    invoke-static {v0, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadExecutors;->newDefaultThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    iput-object v4, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 65
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 66
    const-string v4, "recreate the network thread pool and discard %d tasks"

    new-array v5, v3, [Ljava/lang/Object;

    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 66
    invoke-static {p0, v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_2
    iput v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->mMaxThreadCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    return v3

    .line 47
    .end local v0    # "validCount":I
    .end local v2    # "taskQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local p1    # "count":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
