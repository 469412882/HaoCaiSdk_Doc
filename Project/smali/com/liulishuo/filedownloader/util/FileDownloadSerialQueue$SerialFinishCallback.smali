.class Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;
.super Ljava/lang/Object;
.source "FileDownloadSerialQueue.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialFinishCallback"
.end annotation


# instance fields
.field private final mQueueWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "queueWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;->mQueueWeakReference:Ljava/lang/ref/WeakReference;

    .line 182
    return-void
.end method


# virtual methods
.method public declared-synchronized over(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 2
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    monitor-enter p0

    .line 186
    :try_start_0
    invoke-interface {p1, p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->removeFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Z

    .line 188
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;->mQueueWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 189
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;->mQueueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .local v0, "queue":Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;
    if-nez v0, :cond_1

    .line 194
    monitor-exit p0

    return-void

    .line 197
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, v0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 198
    iget-boolean v1, v0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->paused:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 199
    monitor-exit p0

    return-void

    .line 201
    :cond_2
    :try_start_3
    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->access$200(Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 185
    .end local v0    # "queue":Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;
    .end local p1    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
