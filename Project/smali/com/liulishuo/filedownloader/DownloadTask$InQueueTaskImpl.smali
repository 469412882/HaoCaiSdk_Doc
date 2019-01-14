.class final Lcom/liulishuo/filedownloader/DownloadTask$InQueueTaskImpl;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/BaseDownloadTask$InQueueTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InQueueTaskImpl"
.end annotation


# instance fields
.field private final mTask:Lcom/liulishuo/filedownloader/DownloadTask;


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/DownloadTask;)V
    .locals 2
    .param p1, "task"    # Lcom/liulishuo/filedownloader/DownloadTask;

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-object p1, p0, Lcom/liulishuo/filedownloader/DownloadTask$InQueueTaskImpl;->mTask:Lcom/liulishuo/filedownloader/DownloadTask;

    .line 667
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask$InQueueTaskImpl;->mTask:Lcom/liulishuo/filedownloader/DownloadTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/DownloadTask;->access$102(Lcom/liulishuo/filedownloader/DownloadTask;Z)Z

    .line 668
    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/DownloadTask;Lcom/liulishuo/filedownloader/DownloadTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liulishuo/filedownloader/DownloadTask;
    .param p2, "x1"    # Lcom/liulishuo/filedownloader/DownloadTask$1;

    .line 662
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/DownloadTask$InQueueTaskImpl;-><init>(Lcom/liulishuo/filedownloader/DownloadTask;)V

    return-void
.end method


# virtual methods
.method public enqueue()I
    .locals 5

    .line 672
    iget-object v0, p0, Lcom/liulishuo/filedownloader/DownloadTask$InQueueTaskImpl;->mTask:Lcom/liulishuo/filedownloader/DownloadTask;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/DownloadTask;->getId()I

    move-result v0

    .line 674
    .local v0, "id":I
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    .line 675
    const-string v1, "add the task[%d] to the queue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/DownloadTask$InQueueTaskImpl;->mTask:Lcom/liulishuo/filedownloader/DownloadTask;

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/FileDownloadList;->addUnchecked(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)V

    .line 679
    return v0
.end method
