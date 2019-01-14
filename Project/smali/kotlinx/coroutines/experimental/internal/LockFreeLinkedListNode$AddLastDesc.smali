.class public Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddLastDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        ">",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc\n*L\n1#1,618:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\u000e\u0008\u0000\u0010\u0001 \u0001*\u00060\u0002j\u0002`\u00032\u00020\u0004B\u0019\u0012\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0007J \u0010\u0010\u001a\u00020\u00112\n\u0010\u0012\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0013\u001a\u00060\u0002j\u0002`\u0003H\u0014J\"\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0010\u0012\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0013\u001a\u00060\u0002j\u0002`\u0003H\u0014J\u001c\u0010\u0016\u001a\u00020\u00172\n\u0010\u0012\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0013\u001a\u00020\u0015H\u0014J\u0014\u0010\u0018\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0019\u001a\u00020\u001aH\u0004J \u0010\u001b\u001a\u00020\u00152\n\u0010\u0012\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0013\u001a\u00060\u0002j\u0002`\u0003H\u0014R$\u0010\u0008\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u0003@\u0006X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0012\u0010\u0006\u001a\u00028\u00008\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u001c\u0010\u000e\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u00038DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\nR\u0014\u0010\u0005\u001a\u00060\u0002j\u0002`\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;",
        "T",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/internal/Node;",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;",
        "queue",
        "node",
        "(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V",
        "affectedNode",
        "getAffectedNode",
        "()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "setAffectedNode",
        "(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "originalNext",
        "getOriginalNext",
        "finishOnSuccess",
        "",
        "affected",
        "next",
        "onPrepare",
        "",
        "retry",
        "",
        "takeAffectedNode",
        "op",
        "Lkotlinx/coroutines/experimental/internal/OpDescriptor;",
        "updatedNext",
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
.field private affectedNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 2
    .param p1, "queue"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
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
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    nop

    .line 301
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 304
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$get_next$p(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$get_prev$p(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method protected finishOnSuccess(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 2
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-static {v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 342
    return-void
.end method

.method protected final getAffectedNode()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 322
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->affectedNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method protected final getOriginalNext()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 323
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method protected onPrepare(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 1
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->affectedNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 329
    const/4 v0, 0x0

    return-object v0
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

    .line 325
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setAffectedNode(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 322
    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->affectedNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-void
.end method

.method protected final takeAffectedNode(Lkotlinx/coroutines/experimental/internal/OpDescriptor;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 3
    .param p1, "op"    # Lkotlinx/coroutines/experimental/internal/OpDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    :goto_0
    nop

    .line 309
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$get_prev$p(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 310
    .local v0, "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$get_next$p(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v1

    .line 311
    .local v1, "next":Ljava/lang/Object;
    iget-object v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-ne v1, v2, :cond_1

    return-object v0

    .line 312
    :cond_1
    if-ne v1, p1, :cond_2

    return-object v0

    .line 313
    :cond_2
    instance-of v2, v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v2, :cond_3

    .line 314
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    goto :goto_0

    .line 318
    :cond_3
    iget-object v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-static {v2, v0, p1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$helpInsert(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/OpDescriptor;)V

    .line 308
    .end local v0    # "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v1    # "next":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected updatedNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 4
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->PREV:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iget-object v3, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-object v0
.end method
