.class public abstract Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
.super Lkotlinx/coroutines/experimental/internal/AtomicOp;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CondAddOp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008!\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0002\u0010\u0005J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016R\u0014\u0010\u0002\u001a\u00060\u0003j\u0002`\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;",
        "Lkotlinx/coroutines/experimental/internal/AtomicOp;",
        "newNode",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/internal/Node;",
        "(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V",
        "oldNext",
        "complete",
        "",
        "affected",
        "",
        "failure",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# instance fields
.field public final newNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public oldNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 1
    .param p1, "newNode"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    nop

    .line 95
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/AtomicOp;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->newNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "affected"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "failure"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 99
    if-nez p1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 100
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 101
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->newNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->oldNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 102
    .local v1, "update":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_1
    sget-object v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    if-eqz v0, :cond_4

    iget-object v2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->newNode:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iget-object v3, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->oldNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-static {v2, v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 106
    :cond_4
    return-void
.end method
