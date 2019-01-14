.class public abstract Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;
.super Lkotlinx/coroutines/experimental/CoroutineDispatcher;
.source "Executors.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/Delay;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008 \u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\rH\u0016J&\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;",
        "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
        "Lkotlinx/coroutines/experimental/Delay;",
        "()V",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "getExecutor",
        "()Ljava/util/concurrent/Executor;",
        "dispatch",
        "",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "block",
        "Ljava/lang/Runnable;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "invokeOnTimeout",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "time",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "scheduleResumeAfterDelay",
        "continuation",
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public delay(JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/experimental/Delay$DefaultImpls;->delay(Lkotlinx/coroutines/experimental/Delay;JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 62
    instance-of v0, p1, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract getExecutor()Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public invokeOnTimeout(JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 3
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "block"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0, p4, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/experimental/ScheduledKt;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p4, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 55
    :goto_0
    nop

    .line 58
    .local v0, "timeout":Ljava/util/concurrent/ScheduledFuture;
    new-instance v1, Lkotlinx/coroutines/experimental/DisposableFutureHandle;

    const-string v2, "timeout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/experimental/DisposableFutureHandle;-><init>(Ljava/util/concurrent/Future;)V

    check-cast v1, Lkotlinx/coroutines/experimental/DisposableHandle;

    return-object v1
.end method

.method public scheduleResumeAfterDelay(JLjava/util/concurrent/TimeUnit;Lkotlinx/coroutines/experimental/CancellableContinuation;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "continuation"    # Lkotlinx/coroutines/experimental/CancellableContinuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    nop

    .line 49
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    new-instance v1, Lkotlinx/coroutines/experimental/ResumeUndispatchedRunnable;

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    invoke-direct {v1, v2, p4}, Lkotlinx/coroutines/experimental/ResumeUndispatchedRunnable;-><init>(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Lkotlinx/coroutines/experimental/CancellableContinuation;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/experimental/ScheduledKt;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/experimental/ResumeRunnable;

    move-object v2, p4

    check-cast v2, Lkotlin/coroutines/experimental/Continuation;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/experimental/ResumeRunnable;-><init>(Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 48
    :goto_0
    nop

    .line 51
    .local v0, "timeout":Ljava/util/concurrent/ScheduledFuture;
    move-object v1, p4

    check-cast v1, Lkotlinx/coroutines/experimental/Job;

    const-string v2, "timeout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-static {v1, v2}, Lkotlinx/coroutines/experimental/JobKt;->cancelFutureOnCompletion(Lkotlinx/coroutines/experimental/Job;Ljava/util/concurrent/Future;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
