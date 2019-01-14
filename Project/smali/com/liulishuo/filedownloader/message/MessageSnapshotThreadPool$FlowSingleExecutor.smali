.class public Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;
.super Ljava/lang/Object;
.source "MessageSnapshotThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlowSingleExecutor"
.end annotation


# instance fields
.field private final enQueueTaskIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;
    .param p2, "index"    # I

    .line 88
    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->this$0:Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->enQueueTaskIdList:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flow-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadExecutors;->newDefaultThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;

    .line 84
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->enQueueTaskIdList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public enqueue(I)V
    .locals 2
    .param p1, "id"    # I

    .line 93
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->enQueueTaskIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public execute(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 97
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor$1;-><init>(Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
