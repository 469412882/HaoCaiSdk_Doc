.class public Lcom/liulishuo/filedownloader/MessageSnapshotGate;
.super Ljava/lang/Object;
.source "MessageSnapshotGate.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow$MessageReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private transmitMessage(Ljava/util/List;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 4
    .param p2, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;",
            ">;",
            "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
            ")Z"
        }
    .end annotation

    .line 35
    .local p1, "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_1

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 37
    .local v2, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getMessageHandler()Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;->updateMoreLikelyCompleted(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    return v1

    .line 40
    .end local v2    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :cond_0
    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 44
    .restart local v2    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getMessageHandler()Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;->updateKeepFlow(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    return v1

    .line 47
    .end local v2    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :cond_2
    goto :goto_1

    .line 49
    :cond_3
    const/4 v0, -0x4

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v2

    if-ne v0, v2, :cond_5

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 51
    .restart local v2    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getMessageHandler()Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;->updateSameFilePathTaskRunning(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 52
    return v1

    .line 54
    .end local v2    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :cond_4
    goto :goto_2

    .line 58
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 60
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getMessageHandler()Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;->updateKeepAhead(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move-result v0

    return v0

    .line 63
    :cond_6
    return v2
.end method


# virtual methods
.method public receive(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 9
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 69
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "updateSyncLock":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 71
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/FileDownloadList;->getReceiveServiceTaskList(I)Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_3

    .line 75
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v3

    .line 77
    .local v3, "topOriginTask":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    sget-boolean v6, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v6, :cond_0

    .line 78
    const-string v6, "~~~callback %s old[%s] new[%s] %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 79
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getStatus()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    .line 80
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 78
    invoke-static {p0, v6, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/liulishuo/filedownloader/MessageSnapshotGate;->transmitMessage(Ljava/util/List;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The event isn\'t consumed, id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " task-count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, "log":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 88
    .local v7, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    const-string v8, " | "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v8

    invoke-interface {v8}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getStatus()B

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .end local v7    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v6, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .end local v3    # "topOriginTask":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .end local v4    # "log":Ljava/lang/StringBuilder;
    :cond_2
    goto :goto_1

    .line 95
    :cond_3
    const-string v3, "Receive the event %d, but there isn\'t any running task in the upper layer"

    new-array v4, v4, [Ljava/lang/Object;

    .line 96
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    .line 95
    invoke-static {p0, v3, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .end local v2    # "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    :goto_1
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
