.class final Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedRunnableTask;
.super Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;
.source "EventLoop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/EventLoopImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueuedRunnableTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0006H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedRunnableTask;",
        "Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;",
        "block",
        "Ljava/lang/Runnable;",
        "(Ljava/lang/Runnable;)V",
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


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "block"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    nop

    .line 155
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedRunnableTask;->block:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedRunnableTask;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke()V
    .locals 1

    .line 156
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedRunnableTask;->block:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
