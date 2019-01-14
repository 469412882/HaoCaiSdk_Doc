.class Lkotlinx/coroutines/experimental/StandaloneCoroutine;
.super Lkotlinx/coroutines/experimental/AbstractCoroutine;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/experimental/AbstractCoroutine<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0012\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014R\u0014\u0010\u0003\u001a\u00020\u0004X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/StandaloneCoroutine;",
        "Lkotlinx/coroutines/experimental/AbstractCoroutine;",
        "",
        "parentContext",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "active",
        "",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Z)V",
        "getParentContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "afterCompletion",
        "state",
        "",
        "mode",
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
.field private final parentContext:Lkotlin/coroutines/experimental/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V
    .locals 1
    .param p1, "parentContext"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "active"    # Z

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    nop

    .line 137
    invoke-direct {p0, p2}, Lkotlinx/coroutines/experimental/AbstractCoroutine;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/StandaloneCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method protected afterCompletion(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "state"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "mode"    # I

    .line 140
    instance-of v0, p1, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/StandaloneCoroutine;->getParentContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected getParentContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 135
    iget-object v0, p0, Lkotlinx/coroutines/experimental/StandaloneCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object v0
.end method
