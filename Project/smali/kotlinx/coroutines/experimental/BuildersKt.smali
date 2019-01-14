.class public final Lkotlinx/coroutines/experimental/BuildersKt;
.super Ljava/lang/Object;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/experimental/BuildersKt\n*L\n1#1,196:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001aI\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\'\u0010\u0006\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0007\u00a2\u0006\u0002\u0008\u000cH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001aI\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u000e2\'\u0010\u0006\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0007\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a=\u0010\u0010\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u001c\u0010\u0006\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0012H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\u001aI\u0010\u0014\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\'\u0010\u0006\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0007\u00a2\u0006\u0002\u0008\u000cH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0016"
    }
    d2 = {
        "launch",
        "Lkotlinx/coroutines/experimental/Job;",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "start",
        "",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Job;",
        "Lkotlinx/coroutines/experimental/CoroutineStart;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Job;",
        "run",
        "T",
        "Lkotlin/Function1;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "runBlocking",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
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
.method public static final launch(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Job;
    .locals 3
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "start"    # Lkotlinx/coroutines/experimental/CoroutineStart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlinx/coroutines/experimental/CoroutineStart;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/experimental/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->newCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 57
    .local v0, "newContext":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/CoroutineStart;->isLazy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lkotlinx/coroutines/experimental/LazyStandaloneCoroutine;

    invoke-direct {v1, v0, p2}, Lkotlinx/coroutines/experimental/LazyStandaloneCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lkotlinx/coroutines/experimental/StandaloneCoroutine;

    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Lkotlinx/coroutines/experimental/StandaloneCoroutine;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lkotlinx/coroutines/experimental/StandaloneCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V

    .line 57
    :goto_0
    nop

    .line 60
    .local v1, "coroutine":Lkotlinx/coroutines/experimental/StandaloneCoroutine;
    sget-object v2, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/experimental/StandaloneCoroutine;->initParentJob(Lkotlinx/coroutines/experimental/Job;)V

    .line 61
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p1, p2, v1, v2}, Lkotlinx/coroutines/experimental/CoroutineStart;->invoke(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 62
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/Job;

    return-object v2
.end method

.method public static final launch(Lkotlin/coroutines/experimental/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Job;
    .locals 1
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "start"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/experimental/Job;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use `start = CoroutineStart.XXX` parameter"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "launch(context, if (start) CoroutineStart.DEFAULT else CoroutineStart.LAZY, block)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    if-eqz p1, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineStart;->LAZY:Lkotlinx/coroutines/experimental/CoroutineStart;

    :goto_0
    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/experimental/BuildersKt;->launch(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Job;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 53
    sget-object p1, Lkotlinx/coroutines/experimental/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/experimental/BuildersKt;->launch(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Job;

    move-result-object p0

    return-object p0
.end method

.method public static final run(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 82
    .local v0, "$i$a$1$suspendCoroutineOrReturn":I
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$continuation"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    .line 83
    .local v1, "cont":Lkotlin/coroutines/experimental/Continuation;
    invoke-interface {v1}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    .line 85
    .local v2, "oldContext":Lkotlin/coroutines/experimental/CoroutineContext;
    const/4 v3, 0x1

    if-eq p0, v2, :cond_3

    instance-of v4, p0, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    if-eqz v4, :cond_0

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {v4}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v4

    if-ne v4, p0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {v2, p0}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v4

    .line 90
    .local v4, "newContext":Lkotlin/coroutines/experimental/CoroutineContext;
    if-ne v4, v2, :cond_1

    .line 91
    invoke-static {p1, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 94
    :cond_1
    sget-object v5, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v5, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    sget-object v6, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v6, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v2, v6}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v6

    check-cast v6, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    new-instance v5, Lkotlinx/coroutines/experimental/RunContinuationDirect;

    invoke-direct {v5, v4, v1}, Lkotlinx/coroutines/experimental/RunContinuationDirect;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)V

    .line 96
    .local v5, "newContinuation":Lkotlinx/coroutines/experimental/RunContinuationDirect;
    invoke-static {p1, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v6, v5

    check-cast v6, Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 100
    .end local v5    # "newContinuation":Lkotlinx/coroutines/experimental/RunContinuationDirect;
    :cond_2
    new-instance v3, Lkotlinx/coroutines/experimental/RunContinuationCoroutine;

    invoke-direct {v3, v4, v1}, Lkotlinx/coroutines/experimental/RunContinuationCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)V

    .line 101
    .local v3, "newContinuation":Lkotlinx/coroutines/experimental/RunContinuationCoroutine;
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/RunContinuationCoroutine;->initCancellability()V

    .line 102
    move-object v5, v3

    check-cast v5, Lkotlin/coroutines/experimental/Continuation;

    invoke-static {p1, v5}, Lkotlin/coroutines/experimental/CoroutinesKt;->startCoroutine(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V

    .line 103
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/RunContinuationCoroutine;->getResult()Ljava/lang/Object;

    move-result-object v3

    .line 103
    .end local v0    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v1    # "cont":Lkotlin/coroutines/experimental/Continuation;
    .end local v2    # "oldContext":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v3    # "newContinuation":Lkotlinx/coroutines/experimental/RunContinuationCoroutine;
    .end local v4    # "newContext":Lkotlin/coroutines/experimental/CoroutineContext;
    goto :goto_1

    .line 86
    .restart local v0    # "$i$a$1$suspendCoroutineOrReturn":I
    .restart local v1    # "cont":Lkotlin/coroutines/experimental/Continuation;
    .restart local v2    # "oldContext":Lkotlin/coroutines/experimental/CoroutineContext;
    :cond_3
    :goto_0
    invoke-static {p1, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 82
    .end local v0    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v1    # "cont":Lkotlin/coroutines/experimental/Continuation;
    .end local v2    # "oldContext":Lkotlin/coroutines/experimental/CoroutineContext;
    :goto_1
    nop

    .line 104
    return-object v3
.end method

.method public static final runBlocking(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 123
    .local v0, "currentThread":Ljava/lang/Thread;
    sget-object v1, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v1}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lkotlinx/coroutines/experimental/EventLoopImpl;

    const-string v2, "currentThread"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lkotlinx/coroutines/experimental/EventLoopImpl;-><init>(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 124
    .local v1, "eventLoop":Lkotlinx/coroutines/experimental/EventLoopImpl;
    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext;

    goto :goto_1

    :cond_1
    sget-object v2, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext;

    :goto_1
    invoke-interface {p0, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->newCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    .line 125
    .local v2, "newContext":Lkotlin/coroutines/experimental/CoroutineContext;
    new-instance v3, Lkotlinx/coroutines/experimental/BlockingCoroutine;

    const-string v4, "currentThread"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-direct {v3, v2, v0, v4}, Lkotlinx/coroutines/experimental/BlockingCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Thread;Z)V

    .line 126
    .local v3, "coroutine":Lkotlinx/coroutines/experimental/BlockingCoroutine;
    sget-object v4, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v4, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v4}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/experimental/BlockingCoroutine;->initParentJob(Lkotlinx/coroutines/experimental/Job;)V

    .line 127
    if-eqz v1, :cond_3

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {v1, v4}, Lkotlinx/coroutines/experimental/EventLoopImpl;->initParentJob(Lkotlinx/coroutines/experimental/Job;)V

    .line 128
    :cond_3
    move-object v4, v3

    check-cast v4, Lkotlin/coroutines/experimental/Continuation;

    invoke-static {p1, v3, v4}, Lkotlin/coroutines/experimental/CoroutinesKt;->startCoroutine(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 129
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/BlockingCoroutine;->joinBlocking()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public static bridge synthetic runBlocking$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 121
    sget-object p0, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    check-cast p0, Lkotlin/coroutines/experimental/CoroutineContext;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/BuildersKt;->runBlocking(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
