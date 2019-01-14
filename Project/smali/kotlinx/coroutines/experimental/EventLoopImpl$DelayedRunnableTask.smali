.class final Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedRunnableTask;
.super Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
.source "EventLoop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/EventLoopImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelayedRunnableTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\n\u001a\u00020\u000bH\u0096\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedRunnableTask;",
        "Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;",
        "Lkotlinx/coroutines/experimental/EventLoopImpl;",
        "time",
        "",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "block",
        "Ljava/lang/Runnable;",
        "(Lkotlinx/coroutines/experimental/EventLoopImpl;JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)V",
        "invoke",
        "",
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
.field private final block:Ljava/lang/Runnable;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/EventLoopImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/EventLoopImpl;JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)V
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
    .param p5, "block"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "timeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedRunnableTask;->this$0:Lkotlinx/coroutines/experimental/EventLoopImpl;

    .line 198
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;-><init>(Lkotlinx/coroutines/experimental/EventLoopImpl;JLjava/util/concurrent/TimeUnit;)V

    iput-object p5, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedRunnableTask;->block:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedRunnableTask;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke()V
    .locals 1

    .line 199
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedRunnableTask;->block:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
