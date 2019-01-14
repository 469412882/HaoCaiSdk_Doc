.class Landroid/support/v7/util/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageQueue"
.end annotation


# instance fields
.field private mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 2

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 223
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 224
    .local v0, "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$000(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    monitor-exit p0

    return-object v0

    .line 219
    .end local v0    # "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeMessages(I)V
    .locals 4
    .param p1, "what"    # I

    monitor-enter p0

    .line 246
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iget v0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v0, p1, :cond_0

    .line 247
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 248
    .local v0, "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$000(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 249
    invoke-virtual {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->recycle()V

    .line 250
    .end local v0    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 253
    .local v0, "prev":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$000(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    .line 254
    .local v1, "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :goto_1
    if-eqz v1, :cond_2

    .line 255
    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$000(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v2

    .line 256
    .local v2, "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    iget v3, v1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_1

    .line 257
    invoke-static {v0, v2}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$002(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 258
    invoke-virtual {v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 260
    :cond_1
    move-object v0, v1

    .line 262
    :goto_2
    move-object v1, v2

    .line 263
    .end local v2    # "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    goto :goto_1

    .line 265
    .end local v0    # "prev":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .end local v1    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :cond_2
    monitor-exit p0

    return-void

    .line 245
    .end local p1    # "what":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 2
    .param p1, "item"    # Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-nez v0, :cond_0

    .line 235
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 238
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 239
    .local v0, "last":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :goto_0
    invoke-static {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$000(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 240
    invoke-static {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$000(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 242
    :cond_1
    invoke-static {v0, p1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$002(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 233
    .end local v0    # "last":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .end local p1    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {p1, v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$002(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 230
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 228
    .end local p1    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
