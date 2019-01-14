.class final Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/ChannelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/experimental/channels/ChannelIterator<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/experimental/channels/AbstractChannel$Itr\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationKt\n*L\n1#1,880:1\n124#2,6:881\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/experimental/channels/AbstractChannel$Itr\n*L\n665#1,6:881\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\u000e\u001a\u00020\u000fH\u0096B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\u0012\u0010\u0011\u001a\u00020\u000f2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0002J\u0011\u0010\u0012\u001a\u00020\u000fH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\u0011\u0010\u0013\u001a\u00028\u0001H\u0097B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/ChannelIterator;",
        "channel",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel;",
        "(Lkotlinx/coroutines/experimental/channels/AbstractChannel;)V",
        "getChannel",
        "()Lkotlinx/coroutines/experimental/channels/AbstractChannel;",
        "result",
        "",
        "getResult",
        "()Ljava/lang/Object;",
        "setResult",
        "(Ljava/lang/Object;)V",
        "hasNext",
        "",
        "(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "hasNextResult",
        "hasNextSuspend",
        "next",
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
.field private final channel:Lkotlinx/coroutines/experimental/channels/AbstractChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/channels/AbstractChannel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private result:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/channels/AbstractChannel;)V
    .locals 1
    .param p1, "channel"    # Lkotlinx/coroutines/experimental/channels/AbstractChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/channels/AbstractChannel<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->channel:Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    .line 645
    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    return-void
.end method

.method private final hasNextResult(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 658
    instance-of v0, p1, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v0, :cond_1

    .line 659
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/channels/Closed;

    iget-object v0, v0, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 660
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 662
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final hasNextSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 665
    .local v0, "$i$f$suspendCancellableCoroutine":I
    const/4 v1, 0x1

    .line 881
    .local v1, "holdCancellability$iv":Z
    invoke-static {p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    .line 881
    .local v2, "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    const/4 v3, 0x0

    move v4, v3

    .line 882
    .local v4, "$i$a$1$suspendCoroutineOrReturn":I
    new-instance v5, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    .line 883
    .local v5, "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    if-nez v1, :cond_0

    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initCancellability()V

    .line 884
    :cond_0
    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/experimental/CancellableContinuation;

    .line 884
    .local v7, "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    move v8, v3

    .line 666
    .local v8, "$i$a$1$suspendCancellableCoroutine":I
    new-instance v9, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;

    invoke-direct {v9, p0, v7}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;-><init>(Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;Lkotlinx/coroutines/experimental/CancellableContinuation;)V

    .line 667
    .local v9, "receive":Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;
    :goto_0
    nop

    .line 668
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->getChannel()Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    move-result-object v10

    move-object v11, v9

    check-cast v11, Lkotlinx/coroutines/experimental/channels/Receive;

    invoke-static {v10, v11}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->access$enqueueReceive(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/channels/Receive;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 669
    invoke-interface {v7}, Lkotlinx/coroutines/experimental/CancellableContinuation;->initCancellability()V

    .line 670
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->getChannel()Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    move-result-object v3

    move-object v6, v9

    check-cast v6, Lkotlinx/coroutines/experimental/channels/Receive;

    invoke-static {v3, v7, v6}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->access$removeReceiveOnCancel(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/channels/Receive;)V

    .line 671
    goto :goto_2

    .line 674
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->getChannel()Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    move-result-object v10

    invoke-virtual {v10}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v10

    .line 675
    .local v10, "result":Ljava/lang/Object;
    invoke-virtual {p0, v10}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->setResult(Ljava/lang/Object;)V

    .line 676
    instance-of v11, v10, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v11, :cond_3

    .line 677
    move-object v6, v10

    check-cast v6, Lkotlinx/coroutines/experimental/channels/Closed;

    iget-object v6, v6, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    .line 678
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v7, v3}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resume(Ljava/lang/Object;)V

    goto :goto_1

    .line 680
    :cond_2
    move-object v3, v10

    check-cast v3, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v7, v3}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 681
    :goto_1
    goto :goto_2

    .line 683
    :cond_3
    sget-object v11, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v10, v11, :cond_4

    .line 684
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v7, v3}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resume(Ljava/lang/Object;)V

    .line 685
    nop

    .line 885
    .end local v7    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    .end local v8    # "$i$a$1$suspendCancellableCoroutine":I
    .end local v9    # "receive":Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;
    .end local v10    # "result":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 881
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    .end local v1    # "holdCancellability$iv":Z
    .end local v2    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .end local v4    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    nop

    .line 886
    nop

    .line 688
    return-object v0

    .line 667
    .restart local v0    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "holdCancellability$iv":Z
    .restart local v2    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .restart local v4    # "$i$a$1$suspendCoroutineOrReturn":I
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    .restart local v7    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    .restart local v8    # "$i$a$1$suspendCancellableCoroutine":I
    .restart local v9    # "receive":Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;
    :cond_4
    goto :goto_0
.end method


# virtual methods
.method public final getChannel()Lkotlinx/coroutines/experimental/channels/AbstractChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/AbstractChannel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 644
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->channel:Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 645
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNext(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->hasNextResult(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 651
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->channel:Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    .line 652
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->hasNextResult(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 654
    :cond_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->hasNextSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public next(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    .line 693
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 694
    :cond_0
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 695
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    .line 696
    return-object v0

    .line 699
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->channel:Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->receive(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 645
    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    return-void
.end method
