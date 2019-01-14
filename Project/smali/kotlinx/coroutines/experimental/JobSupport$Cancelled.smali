.class public final Lkotlinx/coroutines/experimental/JobSupport$Cancelled;
.super Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cancelled"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/JobSupport$Cancelled;",
        "Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;",
        "idempotentStart",
        "",
        "cause",
        "",
        "(Ljava/lang/Object;Ljava/lang/Throwable;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "idempotentStart"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 765
    nop

    .line 768
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
