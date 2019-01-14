.class final Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;
.super Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
.source "EventLoop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/EventLoopImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelayedResumeTask"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.kt\nkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask\n*L\n1#1,202:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\tH\u0016J\t\u0010\u000c\u001a\u00020\tH\u0096\u0002R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;",
        "Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;",
        "Lkotlinx/coroutines/experimental/EventLoopImpl;",
        "time",
        "",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "cont",
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "",
        "(Lkotlinx/coroutines/experimental/EventLoopImpl;JLjava/util/concurrent/TimeUnit;Lkotlinx/coroutines/experimental/CancellableContinuation;)V",
        "cancel",
        "invoke",
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
.field private final cont:Lkotlinx/coroutines/experimental/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/experimental/EventLoopImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/EventLoopImpl;JLjava/util/concurrent/TimeUnit;Lkotlinx/coroutines/experimental/CancellableContinuation;)V
    .locals 1
    .param p1, "$outer"    # Lkotlinx/coroutines/experimental/EventLoopImpl;
    .param p2, "time"    # J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "cont"    # Lkotlinx/coroutines/experimental/CancellableContinuation;
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

    const-string v0, "timeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cont"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iput-object p1, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;->this$0:Lkotlinx/coroutines/experimental/EventLoopImpl;

    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;-><init>(Lkotlinx/coroutines/experimental/EventLoopImpl;JLjava/util/concurrent/TimeUnit;)V

    iput-object p5, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 6

    .line 189
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/CancellableContinuation;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-wide v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;->nanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 191
    .local v4, "remaining":J
    invoke-static {}, Lkotlinx/coroutines/experimental/ScheduledKt;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/experimental/ResumeRunnable;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    check-cast v2, Lkotlin/coroutines/experimental/Continuation;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/experimental/ResumeRunnable;-><init>(Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v1, Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 192
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke()V
    .locals 4

    const/4 v0, 0x0

    .line 186
    .local v0, "$i$a$1$with":I
    iget-object v1, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    .line 186
    .local v1, "$receiver":Lkotlinx/coroutines/experimental/CancellableContinuation;
    iget-object v2, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;->this$0:Lkotlinx/coroutines/experimental/EventLoopImpl;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resumeUndispatched(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Ljava/lang/Object;)V

    .line 187
    .end local v0    # "$i$a$1$with":I
    .end local v1    # "$receiver":Lkotlinx/coroutines/experimental/CancellableContinuation;
    return-void
.end method
