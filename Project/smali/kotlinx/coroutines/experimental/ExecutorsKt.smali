.class public final Lkotlinx/coroutines/experimental/ExecutorsKt;
.super Ljava/lang/Object;
.source "Executors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u000c\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "asCoroutineDispatcher",
        "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
        "Ljava/util/concurrent/Executor;",
        "toCoroutineDispatcher",
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
.method public static final asCoroutineDispatcher(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    .locals 1
    .param p0, "$receiver"    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcher;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcher;-><init>(Ljava/util/concurrent/Executor;)V

    check-cast v0, Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    return-object v0
.end method

.method public static final toCoroutineDispatcher(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    .locals 1
    .param p0, "$receiver"    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Renamed to `asCoroutineDispatcher`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "asCoroutineDispatcher()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcher;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcher;-><init>(Ljava/util/concurrent/Executor;)V

    check-cast v0, Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    return-object v0
.end method
