.class Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;
.super Ljava/lang/Object;
.source "FileDownloadSerialQueue.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SerialLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;->this$0:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;
    .param p2, "x1"    # Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$1;

    .line 154
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;-><init>(Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;->this$0:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->finishCallback:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :try_start_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;->this$0:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;

    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->paused:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;->this$0:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;->this$0:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;

    invoke-static {v2}, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->access$100(Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iput-object v2, v1, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 164
    iget-object v1, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;->this$0:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;

    iget-object v1, v1, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->workingTask:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialLoop;->this$0:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;

    iget-object v2, v2, Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue;->finishCallback:Lcom/liulishuo/filedownloader/util/FileDownloadSerialQueue$SerialFinishCallback;

    invoke-interface {v1, v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->addFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    .line 165
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->start()I

    .line 166
    monitor-exit v0

    .line 170
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 173
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
