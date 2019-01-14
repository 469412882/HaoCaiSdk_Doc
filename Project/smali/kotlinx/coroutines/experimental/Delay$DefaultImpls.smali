.class public final Lkotlinx/coroutines/experimental/Delay$DefaultImpls;
.super Ljava/lang/Object;
.source "Delay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/Delay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/experimental/Delay$DefaultImpls\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationKt\n*L\n1#1,104:1\n121#2,9:105\n*E\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/experimental/Delay$DefaultImpls\n*L\n42#1,9:105\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public static delay(Lkotlinx/coroutines/experimental/Delay;JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/Delay;
    .param p1, "time"    # J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/Delay;",
            "J",
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

    .line 40
    const/4 v0, 0x0

    int-to-long v1, v0

    cmp-long v3, p1, v1

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 40
    .local v0, "$i$a$1$require":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " cannot be negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .end local v0    # "$i$a$1$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 41
    :cond_1
    cmp-long v3, p1, v1

    if-gtz v3, :cond_2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 42
    :cond_2
    const/4 v1, 0x0

    .line 105
    .local v1, "holdCancellability$iv":Z
    const/4 v1, 0x0

    move v2, v4

    .line 108
    .local v2, "$i$f$suspendCancellableCoroutine":I
    invoke-static {p4}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

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

    .line 42
    .local v0, "$i$a$2$suspendCancellableCoroutine":I
    .local v6, "it":Lkotlinx/coroutines/experimental/CancellableContinuation;
    invoke-interface {p0, p1, p2, p3, v6}, Lkotlinx/coroutines/experimental/Delay;->scheduleResumeAfterDelay(JLjava/util/concurrent/TimeUnit;Lkotlinx/coroutines/experimental/CancellableContinuation;)V

    .line 112
    .end local v0    # "$i$a$2$suspendCancellableCoroutine":I
    .end local v6    # "it":Lkotlinx/coroutines/experimental/CancellableContinuation;
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

.method public static bridge synthetic delay$default(Lkotlinx/coroutines/experimental/Delay;JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p6, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: delay"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 39
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/experimental/Delay;->delay(JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invokeOnTimeout(Lkotlinx/coroutines/experimental/Delay;JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 3
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/Delay;
    .param p1, "time"    # J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "block"    # Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lkotlinx/coroutines/experimental/DisposableFutureHandle;

    invoke-static {}, Lkotlinx/coroutines/experimental/ScheduledKt;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v1, p4, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    const-string v2, "scheduledExecutor.schedule(block, time, unit)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/DisposableFutureHandle;-><init>(Ljava/util/concurrent/Future;)V

    check-cast v0, Lkotlinx/coroutines/experimental/DisposableHandle;

    return-object v0
.end method
