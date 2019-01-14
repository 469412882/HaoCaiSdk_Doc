.class public Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;
.super Lcom/liulishuo/filedownloader/FileDownloadConnectListener;
.source "LostServiceConnectedHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/ILostServiceConnectedHandler;


# instance fields
.field private final mWaitingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadConnectListener;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public connected()V
    .locals 8

    .line 38
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->getQueuesHandler()Lcom/liulishuo/filedownloader/IQueuesHandler;

    move-result-object v0

    .line 41
    .local v0, "queueHandler":Lcom/liulishuo/filedownloader/IQueuesHandler;
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "The downloader service is connected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 48
    .local v2, "copyWaitingList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    iget-object v3, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    .line 51
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/IQueuesHandler;->serialQueueSize()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v3, "wakeupSerialQueueKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 54
    .local v5, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v5}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getAttachKey()I

    move-result v6

    .line 55
    .local v6, "attachKey":I
    invoke-interface {v0, v6}, Lcom/liulishuo/filedownloader/IQueuesHandler;->contain(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    invoke-interface {v5}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v7

    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->asInQueueTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$InQueueTask;

    move-result-object v7

    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask$InQueueTask;->enqueue()I

    .line 58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 59
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {v5}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->startTaskByRescue()V

    .line 66
    .end local v5    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    .end local v6    # "attachKey":I
    goto :goto_0

    .line 68
    :cond_3
    invoke-interface {v0, v3}, Lcom/liulishuo/filedownloader/IQueuesHandler;->unFreezeSerialQueues(Ljava/util/List;)V

    .line 69
    .end local v3    # "wakeupSerialQueueKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v1

    move-object v1, v2

    .line 70
    .end local v2    # "copyWaitingList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    .local v1, "copyWaitingList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    return-void

    .line 69
    .end local v1    # "copyWaitingList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public disconnected()V
    .locals 5

    .line 75
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->getConnectStatus()Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->lost:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 77
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->getQueuesHandler()Lcom/liulishuo/filedownloader/IQueuesHandler;

    move-result-object v0

    .line 79
    .local v0, "queueHandler":Lcom/liulishuo/filedownloader/IQueuesHandler;
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "lost the connection to the file download service, and current active task size is %d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 82
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/FileDownloadList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 80
    invoke-static {p0, v1, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/FileDownloadList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 87
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/FileDownloadList;->divertAndIgnoreDuplicate(Ljava/util/List;)V

    .line 88
    iget-object v2, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 89
    .local v3, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->free()V

    .line 90
    .end local v3    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/IQueuesHandler;->freezeAllSerialQueues()V

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/FileDownloader;->bindService()V

    .line 94
    .end local v0    # "queueHandler":Lcom/liulishuo/filedownloader/IQueuesHandler;
    goto :goto_1

    .line 93
    .restart local v0    # "queueHandler":Lcom/liulishuo/filedownloader/IQueuesHandler;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 96
    .end local v0    # "queueHandler":Lcom/liulishuo/filedownloader/IQueuesHandler;
    :cond_2
    :goto_1
    goto :goto_2

    .line 98
    :cond_3
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 99
    const-string v0, "file download service has be unbound but the size of active tasks are not empty %d "

    new-array v1, v3, [Ljava/lang/Object;

    .line 101
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/FileDownloadList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 99
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_4
    :goto_2
    return-void
.end method

.method public dispatchTaskStart(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)Z
    .locals 6
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 122
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    sget-boolean v2, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "Waiting for connecting with the downloader service... %d"

    new-array v4, v3, [Ljava/lang/Object;

    .line 127
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v5

    invoke-interface {v5}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 126
    invoke-static {p0, v2, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v1

    .line 130
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->bindStartByContext(Landroid/content/Context;)V

    .line 131
    iget-object v1, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->free()V

    .line 133
    iget-object v1, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    monitor-exit v0

    return v3

    .line 137
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 140
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->taskWorkFine(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V

    .line 142
    return v1
.end method

.method public isInWaitingList(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)Z
    .locals 1
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 108
    iget-object v0, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public taskWorkFine(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V
    .locals 2
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 113
    iget-object v0, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/LostServiceConnectedHandler;->mWaitingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 118
    :cond_0
    :goto_0
    return-void
.end method
