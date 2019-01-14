.class public final Lkotlinx/coroutines/experimental/DelayKt;
.super Ljava/lang/Object;
.source "Delay.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/experimental/DelayKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationKt\n*L\n1#1,104:1\n121#2,9:105\n*E\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/experimental/DelayKt\n*L\n87#1,9:105\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0007"
    }
    d2 = {
        "delay",
        "",
        "time",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "(JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public static final delay(JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    int-to-long v1, v0

    cmp-long v3, p0, v1

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 85
    .local v0, "$i$a$1$require":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " cannot be negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .end local v0    # "$i$a$1$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 86
    :cond_1
    cmp-long v3, p0, v1

    if-gtz v3, :cond_2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 87
    :cond_2
    const/4 v1, 0x0

    .line 105
    .local v1, "holdCancellability$iv":Z
    const/4 v1, 0x0

    move v2, v4

    .line 108
    .local v2, "$i$f$suspendCancellableCoroutine":I
    invoke-static {p3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v3

    .line 108
    .local v3, "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    move v5, v0

    .line 109
    .local v5, "$i$a$1$suspendCoroutineOrReturn":I
    new-instance v6, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    invoke-direct {v6, v3, v4}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    move-object v4, v6

    .line 110
    .local v4, "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    if-nez v1, :cond_3

    invoke-virtual {v4}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initCancellability()V

    .line 111
    :cond_3
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/experimental/CancellableContinuation;

    .line 88
    .local v0, "$i$a$2$suspendCancellableCoroutine":I
    .local v6, "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    invoke-interface {v6}, Lkotlinx/coroutines/experimental/CancellableContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v7

    sget-object v8, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v8, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v7, v8}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v7

    instance-of v8, v7, Lkotlinx/coroutines/experimental/Delay;

    if-nez v8, :cond_4

    const/4 v7, 0x0

    :cond_4
    check-cast v7, Lkotlinx/coroutines/experimental/Delay;

    .line 89
    .local v7, "delay":Lkotlinx/coroutines/experimental/Delay;
    if-eqz v7, :cond_5

    .line 90
    invoke-interface {v7, p0, p1, p2, v6}, Lkotlinx/coroutines/experimental/Delay;->scheduleResumeAfterDelay(JLjava/util/concurrent/TimeUnit;Lkotlinx/coroutines/experimental/CancellableContinuation;)V

    goto :goto_1

    .line 91
    :cond_5
    move-object v8, v6

    check-cast v8, Lkotlinx/coroutines/experimental/Job;

    invoke-static {}, Lkotlinx/coroutines/experimental/ScheduledKt;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    new-instance v10, Lkotlinx/coroutines/experimental/ResumeRunnable;

    move-object v11, v6

    check-cast v11, Lkotlin/coroutines/experimental/Continuation;

    invoke-direct {v10, v11}, Lkotlinx/coroutines/experimental/ResumeRunnable;-><init>(Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v10, Ljava/lang/Runnable;

    invoke-interface {v9, v10, p0, p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v9

    const-string v10, "scheduledExecutor.schedu\u2026nnable(cont), time, unit)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/util/concurrent/Future;

    invoke-static {v8, v9}, Lkotlinx/coroutines/experimental/JobKt;->cancelFutureOnCompletion(Lkotlinx/coroutines/experimental/Job;Ljava/util/concurrent/Future;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 92
    .end local v0    # "$i$a$2$suspendCancellableCoroutine":I
    .end local v6    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    .end local v7    # "delay":Lkotlinx/coroutines/experimental/Delay;
    :goto_1
    nop

    .line 112
    invoke-virtual {v4}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 108
    .end local v1    # "holdCancellability$iv":Z
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    .end local v3    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .end local v4    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    .end local v5    # "$i$a$1$suspendCoroutineOrReturn":I
    nop

    .line 113
    return-object v0
.end method

.method public static bridge synthetic delay$default(JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 84
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/experimental/DelayKt;->delay(JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
