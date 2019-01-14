.class final Lkotlinx/coroutines/experimental/BlockingCoroutine;
.super Lkotlinx/coroutines/experimental/AbstractCoroutine;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/AbstractCoroutine<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/experimental/BlockingCoroutine\n*L\n1#1,196:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0014J\r\u0010\u0016\u001a\u00028\u0000H\u0007\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/BlockingCoroutine;",
        "T",
        "Lkotlinx/coroutines/experimental/AbstractCoroutine;",
        "parentContext",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "blockedThread",
        "Ljava/lang/Thread;",
        "privateEventLoop",
        "",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Thread;Z)V",
        "eventLoop",
        "Lkotlinx/coroutines/experimental/EventLoop;",
        "getEventLoop",
        "()Lkotlinx/coroutines/experimental/EventLoop;",
        "getParentContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "afterCompletion",
        "",
        "state",
        "",
        "mode",
        "",
        "joinBlocking",
        "()Ljava/lang/Object;",
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
.field private final blockedThread:Ljava/lang/Thread;

.field private final eventLoop:Lkotlinx/coroutines/experimental/EventLoop;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final parentContext:Lkotlin/coroutines/experimental/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final privateEventLoop:Z


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Thread;Z)V
    .locals 2
    .param p1, "parentContext"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "blockedThread"    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "privateEventLoop"    # Z

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockedThread"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    nop

    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->blockedThread:Ljava/lang/Thread;

    iput-boolean p3, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->privateEventLoop:Z

    .line 168
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/BlockingCoroutine;->getParentContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/experimental/EventLoop;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/EventLoop;

    iput-object v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->eventLoop:Lkotlinx/coroutines/experimental/EventLoop;

    .line 171
    iget-boolean v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->privateEventLoop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->eventLoop:Lkotlinx/coroutines/experimental/EventLoop;

    instance-of v0, v0, Lkotlinx/coroutines/experimental/EventLoopImpl;

    if-nez v0, :cond_1

    const-string v0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_1
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

    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->blockedThread:Ljava/lang/Thread;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->blockedThread:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 177
    :cond_0
    return-void
.end method

.method public final getEventLoop()Lkotlinx/coroutines/experimental/EventLoop;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 168
    iget-object v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->eventLoop:Lkotlinx/coroutines/experimental/EventLoop;

    return-object v0
.end method

.method protected getParentContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 164
    iget-object v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object v0
.end method

.method public final joinBlocking()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 181
    :goto_0
    nop

    .line 182
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    move-object v2, v0

    .line 182
    .local v1, "$i$a$1$also":I
    .local v2, "it":Ljava/lang/InterruptedException;
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/experimental/BlockingCoroutine;->cancel(Ljava/lang/Throwable;)Z

    .line 182
    .end local v1    # "$i$a$1$also":I
    .end local v2    # "it":Ljava/lang/InterruptedException;
    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->eventLoop:Lkotlinx/coroutines/experimental/EventLoop;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/EventLoop;->processNextEvent()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    .line 185
    .local v2, "parkNanos":J
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/BlockingCoroutine;->isActive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 189
    .end local v2    # "parkNanos":J
    iget-boolean v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->privateEventLoop:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->eventLoop:Lkotlinx/coroutines/experimental/EventLoop;

    if-nez v0, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.experimental.EventLoopImpl"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Lkotlinx/coroutines/experimental/EventLoopImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/EventLoopImpl;->shutdown()V

    .line 191
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/BlockingCoroutine;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 192
    .local v0, "state":Ljava/lang/Object;
    instance-of v2, v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v2, :cond_5

    .line 192
    .local v1, "$i$a$2$let":I
    .local v2, "it":Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v3

    throw v3

    .line 193
    .end local v1    # "$i$a$2$let":I
    .end local v2    # "it":Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;
    :cond_5
    return-object v0

    .line 186
    .end local v0    # "state":Ljava/lang/Object;
    .local v2, "parkNanos":J
    :cond_6
    invoke-static {p0, v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 181
    .end local v2    # "parkNanos":J
    goto :goto_0
.end method
