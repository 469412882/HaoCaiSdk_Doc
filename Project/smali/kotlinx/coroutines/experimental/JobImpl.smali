.class final Lkotlinx/coroutines/experimental/JobImpl;
.super Lkotlinx/coroutines/experimental/JobSupport;
.source "Job.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/JobImpl;",
        "Lkotlinx/coroutines/experimental/JobSupport;",
        "parent",
        "Lkotlinx/coroutines/experimental/Job;",
        "(Lkotlinx/coroutines/experimental/Job;)V",
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
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lkotlinx/coroutines/experimental/JobImpl;-><init>(Lkotlinx/coroutines/experimental/Job;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/experimental/Job;)V
    .locals 1
    .param p1, "parent"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 848
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;-><init>(Z)V

    .line 849
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/JobImpl;->initParentJob(Lkotlinx/coroutines/experimental/Job;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/experimental/Job;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 848
    const/4 p1, 0x0

    check-cast p1, Lkotlinx/coroutines/experimental/Job;

    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobImpl;-><init>(Lkotlinx/coroutines/experimental/Job;)V

    return-void
.end method
