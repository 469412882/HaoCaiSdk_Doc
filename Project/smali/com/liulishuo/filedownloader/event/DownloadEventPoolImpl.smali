.class public Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;
.super Ljava/lang/Object;
.source "DownloadEventPoolImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/event/IDownloadEventPool;


# instance fields
.field private final listenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/liulishuo/filedownloader/event/IDownloadListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threadPool:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "EventPool"

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadExecutors;->newDefaultThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->threadPool:Ljava/util/concurrent/Executor;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->listenersMap:Ljava/util/HashMap;

    return-void
.end method

.method private trigger(Ljava/util/LinkedList;Lcom/liulishuo/filedownloader/event/IDownloadEvent;)V
    .locals 5
    .param p2, "event"    # Lcom/liulishuo/filedownloader/event/IDownloadEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/liulishuo/filedownloader/event/IDownloadListener;",
            ">;",
            "Lcom/liulishuo/filedownloader/event/IDownloadEvent;",
            ")V"
        }
    .end annotation

    .line 128
    .local p1, "listeners":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/liulishuo/filedownloader/event/IDownloadListener;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "lists":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 130
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 130
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_1

    .line 132
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/liulishuo/filedownloader/event/IDownloadListener;

    invoke-virtual {v4, p2}, Lcom/liulishuo/filedownloader/event/IDownloadListener;->callback(Lcom/liulishuo/filedownloader/event/IDownloadEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    goto :goto_2

    .line 129
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_2
    :goto_2
    iget-object v1, p2, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p2, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 140
    :cond_3
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lcom/liulishuo/filedownloader/event/IDownloadListener;)Z
    .locals 4
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/liulishuo/filedownloader/event/IDownloadListener;

    .line 39
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "setListener %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_0
    const-string v0, "EventPoolImpl.add"

    invoke-static {v0, p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->listenersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 46
    .local v0, "container":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/liulishuo/filedownloader/event/IDownloadListener;>;"
    if-nez v0, :cond_2

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->listenersMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    move-object v0, v2

    .line 49
    if-nez v0, :cond_1

    .line 50
    iget-object v2, p0, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->listenersMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 56
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 57
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 58
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public asyncPublishInNewThread(Lcom/liulishuo/filedownloader/event/IDownloadEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/liulishuo/filedownloader/event/IDownloadEvent;

    .line 113
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "asyncPublishInNewThread %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_0
    const-string v0, "EventPoolImpl.asyncPublish event"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->threadPool:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl$1;-><init>(Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;Lcom/liulishuo/filedownloader/event/IDownloadEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public publish(Lcom/liulishuo/filedownloader/event/IDownloadEvent;)Z
    .locals 6
    .param p1, "event"    # Lcom/liulishuo/filedownloader/event/IDownloadEvent;

    .line 89
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "publish %s"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_0
    const-string v0, "EventPoolImpl.publish"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->getId()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "eventId":Ljava/lang/String;
    iget-object v3, p0, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->listenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 95
    .local v3, "listeners":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/liulishuo/filedownloader/event/IDownloadListener;>;"
    if-nez v3, :cond_3

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    monitor-enter v4

    .line 97
    :try_start_0
    iget-object v5, p0, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->listenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    move-object v3, v5

    .line 98
    if-nez v3, :cond_2

    .line 99
    sget-boolean v5, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v5, :cond_1

    .line 100
    const-string v5, "No listener for this event %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p0, v5, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_1
    monitor-exit v4

    return v1

    .line 104
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 107
    :cond_3
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->trigger(Ljava/util/LinkedList;Lcom/liulishuo/filedownloader/event/IDownloadEvent;)V

    .line 108
    return v2
.end method

.method public removeListener(Ljava/lang/String;Lcom/liulishuo/filedownloader/event/IDownloadListener;)Z
    .locals 4
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/liulishuo/filedownloader/event/IDownloadListener;

    .line 63
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "removeListener %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->listenersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 68
    .local v0, "container":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/liulishuo/filedownloader/event/IDownloadListener;>;"
    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    .line 70
    :try_start_0
    iget-object v3, p0, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->listenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    move-object v0, v3

    .line 71
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    if-nez p2, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    .line 79
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 80
    .local v1, "succeed":Z
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 81
    iget-object v3, p0, Lcom/liulishuo/filedownloader/event/DownloadEventPoolImpl;->listenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_3
    monitor-exit v2

    return v1

    .line 84
    .end local v1    # "succeed":Z
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 75
    :cond_4
    :goto_1
    return v1
.end method
