.class public final Lkotlinx/coroutines/experimental/PoolThread;
.super Ljava/lang/Thread;
.source "ThreadPoolDispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/PoolThread;",
        "Ljava/lang/Thread;",
        "dispatcher",
        "Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;",
        "target",
        "Ljava/lang/Runnable;",
        "name",
        "",
        "(Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;Ljava/lang/Runnable;Ljava/lang/String;)V",
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
.field public final dispatcher:Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "dispatcher"    # Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "target"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    nop

    .line 51
    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/PoolThread;->dispatcher:Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/PoolThread;->setDaemon(Z)V

    return-void
.end method
