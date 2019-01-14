.class public Lkotlinx/coroutines/experimental/channels/ArrayChannel;
.super Lkotlinx/coroutines/experimental/channels/AbstractChannel;
.source "ArrayChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayChannel.kt\nkotlinx/coroutines/experimental/channels/ArrayChannel\n*L\n1#1,232:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0015\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\u0018J!\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00028\u00002\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u001bH\u0014\u00a2\u0006\u0002\u0010\u001cJ\n\u0010\u001d\u001a\u0004\u0018\u00010\u0008H\u0014J\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u00082\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u001bH\u0014R\u0018\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u000e8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u000e8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u000e8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000fR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/ArrayChannel;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel;",
        "capacity",
        "",
        "(I)V",
        "buffer",
        "",
        "",
        "[Ljava/lang/Object;",
        "getCapacity",
        "()I",
        "head",
        "isBufferAlwaysEmpty",
        "",
        "()Z",
        "isBufferAlwaysFull",
        "isBufferEmpty",
        "isBufferFull",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "size",
        "offerInternal",
        "element",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "offerSelectInternal",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;",
        "pollInternal",
        "pollSelectInternal",
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
.field private final buffer:[Ljava/lang/Object;

.field private final capacity:I

.field private head:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile size:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 31
    nop

    .line 36
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    .line 38
    iget v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    move v0, v2

    .line 38
    .local v0, "$i$a$1$check":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayChannel capacity must be at least 1, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .end local v0    # "$i$a$1$check":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 41
    :cond_1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    iget v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getCapacity()I
    .locals 1

    .line 35
    iget v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    return v0
.end method

.method protected final isBufferAlwaysEmpty()Z
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method protected final isBufferAlwaysFull()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method protected final isBufferEmpty()Z
    .locals 1

    .line 48
    iget v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final isBufferFull()Z
    .locals 2

    .line 50
    iget v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    iget v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    .local v0, "receive":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 56
    .local v2, "token":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v3, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v4, 0x0

    move v5, v4

    .line 57
    .local v5, "$i$a$1$withLock":I
    :try_start_0
    iget v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 58
    .local v6, "size":I
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    move-object v1, v7

    .line 58
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 59
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v6    # "size":I
    :cond_0
    :try_start_1
    iget v4, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    if-ge v6, v4, :cond_9

    .line 61
    add-int/lit8 v4, v6, 0x1

    iput v4, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 63
    if-nez v6, :cond_8

    .line 64
    :goto_0
    nop

    .line 65
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    move-result-object v4

    if-eqz v4, :cond_8

    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 66
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    instance-of v4, v4, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v4, :cond_2

    .line 67
    iput v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 68
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    :cond_1
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 70
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v6    # "size":I
    :cond_2
    :try_start_2
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v4, p1, v1}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 71
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 72
    iput v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 73
    nop

    .line 81
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-interface {v1, v3}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 85
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-interface {v1}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 64
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v6    # "size":I
    :cond_7
    goto :goto_0

    .line 77
    :cond_8
    :try_start_3
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v4, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    add-int/2addr v4, v6

    iget v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    rem-int/2addr v4, v7

    aput-object p1, v1, v4

    .line 78
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 81
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v6    # "size":I
    :cond_9
    :try_start_4
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;
    .locals 9
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 91
    .local v0, "receive":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 92
    .local v2, "token":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v3, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v4, 0x0

    move v5, v4

    .line 93
    .local v5, "$i$a$1$withLock":I
    :try_start_0
    iget v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 94
    .local v6, "size":I
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    move-object v1, v7

    .line 94
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 95
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v6    # "size":I
    :cond_0
    :try_start_1
    iget v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    if-ge v6, v7, :cond_c

    .line 97
    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 99
    if-nez v6, :cond_a

    .line 100
    nop

    .line 101
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->describeTryOffer(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;

    move-result-object v7

    .line 102
    .local v7, "offerOp":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    invoke-interface {p2, v8}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v8

    .line 103
    .local v8, "failure":Ljava/lang/Object;
    nop

    .line 104
    if-nez v8, :cond_6

    .line 105
    iput v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 106
    invoke-virtual {v7}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 107
    iget-object v1, v7, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;->resumeToken:Ljava/lang/Object;

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 108
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    if-nez v4, :cond_2

    const-string v1, "Check failed."

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 109
    :cond_2
    nop

    .line 129
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    .end local v7    # "offerOp":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;
    .end local v8    # "failure":Ljava/lang/Object;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 132
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v1, v3}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 133
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-interface {v1}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 111
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v6    # "size":I
    .restart local v7    # "offerOp":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;
    .restart local v8    # "failure":Ljava/lang/Object;
    :cond_6
    :try_start_2
    sget-object v4, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;

    if-ne v8, v4, :cond_7

    .line 111
    .end local v7    # "offerOp":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;
    .end local v8    # "failure":Ljava/lang/Object;
    goto :goto_1

    .line 112
    .restart local v7    # "offerOp":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;
    .restart local v8    # "failure":Ljava/lang/Object;
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    if-eq v8, v1, :cond_9

    instance-of v1, v8, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v1, :cond_8

    goto :goto_0

    .line 114
    :cond_8
    nop

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performAtomicTrySelect(describeTryOffer) returned "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 113
    :cond_9
    :goto_0
    iput v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    nop

    .line 114
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    .end local v7    # "offerOp":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;
    .end local v8    # "failure":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v8

    .line 121
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v6    # "size":I
    :cond_a
    :goto_1
    :try_start_3
    invoke-interface {p2, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 122
    iput v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 123
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 123
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v6    # "size":I
    :cond_b
    move v1, v6

    .line 123
    .end local v6    # "size":I
    .local v1, "size":I
    move v4, v5

    .line 125
    .end local v5    # "$i$a$1$withLock":I
    .local v4, "$i$a$1$withLock":I
    :try_start_4
    iget-object v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    add-int/2addr v6, v1

    iget v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    rem-int/2addr v6, v7

    aput-object p1, v5, v6

    .line 126
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    .end local v1    # "size":I
    .end local v4    # "$i$a$1$withLock":I
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 129
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v6    # "size":I
    :cond_c
    :try_start_5
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 92
    :catchall_0
    move-exception v1

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected pollInternal()Ljava/lang/Object;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 138
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/channels/Send;

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 139
    .local v0, "send":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 140
    .local v2, "token":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 141
    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v4, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v4, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v5, 0x0

    .line 142
    .local v5, "$i$a$1$withLock":I
    :try_start_0
    iget v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 143
    .local v6, "size":I
    if-nez v6, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    goto :goto_0

    .line 143
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v6    # "size":I
    :cond_0
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    :goto_0
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 145
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v6    # "size":I
    :cond_1
    :try_start_1
    iget-object v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    aget-object v7, v7, v8

    iput-object v7, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 146
    iget-object v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    aput-object v1, v7, v8

    .line 147
    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 149
    sget-object v7, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    .line 150
    .local v7, "replacement":Ljava/lang/Object;
    iget v8, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    if-ne v6, v8, :cond_5

    .line 151
    :goto_1
    nop

    .line 152
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/experimental/channels/Send;

    move-result-object v8

    if-eqz v8, :cond_5

    iput-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 153
    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v8, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {v8, v1}, Lkotlinx/coroutines/experimental/channels/Send;->tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 154
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v8, :cond_4

    .line 155
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v1}, Lkotlinx/coroutines/experimental/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    .line 156
    goto :goto_2

    .line 151
    :cond_4
    goto :goto_1

    .line 160
    :cond_5
    :goto_2
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v7, v1, :cond_6

    instance-of v1, v7, Lkotlinx/coroutines/experimental/channels/Closed;

    if-nez v1, :cond_6

    .line 161
    iput v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 162
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    add-int/2addr v8, v6

    iget v9, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    rem-int/2addr v8, v9

    aput-object v7, v1, v8

    .line 164
    :cond_6
    iget v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    add-int/lit8 v1, v1, 0x1

    iget v8, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    rem-int/2addr v1, v8

    iput v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    .line 165
    .end local v5    # "$i$a$1$withLock":I
    .end local v6    # "size":I
    .end local v7    # "replacement":Ljava/lang/Object;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 167
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 168
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v4, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-interface {v1, v4}, Lkotlinx/coroutines/experimental/channels/Send;->completeResumeSend(Ljava/lang/Object;)V

    .line 169
    :cond_9
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v1

    .line 141
    :catchall_0
    move-exception v1

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected pollSelectInternal(Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;
    .locals 13
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

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/channels/Send;

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 175
    .local v0, "send":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 176
    .local v2, "token":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 177
    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v4, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v4, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v5, 0x0

    move v6, v5

    .line 178
    .local v6, "$i$a$1$withLock":I
    :try_start_0
    iget v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 179
    .local v7, "size":I
    if-nez v7, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    .end local v6    # "$i$a$1$withLock":I
    .end local v7    # "size":I
    goto :goto_0

    .line 179
    .restart local v6    # "$i$a$1$withLock":I
    .restart local v7    # "size":I
    :cond_0
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v6    # "$i$a$1$withLock":I
    .end local v7    # "size":I
    :goto_0
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 181
    .restart local v6    # "$i$a$1$withLock":I
    .restart local v7    # "size":I
    :cond_1
    :try_start_1
    iget-object v8, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v9, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    aget-object v8, v8, v9

    iput-object v8, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 182
    iget-object v8, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v9, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    aput-object v1, v8, v9

    .line 183
    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 185
    sget-object v8, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    .line 186
    .local v8, "replacement":Ljava/lang/Object;
    iget v9, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    const/4 v10, 0x1

    if-ne v7, v9, :cond_9

    .line 187
    nop

    .line 188
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->describeTryPoll()Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;

    move-result-object v9

    .line 189
    .local v9, "pollOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;
    move-object v11, v9

    check-cast v11, Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    invoke-interface {p1, v11}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v11

    .line 190
    .local v11, "failure":Ljava/lang/Object;
    nop

    .line 191
    if-nez v11, :cond_5

    .line 192
    invoke-virtual {v9}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/experimental/channels/Send;

    iput-object v12, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 193
    iget-object v12, v9, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;->resumeToken:Ljava/lang/Object;

    iput-object v12, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 194
    iget-object v12, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v12, :cond_2

    const/4 v5, 0x1

    nop

    :cond_2
    if-nez v5, :cond_3

    const-string v1, "Check failed."

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 195
    :cond_3
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v5, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v5}, Lkotlinx/coroutines/experimental/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    .line 196
    goto :goto_1

    .line 198
    :cond_5
    sget-object v5, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-ne v11, v5, :cond_6

    .line 198
    .end local v9    # "pollOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;
    .end local v11    # "failure":Ljava/lang/Object;
    goto :goto_1

    .line 199
    .restart local v9    # "pollOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;
    .restart local v11    # "failure":Ljava/lang/Object;
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v5

    if-ne v11, v5, :cond_7

    .line 200
    iput v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 201
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    iget-object v10, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    aput-object v10, v1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    nop

    .line 202
    .end local v6    # "$i$a$1$withLock":I
    .end local v7    # "size":I
    .end local v8    # "replacement":Ljava/lang/Object;
    .end local v9    # "pollOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;
    .end local v11    # "failure":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v11

    .line 204
    .restart local v6    # "$i$a$1$withLock":I
    .restart local v7    # "size":I
    .restart local v8    # "replacement":Ljava/lang/Object;
    .restart local v9    # "pollOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;
    .restart local v11    # "failure":Ljava/lang/Object;
    :cond_7
    :try_start_2
    instance-of v5, v11, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v5, :cond_8

    .line 205
    move-object v5, v11

    check-cast v5, Lkotlinx/coroutines/experimental/channels/Send;

    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 206
    move-object v5, v11

    check-cast v5, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-virtual {v5, v1}, Lkotlinx/coroutines/experimental/channels/Closed;->tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 207
    move-object v8, v11

    .line 208
    goto :goto_1

    .line 210
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performAtomicTrySelect(describeTryOffer) returned "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 214
    .end local v9    # "pollOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;
    .end local v11    # "failure":Ljava/lang/Object;
    :cond_9
    :goto_1
    sget-object v5, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v8, v5, :cond_a

    instance-of v5, v8, Lkotlinx/coroutines/experimental/channels/Closed;

    if-nez v5, :cond_a

    .line 215
    iput v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 216
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    add-int/2addr v5, v7

    iget v9, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    rem-int/2addr v5, v9

    aput-object v8, v1, v5

    goto :goto_2

    .line 219
    :cond_a
    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 220
    iput v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->size:I

    .line 221
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    iget-object v9, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    aput-object v9, v1, v5

    .line 222
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    .end local v6    # "$i$a$1$withLock":I
    .end local v7    # "size":I
    .end local v8    # "replacement":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 222
    .restart local v6    # "$i$a$1$withLock":I
    .restart local v7    # "size":I
    .restart local v8    # "replacement":Ljava/lang/Object;
    :cond_b
    :goto_2
    move v1, v6

    .line 222
    .end local v6    # "$i$a$1$withLock":I
    .local v1, "$i$a$1$withLock":I
    move-object v5, v8

    .line 222
    .end local v8    # "replacement":Ljava/lang/Object;
    .local v5, "replacement":Ljava/lang/Object;
    move v6, v7

    .line 224
    .end local v7    # "size":I
    .local v6, "size":I
    nop

    .line 225
    :try_start_3
    iget v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    add-int/2addr v7, v10

    iget v8, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->capacity:I

    rem-int/2addr v7, v8

    iput v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;->head:I

    .line 226
    .end local v1    # "$i$a$1$withLock":I
    .end local v5    # "replacement":Ljava/lang/Object;
    .end local v6    # "size":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 228
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 229
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v1, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v4, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-interface {v1, v4}, Lkotlinx/coroutines/experimental/channels/Send;->completeResumeSend(Ljava/lang/Object;)V

    .line 230
    :cond_e
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v1

    .line 177
    :catchall_0
    move-exception v1

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
