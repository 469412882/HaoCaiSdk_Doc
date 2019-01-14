.class abstract Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
.super Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;
.source "EventLoop.kt"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lkotlinx/coroutines/experimental/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/EventLoopImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DelayedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;",
        "Ljava/lang/Comparable<",
        "Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;",
        ">;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00a2\u0004\u0018\u00002\u00020\u00012\u000c\u0012\u0008\u0012\u00060\u0000R\u00020\u00030\u00022\u00020\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0015\u0010\u000e\u001a\u00020\u000f2\n\u0010\u0010\u001a\u00060\u0000R\u00020\u0003H\u0096\u0002J\u0006\u0010\u0011\u001a\u00020\rR\u0010\u0010\n\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;",
        "Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;",
        "",
        "Lkotlinx/coroutines/experimental/EventLoopImpl;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "time",
        "",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "(Lkotlinx/coroutines/experimental/EventLoopImpl;JLjava/util/concurrent/TimeUnit;)V",
        "nanoTime",
        "sequence",
        "cancel",
        "",
        "compareTo",
        "",
        "other",
        "dispose",
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
.field public final nanoTime:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final sequence:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/experimental/EventLoopImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/EventLoopImpl;JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "$outer"    # Lkotlinx/coroutines/experimental/EventLoopImpl;
    .param p2, "time"    # J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const-string v0, "timeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->this$0:Lkotlinx/coroutines/experimental/EventLoopImpl;

    .line 161
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;-><init>()V

    .line 162
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long v4, v0, v2

    iput-wide v4, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->nanoTime:J

    .line 163
    invoke-static {p1}, Lkotlinx/coroutines/experimental/EventLoopImpl;->access$getNextSequence$p(Lkotlinx/coroutines/experimental/EventLoopImpl;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->sequence:J

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 178
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 159
    check-cast p1, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->compareTo(Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;)I
    .locals 14
    .param p1, "other"    # Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-wide v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->nanoTime:J

    iget-wide v2, p1, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->nanoTime:J

    sub-long v4, v0, v2

    .line 167
    .local v4, "dTime":J
    const/4 v0, 0x0

    int-to-long v1, v0

    cmp-long v3, v4, v1

    const/4 v6, 0x1

    if-lez v3, :cond_0

    return v6

    .line 168
    :cond_0
    cmp-long v3, v4, v1

    const/4 v7, -0x1

    if-gez v3, :cond_1

    return v7

    .line 169
    :cond_1
    iget-wide v8, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->sequence:J

    iget-wide v10, p1, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->sequence:J

    sub-long v12, v8, v10

    .line 170
    .local v12, "dSequence":J
    cmp-long v3, v12, v1

    if-lez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long v3, v12, v1

    if-gez v3, :cond_3

    const/4 v0, -0x1

    nop

    :cond_3
    :goto_0
    return v0
.end method

.method public final dispose()V
    .locals 1

    .line 174
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->this$0:Lkotlinx/coroutines/experimental/EventLoopImpl;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/EventLoopImpl;->access$getDelayed$p(Lkotlinx/coroutines/experimental/EventLoopImpl;)Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->cancel()V

    .line 176
    return-void
.end method

.method public unregister()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Replace with `dispose`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "dispose()"
            imports = {}
        .end subannotation
    .end annotation

    .line 159
    invoke-static {p0}, Lkotlinx/coroutines/experimental/DisposableHandle$DefaultImpls;->unregister(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    return-void
.end method
