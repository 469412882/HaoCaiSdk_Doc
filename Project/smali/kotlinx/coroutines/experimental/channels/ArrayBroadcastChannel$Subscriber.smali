.class final Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;
.super Lkotlinx/coroutines/experimental/channels/AbstractChannel;
.source "ArrayBroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Subscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayBroadcastChannel.kt\nkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber\n*L\n1#1,346:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u001b\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0011\u001a\u00020\nH\u0007J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\nH\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014J\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u001aH\u0014R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\n8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000bR\u0014\u0010\r\u001a\u00020\n8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\n8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000bR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel;",
        "Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;",
        "broadcastChannel",
        "Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;",
        "subHead",
        "",
        "(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;J)V",
        "isBufferAlwaysEmpty",
        "",
        "()Z",
        "isBufferAlwaysFull",
        "isBufferEmpty",
        "isBufferFull",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "checkOffer",
        "close",
        "",
        "needsToCheckOfferWithoutLock",
        "peekUnderLock",
        "",
        "pollInternal",
        "pollSelectInternal",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field private final broadcastChannel:Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public volatile subHead:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;J)V
    .locals 1
    .param p1, "broadcastChannel"    # Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "subHead"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel<",
            "TE;>;J)V"
        }
    .end annotation

    const-string v0, "broadcastChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    nop

    .line 196
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;

    iput-wide p2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J

    .line 197
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private final needsToCheckOfferWithoutLock()Z
    .locals 2

    .line 322
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->getClosedForReceive()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    return v1

    .line 324
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->getClosedForReceive()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v0

    if-nez v0, :cond_1

    .line 325
    return v1

    .line 326
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final peekUnderLock()Ljava/lang/Object;
    .locals 6

    .line 334
    iget-wide v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J

    .line 337
    .local v0, "subHead":J
    iget-object v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->getClosedForReceive()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v2

    .line 338
    .local v2, "closed":Lkotlinx/coroutines/experimental/channels/Closed;
    iget-object v3, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;

    invoke-static {v3}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->access$getTail$p(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;)J

    move-result-wide v3

    .line 339
    .local v3, "tail":J
    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    .line 341
    if-eqz v2, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    sget-object v5, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    :goto_0
    return-object v5

    .line 343
    :cond_1
    iget-object v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;

    invoke-static {v5, v0, v1}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->access$elementAt(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;J)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public final checkOffer()Z
    .locals 12

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "updated":Z
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/channels/Closed;

    move v4, v0

    move-object v0, v1

    move-object v3, v0

    .line 215
    .local v0, "token":Ljava/lang/Object;
    .local v2, "closed":Lkotlinx/coroutines/experimental/channels/Closed;
    .local v3, "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    .local v4, "updated":Z
    :goto_0
    nop

    .line 216
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->needsToCheckOfferWithoutLock()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 219
    iget-object v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v5

    if-nez v5, :cond_0

    .line 219
    .end local v0    # "token":Ljava/lang/Object;
    .end local v3    # "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    goto :goto_3

    .line 220
    .restart local v0    # "token":Ljava/lang/Object;
    .restart local v3    # "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    :cond_0
    nop

    .line 221
    nop

    .line 222
    nop

    .line 223
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->peekUnderLock()Ljava/lang/Object;

    move-result-object v5

    .line 224
    .local v5, "result":Ljava/lang/Object;
    nop

    .line 225
    sget-object v6, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_1

    .line 240
    :goto_1
    iget-object v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 226
    :cond_1
    :try_start_1
    instance-of v6, v5, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v6, :cond_3

    .line 227
    move-object v1, v5

    check-cast v1, Lkotlinx/coroutines/experimental/channels/Closed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 228
    nop

    .line 240
    .end local v0    # "token":Ljava/lang/Object;
    .end local v3    # "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    .end local v5    # "result":Ljava/lang/Object;
    :cond_2
    :goto_2
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .line 230
    .restart local v0    # "token":Ljava/lang/Object;
    .restart local v3    # "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    .restart local v5    # "result":Ljava/lang/Object;
    :cond_3
    nop

    .line 232
    :try_start_2
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 240
    move-object v3, v6

    .line 233
    instance-of v6, v3, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v6, :cond_4

    goto :goto_2

    .line 234
    :cond_4
    invoke-interface {v3, v5, v1}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 235
    if-nez v0, :cond_5

    goto :goto_1

    .line 236
    :cond_5
    iget-wide v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J

    .line 237
    .local v6, "subHead":J
    const/4 v8, 0x1

    int-to-long v8, v8

    add-long v10, v6, v8

    iput-wide v10, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    const/4 v4, 0x1

    .line 240
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "subHead":J
    iget-object v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 241
    nop

    .line 242
    if-nez v3, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-interface {v3, v0}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 216
    .end local v0    # "token":Ljava/lang/Object;
    .end local v3    # "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    goto :goto_0

    .line 240
    .restart local v0    # "token":Ljava/lang/Object;
    .restart local v3    # "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    :catchall_0
    move-exception v1

    iget-object v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 245
    .end local v0    # "token":Ljava/lang/Object;
    .end local v3    # "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    move-object v0, v2

    .line 245
    .local v0, "it":Lkotlinx/coroutines/experimental/channels/Closed;
    const/4 v1, 0x0

    .line 245
    .local v1, "$i$a$1$also":I
    iget-object v3, v0, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->close(Ljava/lang/Throwable;)Z

    .line 246
    .end local v0    # "it":Lkotlinx/coroutines/experimental/channels/Closed;
    .end local v1    # "$i$a$1$also":I
    :cond_8
    return v4
