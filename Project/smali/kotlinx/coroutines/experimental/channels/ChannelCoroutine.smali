.class public Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;
.super Lkotlinx/coroutines/experimental/AbstractCoroutine;
.source "ChannelCoroutine.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/AbstractCoroutine<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlinx/coroutines/experimental/channels/Channel<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B#\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001a\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0014J\u0013\u0010\u0019\u001a\u00020\t2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0001J\u000f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dH\u0096\u0003J\u0016\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00028\u0000H\u0096\u0001\u00a2\u0006\u0002\u0010 J\u0010\u0010!\u001a\u0004\u0018\u00018\u0000H\u0096\u0001\u00a2\u0006\u0002\u0010\"J\u0011\u0010#\u001a\u00028\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J\u0013\u0010%\u001a\u0004\u0018\u00018\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$JI\u0010&\u001a\u00020\u0003\"\u0004\u0008\u0001\u0010\'2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\'0)2\"\u0010*\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\'0,\u0012\u0006\u0012\u0004\u0018\u00010\u00160+H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010-JK\u0010.\u001a\u00020\u0003\"\u0004\u0008\u0001\u0010\'2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\'0)2$\u0010*\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\'0,\u0012\u0006\u0012\u0004\u0018\u00010\u00160+H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010-JK\u0010/\u001a\u00020\u0003\"\u0004\u0008\u0001\u0010\'2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\'0)2\u0006\u0010\u001f\u001a\u00028\u00002\u001c\u0010*\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\'0,\u0012\u0006\u0012\u0004\u0018\u00010\u001600H\u0096\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101J\u0019\u00102\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00028\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0002\u00103R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0012\u0010\r\u001a\u00020\tX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\tX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000eR\u0012\u0010\u0010\u001a\u00020\tX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000eR\u0012\u0010\u0011\u001a\u00020\tX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u0006X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u00064"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;",
        "E",
        "Lkotlinx/coroutines/experimental/AbstractCoroutine;",
        "",
        "Lkotlinx/coroutines/experimental/channels/Channel;",
        "parentContext",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "channel",
        "active",
        "",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/channels/Channel;Z)V",
        "getChannel",
        "()Lkotlinx/coroutines/experimental/channels/Channel;",
        "isClosedForReceive",
        "()Z",
        "isClosedForSend",
        "isEmpty",
        "isFull",
        "getParentContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "afterCompletion",
        "state",
        "",
        "mode",
        "",
        "close",
        "cause",
        "",
        "iterator",
        "Lkotlinx/coroutines/experimental/channels/ChannelIterator;",
        "offer",
        "element",
        "(Ljava/lang/Object;)Z",
        "poll",
        "()Ljava/lang/Object;",
        "receive",
        "(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "receiveOrNull",
        "registerSelectReceive",
        "R",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V",
        "registerSelectReceiveOrNull",
        "registerSelectSend",
        "Lkotlin/Function1;",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "send",
        "(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
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
.field private final channel:Lkotlinx/coroutines/experimental/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/channels/Channel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentContext:Lkotlin/coroutines/experimental/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/channels/Channel;Z)V
    .locals 1
    .param p1, "parentContext"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "channel"    # Lkotlinx/coroutines/experimental/channels/Channel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlinx/coroutines/experimental/channels/Channel<",
            "TE;>;Z)V"
        }
    .end annotation

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    nop

    .line 28
    invoke-direct {p0, p3}, Lkotlinx/coroutines/experimental/AbstractCoroutine;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    return-void
.end method


# virtual methods
.method protected afterCompletion(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "state"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "mode"    # I

    .line 30
    instance-of v0, p1, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->cause:Ljava/lang/Throwable;

    nop

    :cond_1
    move-object v0, v1

    .line 31
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->getChannel()Lkotlinx/coroutines/experimental/channels/Channel;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlinx/coroutines/experimental/channels/Channel;->close(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 33
    :cond_2
    return-void
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/experimental/channels/Channel;->close(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public getChannel()Lkotlinx/coroutines/experimental/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/Channel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    return-object v0
.end method

.method protected getParentContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object v0
.end method

.method public isClosedForReceive()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/channels/Channel;->isClosedForReceive()Z

    move-result v0

    return v0
.end method

.method public isClosedForSend()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/channels/Channel;->isClosedForSend()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/channels/Channel;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFull()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/channels/Channel;->isFull()Z

    move-result v0

    return v0
.end method

.method public iterator()Lkotlinx/coroutines/experimental/channels/ChannelIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/channels/Channel;->iterator()Lkotlinx/coroutines/experimental/channels/ChannelIterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/experimental/channels/Channel;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/channels/Channel;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public receive(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/experimental/Continuation;
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

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/experimental/channels/Channel;->receive(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public receiveOrNull(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/experimental/Continuation;
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

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/experimental/channels/Channel;->receiveOrNull(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public registerSelectReceive(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/experimental/channels/Channel;->registerSelectReceive(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public registerSelectReceiveOrNull(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/experimental/channels/Channel;->registerSelectReceiveOrNull(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public registerSelectSend(Lkotlinx/coroutines/experimental/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;TE;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0, p1, p2, p3}, Lkotlinx/coroutines/experimental/channels/Channel;->registerSelectSend(Lkotlinx/coroutines/experimental/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;->channel:Lkotlinx/coroutines/experimental/channels/Channel;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/experimental/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
