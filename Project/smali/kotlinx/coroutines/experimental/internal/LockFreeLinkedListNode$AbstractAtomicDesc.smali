.class public abstract Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
.super Lkotlinx/coroutines/experimental/internal/AtomicDesc;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractAtomicDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc\n*L\n1#1,618:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0010\u0010\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\u0011\u001a\u00020\u000fH\u0014J \u0010\u0012\u001a\u00020\u000b2\n\u0010\u0010\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u0011\u001a\u00060\u0004j\u0002`\u0005H$J\"\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\n\u0010\u0010\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u0011\u001a\u00060\u0004j\u0002`\u0005H$J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000c\u001a\u00020\rJ\u001c\u0010\u0015\u001a\u00020\u00162\n\u0010\u0010\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\u0011\u001a\u00020\u000fH\u0014J\u0014\u0010\u0017\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\u000c\u001a\u00020\u0018H\u0014J \u0010\u0019\u001a\u00020\u000f2\n\u0010\u0010\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u0011\u001a\u00060\u0004j\u0002`\u0005H$R\u001a\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;",
        "Lkotlinx/coroutines/experimental/internal/AtomicDesc;",
        "()V",
        "affectedNode",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/internal/Node;",
        "getAffectedNode",
        "()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "originalNext",
        "getOriginalNext",
        "complete",
        "",
        "op",
        "Lkotlinx/coroutines/experimental/internal/AtomicOp;",
        "failure",
        "",
        "affected",
        "next",
        "finishOnSuccess",
        "onPrepare",
        "prepare",
        "retry",
        "",
        "takeAffectedNode",
        "Lkotlinx/coroutines/experimental/internal/OpDescriptor;",
        "updatedNext",
        "PrepareOp",
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
    .locals 0

    .line 381
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/AtomicDesc;-><init>()V

    return-void
.end method


# virtual methods
.method public final complete(Lkotlinx/coroutines/experimental/internal/AtomicOp;Ljava/lang/Object;)V
    .locals 6
    .param p1, "op"    # Lkotlinx/coroutines/experimental/internal/AtomicOp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "failure"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 453
    .local v2, "success":Z
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->getAffectedNode()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 454
    .local v3, "affectedNode":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->getOriginalNext()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v0, v4

    .line 455
    .local v0, "originalNext":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    if-eqz v2, :cond_1

    invoke-virtual {p0, v3, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->updatedNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 456
    .local v1, "update":Ljava/lang/Object;
    :goto_1
    sget-object v4, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v3, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 457
    if-eqz v2, :cond_2

    invoke-virtual {p0, v3, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->finishOnSuccess(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 459
    :cond_2
    return-void

    .line 454
    .end local v0    # "originalNext":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v1    # "update":Ljava/lang/Object;
    :cond_3
    move-object v4, p0

    check-cast v4, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    .line 454
    .local v4, "$receiver":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
    move v5, v1

    .line 454
    .local v5, "$i$a$1$run":I
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_5
    return-void

    .line 453
    .end local v3    # "affectedNode":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v4    # "$receiver":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
    .end local v5    # "$i$a$1$run":I
    :cond_6
    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    .line 453
    .local v3, "$receiver":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
    move v4, v1

    .line 453
    .local v4, "$i$a$1$run":I
    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_8

    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_8
    return-void
.end method

.method protected failure(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract finishOnSuccess(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .param p1    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method protected abstract getAffectedNode()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method protected abstract getOriginalNext()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method protected abstract onPrepare(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .param p1    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final prepare(Lkotlinx/coroutines/experimental/internal/AtomicOp;)Ljava/lang/Object;
    .locals 6
    .param p1, "op"    # Lkotlinx/coroutines/experimental/internal/AtomicOp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    :goto_0
    nop

    .line 426
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->takeAffectedNode(Lkotlinx/coroutines/experimental/internal/OpDescriptor;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v0

    .line 428
    .local v0, "affected":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$get_next$p(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v1

    .line 430
    .local v1, "next":Ljava/lang/Object;
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/internal/AtomicOp;->isDecided()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 431
    :cond_0
    if-ne v1, p1, :cond_1

    return-object v3

    .line 432
    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v2, :cond_2

    .line 434
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->failure(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 439
    .local v2, "failure":Ljava/lang/Object;
    if-eqz v2, :cond_3

    return-object v2

    .line 440
    :cond_3
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->retry(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 440
    .end local v0    # "affected":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v1    # "next":Ljava/lang/Object;
    .end local v2    # "failure":Ljava/lang/Object;
    goto :goto_0

    .line 441
    .restart local v0    # "affected":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .restart local v1    # "next":Ljava/lang/Object;
    .restart local v2    # "failure":Ljava/lang/Object;
    :cond_4
    new-instance v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;

    if-nez v1, :cond_5

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {v3, v4, p1, p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/AtomicOp;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)V

    .line 442
    .local v3, "prepareOp":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;
    sget-object v4, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 444
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 445
    .local v4, "prepFail":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->access$getREMOVE_PREPARED$p()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_6

    .line 445
    .end local v0    # "affected":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v1    # "next":Ljava/lang/Object;
    .end local v2    # "failure":Ljava/lang/Object;
    .end local v3    # "prepareOp":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;
    .end local v4    # "prepFail":Ljava/lang/Object;
    goto :goto_0

    .line 446
    .restart local v0    # "affected":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .restart local v1    # "next":Ljava/lang/Object;
    .restart local v2    # "failure":Ljava/lang/Object;
    .restart local v3    # "prepareOp":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;
    .restart local v4    # "prepFail":Ljava/lang/Object;
    :cond_6
    return-object v4

    .line 425
    .end local v0    # "affected":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v1    # "next":Ljava/lang/Object;
    .end local v2    # "failure":Ljava/lang/Object;
    .end local v3    # "prepareOp":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;
    .end local v4    # "prepFail":Ljava/lang/Object;
    :cond_7
    goto :goto_0
.end method

.method protected retry(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method protected takeAffectedNode(Lkotlinx/coroutines/experimental/internal/OpDescriptor;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 1
    .param p1, "op"    # Lkotlinx/coroutines/experimental/internal/OpDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->getAffectedNode()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method

.method protected abstract updatedNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .param p1    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
