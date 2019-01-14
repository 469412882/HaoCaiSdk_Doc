.class final Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;
.super Lkotlinx/coroutines/experimental/internal/OpDescriptor;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrepareOp"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp\n*L\n1#1,618:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B!\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00060\u0003j\u0002`\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;",
        "Lkotlinx/coroutines/experimental/internal/OpDescriptor;",
        "next",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/internal/Node;",
        "op",
        "Lkotlinx/coroutines/experimental/internal/AtomicOp;",
        "desc",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;",
        "(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/AtomicOp;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)V",
        "perform",
        "",
        "affected",
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
.field public final desc:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final next:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final op:Lkotlinx/coroutines/experimental/internal/AtomicOp;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/AtomicOp;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)V
    .locals 1
    .param p1, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "op"    # Lkotlinx/coroutines/experimental/internal/AtomicOp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "desc"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "op"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    nop

    .line 397
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->next:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->op:Lkotlinx/coroutines/experimental/internal/AtomicOp;

    iput-object p3, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->desc:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    return-void
.end method


# virtual methods
.method public perform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "affected"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 399
    if-nez p1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 400
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->desc:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->next:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->onPrepare(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    .local v0, "decision":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 402
    invoke-static {}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->access$getREMOVE_PREPARED$p()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 404
    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->next:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-static {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$removed(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/internal/Removed;

    move-result-object v1

    .line 405
    .local v1, "removed":Lkotlinx/coroutines/experimental/internal/Removed;
    sget-object v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 406
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpDelete()V

    .line 406
    .end local v1    # "removed":Lkotlinx/coroutines/experimental/internal/Removed;
    goto :goto_0

    .line 410
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->op:Lkotlinx/coroutines/experimental/internal/AtomicOp;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/experimental/internal/AtomicOp;->tryDecide(Ljava/lang/Object;)Z

    .line 412
    sget-object v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->next:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v1, p1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 413
    :cond_2
    :goto_0
    nop

    .line 414
    return-object v0

    .line 416
    :cond_3
    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->desc:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->getAffectedNode()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 417
    :cond_5
    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->desc:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->getOriginalNext()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v1

    iget-object v4, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->next:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-ne v1, v4, :cond_6

    const/4 v2, 0x1

    nop

    :cond_6
    if-nez v2, :cond_7

    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 418
    :cond_7
    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->op:Lkotlinx/coroutines/experimental/internal/AtomicOp;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/AtomicOp;->isDecided()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->next:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->op:Lkotlinx/coroutines/experimental/internal/AtomicOp;

    .line 419
    .local v1, "update":Ljava/lang/Object;
    :goto_2
    sget-object v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 420
    const/4 v2, 0x0

    return-object v2
.end method
