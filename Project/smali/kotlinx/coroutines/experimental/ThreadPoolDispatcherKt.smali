.class public final Lkotlinx/coroutines/experimental/ThreadPoolDispatcherKt;
.super Ljava/lang/Object;
.source "ThreadPoolDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreadPoolDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadPoolDispatcher.kt\nkotlinx/coroutines/experimental/ThreadPoolDispatcherKt\n*L\n1#1,72:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a\u001a\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "newFixedThreadPoolContext",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "nThreads",
        "",
        "name",
        "",
        "parent",
        "Lkotlinx/coroutines/experimental/Job;",
        "newSingleThreadContext",
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
.method public static final newFixedThreadPoolContext(ILjava/lang/String;Lkotlinx/coroutines/experimental/Job;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 3
    .param p0, "nThreads"    # I
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "parent"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    .line 43
    .local v0, "$i$a$1$require":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected at least one thread, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .end local v0    # "$i$a$1$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 44
    :cond_1
    sget-object v0, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    invoke-virtual {v0, p2}, Lkotlinx/coroutines/experimental/Job$Key;->invoke(Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/Job;

    move-result-object v0

    .line 45
    .local v0, "job":Lkotlinx/coroutines/experimental/Job;
    new-instance v1, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;

    invoke-direct {v1, p0, p1, v0}, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;-><init>(ILjava/lang/String;Lkotlinx/coroutines/experimental/Job;)V

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/Job;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    return-object v1
.end method

.method public static bridge synthetic newFixedThreadPoolContext$default(ILjava/lang/String;Lkotlinx/coroutines/experimental/Job;ILjava/lang/Object;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 42
    const/4 p2, 0x0

    check-cast p2, Lkotlinx/coroutines/experimental/Job;

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/experimental/ThreadPoolDispatcherKt;->newFixedThreadPoolContext(ILjava/lang/String;Lkotlinx/coroutines/experimental/Job;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public static final newSingleThreadContext(Ljava/lang/String;Lkotlinx/coroutines/experimental/Job;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "parent"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lkotlinx/coroutines/experimental/ThreadPoolDispatcherKt;->newFixedThreadPoolContext(ILjava/lang/String;Lkotlinx/coroutines/experimental/Job;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic newSingleThreadContext$default(Ljava/lang/String;Lkotlinx/coroutines/experimental/Job;ILjava/lang/Object;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 32
    const/4 p1, 0x0

    check-cast p1, Lkotlinx/coroutines/experimental/Job;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/ThreadPoolDispatcherKt;->newSingleThreadContext(Ljava/lang/String;Lkotlinx/coroutines/experimental/Job;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p0

    return-object p0
.end method
