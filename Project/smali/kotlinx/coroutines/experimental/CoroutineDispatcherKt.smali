.class public final Lkotlinx/coroutines/experimental/CoroutineDispatcherKt;
.super Ljava/lang/Object;
.source "CoroutineDispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000\u001a%\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u0000\u00a2\u0006\u0002\u0010\u0005\u001a \u0010\u0006\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "resumeDirect",
        "",
        "T",
        "Lkotlin/coroutines/experimental/Continuation;",
        "value",
        "(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V",
        "resumeDirectWithException",
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
.method public static final resumeDirect(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V
    .locals 1
    .param p0, "$receiver"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    nop

    .line 158
    instance-of v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    iget-object v0, v0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-interface {p0, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 160
    :goto_0
    return-void
.end method

.method public static final resumeDirectWithException(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "$receiver"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    nop

    .line 163
    instance-of v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    iget-object v0, v0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-interface {p0, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 165
    :goto_0
    return-void
.end method
