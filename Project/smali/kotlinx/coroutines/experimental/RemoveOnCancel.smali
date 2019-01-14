.class final Lkotlinx/coroutines/experimental/RemoveOnCancel;
.super Lkotlinx/coroutines/experimental/JobNode;
.source "CancellableContinuation.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/experimental/JobNode<",
        "Lkotlinx/coroutines/experimental/CancellableContinuation<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001B\u0019\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/RemoveOnCancel;",
        "Lkotlinx/coroutines/experimental/JobNode;",
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "cont",
        "node",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V",
        "getNode",
        "()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "invoke",
        "",
        "reason",
        "",
        "toString",
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
.field private final node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 1
    .param p1, "cont"    # Lkotlinx/coroutines/experimental/CancellableContinuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "*>;",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            ")V"
        }
    .end annotation

    const-string v0, "cont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    .line 144
    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/JobNode;-><init>(Lkotlinx/coroutines/experimental/Job;)V

    iput-object p2, p0, Lkotlinx/coroutines/experimental/RemoveOnCancel;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-void
.end method


# virtual methods
.method public final getNode()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 143
    iget-object v0, p0, Lkotlinx/coroutines/experimental/RemoveOnCancel;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/RemoveOnCancel;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 146
    iget-object v0, p0, Lkotlinx/coroutines/experimental/RemoveOnCancel;->job:Lkotlinx/coroutines/experimental/Job;

    check-cast v0, Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/CancellableContinuation;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lkotlinx/coroutines/experimental/RemoveOnCancel;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->remove()Z

    .line 148
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveOnCancel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/RemoveOnCancel;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
