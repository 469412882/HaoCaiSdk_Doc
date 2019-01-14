.class final Lkotlinx/coroutines/experimental/RunContinuationCoroutine;
.super Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/CancellableContinuationImpl<",
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007R\u0014\u0010\u0003\u001a\u00020\u0004X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/RunContinuationCoroutine;",
        "T",
        "Lkotlinx/coroutines/experimental/CancellableContinuationImpl;",
        "parentContext",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "continuation",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)V",
        "getParentContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
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
.field private final parentContext:Lkotlin/coroutines/experimental/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1
    .param p1, "parentContext"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    nop

    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/RunContinuationCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method protected getParentContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 159
    iget-object v0, p0, Lkotlinx/coroutines/experimental/RunContinuationCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object v0
.end method
