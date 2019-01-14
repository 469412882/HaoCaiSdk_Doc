.class public final Lkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt\n*L\n1#1,62:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "handleCoroutineException",
        "",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "exception",
        "",
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
.method public static final handleCoroutineException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    .local v0, "it":Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;
    .local v1, "$i$a$1$let":I
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;->handleException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 35
    return-void

    .line 33
    .end local v0    # "it":Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;
    .end local v1    # "$i$a$1$let":I
    :cond_0
    nop

    .line 38
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    return-void

    .line 40
    :cond_1
    sget-object v0, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlinx/coroutines/experimental/Job;->cancel(Ljava/lang/Throwable;)Z

    move-result v1

    nop

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 42
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 43
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method
