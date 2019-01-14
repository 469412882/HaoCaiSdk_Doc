.class final Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;
.super Lkotlinx/coroutines/experimental/JobSupport;
.source "Scheduled.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/JobSupport;",
        "Ljava/lang/Runnable;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B%\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0004\u00a2\u0006\u0002\u0010\nJ\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0010H\u0016R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;",
        "T",
        "Lkotlinx/coroutines/experimental/JobSupport;",
        "Ljava/lang/Runnable;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "time",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "cont",
        "(JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)V",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "resume",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "resumeWithException",
        "exception",
        "",
        "run",
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
.field private final cont:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final context:Lkotlin/coroutines/experimental/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "cont"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cont"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    nop

    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;-><init>(Z)V

    iput-wide p1, p0, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->time:J

    iput-object p3, p0, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->cont:Lkotlin/coroutines/experimental/Continuation;

    .line 160
    iget-object v0, p0, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->cont:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 160
    iget-object v0, p0, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object v0
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->cont:Lkotlin/coroutines/experimental/Continuation;

    invoke-static {v0, p1}, Lkotlinx/coroutines/experimental/CoroutineDispatcherKt;->resumeDirect(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V

    return-void
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    instance-of v0, p1, Lkotlinx/coroutines/experimental/TimeoutException;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->cont:Lkotlin/coroutines/experimental/Continuation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlinx/coroutines/experimental/CoroutineDispatcherKt;->resumeDirect(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->cont:Lkotlin/coroutines/experimental/Continuation;

    invoke-static {v0, p1}, Lkotlinx/coroutines/experimental/CoroutineDispatcherKt;->resumeDirectWithException(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Throwable;)V

    .line 168
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 161
    new-instance v0, Lkotlinx/coroutines/experimental/TimeoutException;

    iget-wide v1, p0, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->time:J

    iget-object v3, p0, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/experimental/TimeoutException;-><init>(JLjava/util/concurrent/TimeUnit;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->cancel(Ljava/lang/Throwable;)Z

    return-void
.end method
