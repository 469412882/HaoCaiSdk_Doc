.class Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;
.super Ljava/lang/Object;
.source "QueuesHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/QueuesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SerialHandlerCallback"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningIndex:I

.field private mSerialFinishListener:Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;

.field final synthetic this$0:Lcom/liulishuo/filedownloader/QueuesHandler;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/QueuesHandler;)V
    .locals 2

    .line 156
    iput-object p1, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->this$0:Lcom/liulishuo/filedownloader/QueuesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 p1, 0x0

    iput p1, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mRunningIndex:I

    .line 157
    new-instance p1, Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;-><init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/QueuesHandler$1;)V

    iput-object p1, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mSerialFinishListener:Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;
    .param p1, "x1"    # I

    .line 150
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->goNext(I)V

    return-void
.end method

.method private goNext(I)V
    .locals 8
    .param p1, "nextIndex"    # I

    .line 230
    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "nextMsg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 238
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 239
    sget-boolean v4, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v4, :cond_3

    .line 240
    const-class v4, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;

    const-string v5, "start next %s %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    .line 241
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    .line 242
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v6}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v6

    invoke-interface {v6}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getListener()Lcom/liulishuo/filedownloader/FileDownloadListener;

    move-result-object v7

    :goto_0
    aput-object v7, v1, v3

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 240
    invoke-static {v4, v5, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_3
    iget-object v1, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    return-void

    .line 231
    .end local v0    # "nextMsg":Landroid/os/Message;
    :cond_4
    :goto_1
    const-string v0, "need go next %d, but params is not ready %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mHandler:Landroid/os/Handler;

    aput-object v3, v4, v2

    iget-object v2, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    aput-object v2, v4, v1

    .line 231
    invoke-static {p0, v0, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    return-void
.end method


# virtual methods
.method public freeze()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    iget v1, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mRunningIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mSerialFinishListener:Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->removeFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Z

    .line 222
    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 172
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lt v0, v3, :cond_4

    .line 173
    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->this$0:Lcom/liulishuo/filedownloader/QueuesHandler;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/QueuesHandler;->access$200(Lcom/liulishuo/filedownloader/QueuesHandler;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v3, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->this$0:Lcom/liulishuo/filedownloader/QueuesHandler;

    invoke-static {v3}, Lcom/liulishuo/filedownloader/QueuesHandler;->access$200(Lcom/liulishuo/filedownloader/QueuesHandler;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v5, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v5}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getAttachKey()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 179
    iput-object v3, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mHandler:Landroid/os/Handler;

    .line 180
    iput-object v3, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    .line 181
    iput-object v3, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mSerialFinishListener:Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;

    .line 184
    :cond_0
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_3

    .line 185
    const-class v0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;

    const-string v5, "final serial %s %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    .line 186
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    .line 187
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getListener()Lcom/liulishuo/filedownloader/FileDownloadListener;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v4

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 188
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 185
    invoke-static {v0, v5, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_3
    return v2

    .line 175
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 193
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mRunningIndex:I

    .line 194
    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    iget v3, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mRunningIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    .line 195
    .local v0, "stackTopTask":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getPauseLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 196
    :try_start_2
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v5

    invoke-interface {v5}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getStatus()B

    move-result v5

    if-nez v5, :cond_6

    .line 197
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/liulishuo/filedownloader/FileDownloadList;->isNotContains(Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 207
    :cond_5
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    iget-object v4, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mSerialFinishListener:Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;

    iget v5, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mRunningIndex:I

    add-int/2addr v5, v2

    .line 208
    invoke-virtual {v4, v5}, Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;->setNextIndex(I)Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->addFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 209
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->startTaskByQueue()V

    .line 210
    monitor-exit v3

    .line 212
    .end local v0    # "stackTopTask":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    goto :goto_2

    .line 199
    .restart local v0    # "stackTopTask":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :cond_6
    :goto_1
    sget-boolean v5, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v5, :cond_7

    .line 200
    const-class v5, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;

    const-string v6, "direct go next by not contains %s %d"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 200
    invoke-static {v5, v6, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->goNext(I)V

    .line 204
    monitor-exit v3

    return v2

    .line 210
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 212
    .end local v0    # "stackTopTask":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_9

    .line 213
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->freeze()V

    goto :goto_2

    .line 214
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 215
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->unfreeze()V

    .line 217
    :cond_a
    :goto_2
    return v2
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 162
    iput-object p1, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mHandler:Landroid/os/Handler;

    .line 163
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;>;"
    iput-object p1, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mList:Ljava/util/List;

    .line 167
    return-void
.end method

.method public unfreeze()V
    .locals 1

    .line 226
    iget v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->mRunningIndex:I

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->goNext(I)V

    .line 227
    return-void
.end method
