.class Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LaunchTaskPool"
.end annotation


# instance fields
.field private mPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->init()V

    .line 79
    return-void
.end method

.method private init()V
    .locals 3

    .line 134
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 135
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v1, "LauncherTask"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadExecutors;->newDefaultThreadPool(ILjava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 136
    return-void
.end method


# virtual methods
.method public asyncExecute(Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;)V
    .locals 2
    .param p1, "taskStarter"    # Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;

    .line 82
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;-><init>(Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public expire(Lcom/liulishuo/filedownloader/FileDownloadListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 94
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 95
    const-string v1, "want to expire by listener, but the listener provided is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-void

    .line 100
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "needPauseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 102
    .local v3, "runnable":Ljava/lang/Runnable;
    move-object v4, v3

    check-cast v4, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;

    .line 103
    .local v4, "launchTaskRunnable":Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;
    invoke-virtual {v4, p1}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->isSameListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->expire()V

    .line 105
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v4    # "launchTaskRunnable":Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;
    :cond_1
    goto :goto_0

    .line 109
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    return-void

    .line 113
    :cond_3
    sget-boolean v2, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v2, :cond_4

    .line 114
    const-string v2, "expire %d tasks with listener[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 119
    .local v2, "runnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 120
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_1

    .line 121
    :cond_5
    return-void
.end method

.method public expire(Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;)V
    .locals 1
    .param p1, "starter"    # Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;

    .line 90
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public expireAll()V
    .locals 4

    .line 124
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "expire %d tasks"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 126
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 125
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 130
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->init()V

    .line 131
    return-void
.end method
