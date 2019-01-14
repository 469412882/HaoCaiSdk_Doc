.class public Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;
.super Ljava/lang/Object;
.source "MessageSnapshotThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;
    }
.end annotation


# instance fields
.field private final executorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final receiver:Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow$MessageReceiver;


# direct methods
.method constructor <init>(ILcom/liulishuo/filedownloader/message/MessageSnapshotFlow$MessageReceiver;)V
    .locals 3
    .param p1, "poolCount"    # I
    .param p2, "receiver"    # Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow$MessageReceiver;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;->receiver:Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow$MessageReceiver;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;->executorList:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    .line 38
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;->executorList:Ljava/util/List;

    new-instance v2, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;

    invoke-direct {v2, p0, v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;-><init>(Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;)Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow$MessageReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;

    .line 28
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;->receiver:Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow$MessageReceiver;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 7
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "targetPool":Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;->executorList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getId()I

    move-result v2

    .line 50
    .local v2, "id":I
    iget-object v3, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;->executorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;

    .line 51
    .local v4, "executor":Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;
    invoke-static {v4}, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->access$000(Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;)Ljava/util/List;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    move-object v0, v4

    .line 53
    goto :goto_1

    .line 55
    .end local v4    # "executor":Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;
    :cond_0
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    if-nez v0, :cond_5

    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, "leastTaskCount":I
    iget-object v4, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool;->executorList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;

    .line 62
    .local v5, "executor":Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;
    invoke-static {v5}, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->access$000(Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 63
    move-object v0, v5

    .line 64
    goto :goto_3

    .line 67
    :cond_2
    if-eqz v3, :cond_3

    .line 68
    invoke-static {v5}, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->access$000(Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v3, :cond_4

    .line 69
    :cond_3
    invoke-static {v5}, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->access$000(Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v3, v6

    .line 70
    move-object v0, v5

    .line 72
    .end local v5    # "executor":Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;
    :cond_4
    goto :goto_2

    .line 76
    .end local v3    # "leastTaskCount":I
    :cond_5
    :goto_3
    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->enqueue(I)V

    .line 77
    .end local v2    # "id":I
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->execute(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 81
    nop

    .line 82
    return-void

    .line 77
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    :catchall_1
    move-exception v1

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshotThreadPool$FlowSingleExecutor;->execute(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v1
.end method
