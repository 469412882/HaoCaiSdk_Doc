.class public Lcom/liulishuo/filedownloader/FileDownloadMessageStation;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/FileDownloadMessageStation$UIHandlerCallback;,
        Lcom/liulishuo/filedownloader/FileDownloadMessageStation$HolderClass;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERVAL:I = 0xa

.field public static final DEFAULT_SUB_PACKAGE_SIZE:I = 0x5

.field static final DISPOSE_MESSENGER_LIST:I = 0x2

.field static final HANDOVER_A_MESSENGER:I = 0x1

.field static INTERVAL:I

.field static SUB_PACKAGE_SIZE:I


# instance fields
.field private final blockCompletedPool:Ljava/util/concurrent/Executor;

.field private final disposingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/IFileDownloadMessenger;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final queueLock:Ljava/lang/Object;

.field private final waitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/liulishuo/filedownloader/IFileDownloadMessenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 188
    const/16 v0, 0xa

    sput v0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->INTERVAL:I

    .line 189
    const/4 v0, 0x5

    sput v0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->SUB_PACKAGE_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "BlockCompleted"

    .line 36
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadExecutors;->newDefaultThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->blockCompletedPool:Ljava/util/concurrent/Executor;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->queueLock:Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->disposingList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/liulishuo/filedownloader/FileDownloadMessageStation$UIHandlerCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation$UIHandlerCallback;-><init>(Lcom/liulishuo/filedownloader/FileDownloadMessageStation$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->handler:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->waitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/FileDownloadMessageStation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liulishuo/filedownloader/FileDownloadMessageStation$1;

    .line 33
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/liulishuo/filedownloader/FileDownloadMessageStation;)V
    .locals 0
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/FileDownloadMessageStation;

    .line 33
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->push()V

    return-void
.end method

.method private enqueue(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)V
    .locals 2
    .param p1, "messenger"    # Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    .line 108
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->queueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->waitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->push()V

    .line 113
    return-void

    .line 110
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getImpl()Lcom/liulishuo/filedownloader/FileDownloadMessageStation;
    .locals 1

    .line 46
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation$HolderClass;->access$100()Lcom/liulishuo/filedownloader/FileDownloadMessageStation;

    move-result-object v0

    return-object v0
.end method

.method private handoverInUIThread(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)V
    .locals 3
    .param p1, "messenger"    # Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    .line 102
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    return-void
.end method

.method public static isIntervalValid()Z
    .locals 1

    .line 192
    sget v0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->INTERVAL:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private push()V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->queueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->disposingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    monitor-exit v0

    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->waitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    monitor-exit v0

    return-void

    .line 129
    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->isIntervalValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->waitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->disposingList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 131
    const/4 v1, 0x0

    .line 131
    .local v1, "delayMillis":I
    goto :goto_1

    .line 133
    .end local v1    # "delayMillis":I
    :cond_2
    sget v1, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->INTERVAL:I

    .line 134
    .restart local v1    # "delayMillis":I
    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->waitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    sget v3, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->SUB_PACKAGE_SIZE:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 135
    .local v2, "size":I
    const/4 v3, 0x0

    .line 135
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 136
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->disposingList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->waitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 143
    .end local v1    # "delayMillis":I
    .local v0, "delayMillis":I
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->disposingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 145
    return-void

    .line 141
    .end local v0    # "delayMillis":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method requestEnqueue(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)V
    .locals 1
    .param p1, "messenger"    # Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->requestEnqueue(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;Z)V

    .line 56
    return-void
.end method

.method requestEnqueue(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;Z)V
    .locals 3
    .param p1, "messenger"    # Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    .param p2, "immediately"    # Z

    .line 61
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->handoverDirectly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->handoverMessage()V

    .line 63
    return-void

    .line 66
    :cond_0
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->isBlockingCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->blockCompletedPool:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/liulishuo/filedownloader/FileDownloadMessageStation$1;

    invoke-direct {v1, p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation$1;-><init>(Lcom/liulishuo/filedownloader/FileDownloadMessageStation;Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->isIntervalValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->waitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->queueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->waitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->waitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    .line 83
    .local v2, "iFileDownloadMessenger":Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    invoke-direct {p0, v2}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->handoverInUIThread(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)V

    .line 84
    .end local v2    # "iFileDownloadMessenger":Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    goto :goto_0

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->waitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 87
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 91
    :cond_3
    :goto_1
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->isIntervalValid()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    .line 98
    :cond_4
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->enqueue(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)V

    .line 99
    return-void

    .line 93
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->handoverInUIThread(Lcom/liulishuo/filedownloader/IFileDownloadMessenger;)V

    .line 94
    return-void
.end method
