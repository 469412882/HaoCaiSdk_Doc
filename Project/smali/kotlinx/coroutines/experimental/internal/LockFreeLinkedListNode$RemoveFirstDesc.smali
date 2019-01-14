.class public Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveFirstDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc\n*L\n1#1,618:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0011\u0012\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0010\u0015\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\u0016\u001a\u00020\u0014H\u0014J \u0010\u0017\u001a\u00020\u00182\n\u0010\u0015\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u0016\u001a\u00060\u0004j\u0002`\u0005H\u0004J\"\u0010\u0019\u001a\u0004\u0018\u00010\u00142\n\u0010\u0015\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u0016\u001a\u00060\u0004j\u0002`\u0005H\u0005J\u001c\u0010\u001a\u001a\u00020\u001b2\n\u0010\u0015\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\u0016\u001a\u00020\u0014H\u0004J\u0014\u0010\u001c\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\u001d\u001a\u00020\u001eH\u0004J \u0010\u001f\u001a\u00020\u00142\n\u0010\u0015\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u0016\u001a\u00060\u0004j\u0002`\u0005H\u0004J\u0015\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\"R$\u0010\u0007\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005@\u0006X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0006R$\u0010\u000b\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005@\u0006X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u0006R\u0014\u0010\u0003\u001a\u00060\u0004j\u0002`\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00028\u00008FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;",
        "T",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;",
        "queue",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/internal/Node;",
        "(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V",
        "affectedNode",
        "getAffectedNode",
        "()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "setAffectedNode",
        "originalNext",
        "getOriginalNext",
        "setOriginalNext",
        "result",
        "result$annotations",
        "()V",
        "getResult",
        "()Ljava/lang/Object;",
        "failure",
        "",
        "affected",
        "next",
        "finishOnSuccess",
        "",
        "onPrepare",
        "retry",
        "",
        "takeAffectedNode",
        "op",
        "Lkotlinx/coroutines/experimental/internal/OpDescriptor;",
        "updatedNext",
        "validatePrepared",
        "node",
        "(Ljava/lang/Object;)Z",
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

.field private originalNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 1
    .param p1, "queue"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    nop

    .line 347
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-void
.end method

.method public static synthetic result$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
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

    .line 357
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->getLIST_EMPTY()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected final finishOnSuccess(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 1
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

    .line 378
    invoke-static {p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$finishRemove(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    return-void
.end method

.method protected final getAffectedNode()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 352
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;->affectedNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method protected final getOriginalNext()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 353
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;->originalNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;->affectedNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method protected final onPrepare(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 2
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

    .line 370
    instance-of v0, p1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    if-nez v0, :cond_0

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

    .line 371
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;->validatePrepared(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->access$getREMOVE_PREPARED$p()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 372
    :cond_2
    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;->affectedNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 373
    iput-object p2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;->originalNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final retry(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Z
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

    .line 363
    instance-of v0, p2, Lkotlinx/coroutines/experimental/internal/Removed;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 364
    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpDelete()V

    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public final setAffectedNode(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 352
    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;->affectedNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-void
.end method

.method public final setOriginalNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 353
    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;->originalNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-void
.end method

.method protected final takeAffectedNode(Lkotlinx/coroutines/experimental/internal/OpDescriptor;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 2
    .param p1, "op"    # Lkotlinx/coroutines/experimental/internal/OpDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method protected final updatedNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 1
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

    .line 377
    invoke-static {p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$removed(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/internal/Removed;

    move-result-object v0

    return-object v0
.end method

.method protected validatePrepared(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 360
    const/4 v0, 0x1

    return v0
.end method
