.class public Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;
.super Ljava/lang/Object;
.source "FileDownloadSerialQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;,
        Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;
    }
.end annotation


# static fields
.field public static final ID_INVALID:I = 0x0

.field private static final WHAT_NEXT:I = 0x1


# instance fields
.field final finishCallback:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mTasks:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final operationLock:Ljava/lang/Object;

.field volatile paused:Z

.field volatile workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->operationLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mTasks:Ljava/util/concurrent/BlockingQueue;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->paused:Z

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SerialDownloadManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mHandlerThread:Landroid/os/HandlerThread;

    .line 52
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;-><init>(Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->finishCallback:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;

    .line 55
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->sendNext()V

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;

    .line 36
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mTasks:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;

    .line 36
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->sendNext()V

    return-void
.end method

.method private sendNext()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    return-void
.end method


# virtual methods
.method public enqueue(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 1
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 68
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public getWaitingTaskCount()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public getWorkingTaskId()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->finishCallback:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->paused:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "require pause this queue(remain %d), but it has already been paused"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mTasks:Ljava/util/concurrent/BlockingQueue;

    .line 79
    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 78
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    monitor-exit v0

    return-void

    .line 83
    :cond_0
    iput-boolean v2, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->paused:Z

    .line 84
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->finishCallback:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;

    invoke-interface {v1, v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->removeFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Z

    .line 86
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->pause()Z

    .line 88
    :cond_1
    monitor-exit v0

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->finishCallback:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->paused:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 100
    const-string v1, "require resume this queue(remain %d), but it is still running"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mTasks:Ljava/util/concurrent/BlockingQueue;

    .line 101
    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 100
    invoke-static {p0, v1, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    monitor-exit v0

    return-void

    .line 105
    :cond_0
    iput-boolean v2, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->paused:Z

    .line 106
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    if-nez v1, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->sendNext()V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->finishCallback:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;

    invoke-interface {v1, v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->addFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 110
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->start()I

    .line 112
    :goto_0
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->pause()V

    .line 144
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "unDealTaskList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask;>;"
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 146
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    .line 148
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 150
    return-object v0
.end method