.end method

.method public close()V
    .locals 1

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->close(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;

    invoke-static {v0, p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->access$closeSubscriber(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;)V

    .line 207
    :cond_0
    return-void
.end method

.method protected isBufferAlwaysEmpty()Z
    .locals 1

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method protected isBufferAlwaysFull()Z
    .locals 2

    .line 201
    const-string v0, "Should not be used"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method protected isBufferEmpty()Z
    .locals 5

    .line 200
    iget-wide v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J

    iget-object v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;

    invoke-static {v2}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->access$getTail$p(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isBufferFull()Z
    .locals 2

    .line 202
    const-string v0, "Should not be used"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method protected pollInternal()Ljava/lang/Object;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 251
    .local v0, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 252
    .local v1, "updated":Z
    nop

    .line 253
    iget-object v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 254
    nop

    .line 255
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->peekUnderLock()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 256
    nop

    .line 257
    instance-of v2, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    sget-object v2, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    iget-wide v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J

    .line 262
    .local v2, "subHead":J
    const/4 v4, 0x1

    int-to-long v4, v4

    add-long v6, v2, v4

    iput-wide v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    const/4 v1, 0x1

    .line 265
    .end local v2    # "subHead":J
    :goto_0
    nop

    .line 267
    iget-object v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    nop

    .line 270
    instance-of v2, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    check-cast v2, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v2, :cond_3

    .line 270
    .local v2, "it":Lkotlinx/coroutines/experimental/channels/Closed;
    const/4 v3, 0x0

    .line 270
    .local v3, "$i$a$1$also":I
    iget-object v4, v2, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->close(Ljava/lang/Throwable;)Z

    .line 273
    .end local v2    # "it":Lkotlinx/coroutines/experimental/channels/Closed;
    .end local v3    # "$i$a$1$also":I
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->checkOffer()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 274
    const/4 v1, 0x1

    .line 276
    :cond_4
    if-eqz v1, :cond_5

    .line 277
    iget-object v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;

    invoke-static {v2}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->access$updateHead(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;)V

    .line 278
    :cond_5
    return-object v0

    .line 267
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected pollSelectInternal(Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;
    .locals 10
    .param p1, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 283
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "select"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "updated":Z
    nop

    .line 285
    iget-object v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 286
    nop

    .line 287
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->peekUnderLock()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 288
    nop

    .line 289
    instance-of v2, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    sget-object v2, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    invoke-interface {p1, v3}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 294
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 297
    :cond_2
    iget-wide v4, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J

    .line 298
    .local v4, "subHead":J
    const/4 v2, 0x1

    int-to-long v6, v2

    add-long v8, v4, v6

    iput-wide v8, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const/4 v1, 0x1

    .line 300
    .end local v4    # "subHead":J
    :goto_0
    nop

    .line 302
    nop

    .line 304
    iget-object v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 305
    nop

    .line 307
    instance-of v2, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    check-cast v3, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v3, :cond_4

    move-object v2, v3

    .line 307
    .local v2, "it":Lkotlinx/coroutines/experimental/channels/Closed;
    const/4 v3, 0x0

    .line 307
    .local v3, "$i$a$1$also":I
    iget-object v4, v2, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->close(Ljava/lang/Throwable;)Z

    .line 310
    .end local v2    # "it":Lkotlinx/coroutines/experimental/channels/Closed;
    .end local v3    # "$i$a$1$also":I
    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->checkOffer()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    const/4 v1, 0x1

    .line 313
    :cond_5
    if-eqz v1, :cond_6

    .line 314
    iget-object v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;

    invoke-static {v2}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->access$updateHead(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;)V

    .line 315
    :cond_6
    return-object v0

    .line 304
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
