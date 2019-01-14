.class public final Lkotlinx/coroutines/experimental/YieldKt;
.super Ljava/lang/Object;
.source "Yield.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nYield.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Yield.kt\nkotlinx/coroutines/experimental/YieldKt\n*L\n1#1,39:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0011\u0010\u0000\u001a\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0002\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0003"
    }
    d2 = {
        "yield",
        "",
        "(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
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
.method public static final yield(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 30
    .local v0, "$i$a$1$suspendCoroutineOrReturn":I
    const-string v1, "$continuation"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    .line 31
    .local v1, "cont":Lkotlin/coroutines/experimental/Continuation;
    invoke-interface {v1}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    .line 32
    .local v2, "context":Lkotlin/coroutines/experimental/CoroutineContext;
    sget-object v3, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v3, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/experimental/Job;

    .line 33
    .local v3, "job":Lkotlinx/coroutines/experimental/Job;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lkotlinx/coroutines/experimental/Job;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lkotlinx/coroutines/experimental/Job;->getCompletionException()Ljava/lang/Throwable;

    move-result-object v4

    throw v4

    .line 34
    :cond_0
    instance-of v4, v1, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-nez v4, :cond_1

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 35
    :cond_1
    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    iget-object v4, v4, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/experimental/CoroutineContext;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 36
    :cond_2
    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v4, v3, v5}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatchYield$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/Job;Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 30
    .end local v0    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v1    # "cont":Lkotlin/coroutines/experimental/Continuation;
    .end local v2    # "context":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v3    # "job":Lkotlinx/coroutines/experimental/Job;
    :goto_0
    nop

    .line 38
    return-object v4
.end method
