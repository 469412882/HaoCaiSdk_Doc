.class public Lcom/liulishuo/filedownloader/FileDownloadList;
.super Ljava/lang/Object;
.source "FileDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/FileDownloadList$HolderClass;
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/FileDownloadList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liulishuo/filedownloader/FileDownloadList$1;

    .line 31
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadList;-><init>()V

    return-void
.end method

.method public static getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;
    .locals 1

    .line 38
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList$HolderClass;->access$100()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method add(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V
    .locals 1
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 216
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->setAttachKeyDefault()V

    .line 223
    :cond_0
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getMessageHandler()Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;->getMessenger()Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->notifyBegin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->addUnchecked(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V

    .line 226
    :cond_1
    return-void
.end method

.method addUnchecked(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V
    .locals 5
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 234
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->isMarkedAdded2List()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 240
    const-string v1, "already has %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0, v1, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :cond_1
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->markAdded2List()V

    .line 243
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_2

    .line 245
    const-string v1, "add list in all %s %d %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 246
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v2

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getStatus()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 245
    invoke-static {p0, v1, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_2
    :goto_0
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method assembleTasksToStart(ILcom/liulishuo/filedownloader/FileDownloadListener;)Ljava/util/List;
    .locals 5
    .param p1, "attachKey"    # I
    .param p2, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/liulishuo/filedownloader/FileDownloadListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "targetList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 139
    .local v3, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v4

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getListener()Lcom/liulishuo/filedownloader/FileDownloadListener;

    move-result-object v4

    if-ne v4, p2, :cond_0

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v4

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isAttached()Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    invoke-interface {v3, p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->setAttachKeyByQueue(I)V

    .line 141
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v3    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    monitor-exit v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method copy(Lcom/liulishuo/filedownloader/FileDownloadListener;)Ljava/util/List;
    .locals 5
    .param p1, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/filedownloader/FileDownloadListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "targetList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 125
    .local v3, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v3, p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->is(Lcom/liulishuo/filedownloader/FileDownloadListener;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v3    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    monitor-exit v1

    return-object v0

    .line 130
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method copy()[Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 152
    .local v1, "copy":[Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    monitor-exit v0

    return-object v2

    .line 153
    .end local v1    # "copy":[Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method count(I)I
    .locals 5
    .param p1, "id"    # I

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "size":I
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 63
    .local v3, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v3, p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->is(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 66
    .end local v3    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :cond_0
    goto :goto_0

    .line 67
    :cond_1
    monitor-exit v1

    .line 68
    return v0

    .line 67
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method divertAndIgnoreDuplicate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "destination":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 163
    .local v2, "iRunningTask":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v2    # "iRunningTask":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :cond_0
    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(I)Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    .locals 4
    .param p1, "id"    # I

    .line 72
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 75
    .local v2, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v2, p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->is(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    monitor-exit v0

    return-object v2

    .line 78
    .end local v2    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :cond_0
    goto :goto_0

    .line 79
    :cond_1
    monitor-exit v0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDownloadingList(I)Ljava/util/List;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 106
    .local v3, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v3, p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->is(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->isOver()Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v3    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    monitor-exit v1

    .line 113
    return-object v0

    .line 111
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getReceiveServiceTaskList(I)Ljava/util/List;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 87
    .local v3, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v3, p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->is(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->isOver()Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v4

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getStatus()B

    move-result v4

    .line 90
    .local v4, "status":B
    if-eqz v4, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v3    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    .end local v4    # "status":B
    :cond_0
    goto :goto_0

    .line 97
    :cond_1
    monitor-exit v1

    .line 99
    return-object v0

    .line 97
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method isEmpty()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isNotContains(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)Z
    .locals 1
    .param p1, "download"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 117
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

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

.method public remove(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 8
    .param p1, "willRemoveDownload"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    .param p2, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 176
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v0

    .line 178
    .local v0, "removeByStatus":B
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 180
    .local v2, "succeed":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const-string v1, "remove %s left %d %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    .line 184
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 183
    invoke-static {p0, v1, v6}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_0
    if-eqz v2, :cond_1

    .line 189
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getMessageHandler()Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;

    move-result-object v1

    .line 190
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/ITaskHunter$IMessageHandler;->getMessenger()Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    move-result-object v1

    .line 192
    .local v1, "messenger":Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    packed-switch v0, :pswitch_data_0

    .line 192
    .end local v1    # "messenger":Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    goto :goto_0

    .line 197
    .restart local v1    # "messenger":Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    :pswitch_0
    invoke-interface {v1, p2}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->notifyError(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 198
    goto :goto_0

    .line 200
    :pswitch_1
    invoke-interface {v1, p2}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->notifyPaused(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 201
    goto :goto_0

    .line 203
    :pswitch_2
    invoke-static {p2}, Lcom/liulishuo/filedownloader/message/MessageSnapshotTaker;->takeBlockCompleted(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->notifyBlockComplete(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 203
    .end local v1    # "messenger":Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    goto :goto_0

    .line 194
    .restart local v1    # "messenger":Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    :pswitch_3
    invoke-interface {v1, p2}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->notifyWarn(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 195
    nop

    .line 207
    .end local v1    # "messenger":Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    :goto_0
    goto :goto_1

    .line 208
    :cond_1
    const-string v1, "remove error, not exist: %s %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 209
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 208
    invoke-static {p0, v1, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :goto_1
    return v2

    .line 180
    .end local v2    # "succeed":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method size()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
