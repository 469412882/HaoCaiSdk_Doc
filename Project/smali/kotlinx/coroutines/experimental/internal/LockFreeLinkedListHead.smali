.class public Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.source "LockFreeLinkedList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J-\u0010\u0008\u001a\u00020\t\"\u000e\u0008\u0000\u0010\n\u0018\u0001*\u00060\u0001j\u0002`\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u0002H\n\u0012\u0004\u0012\u00020\t0\rH\u0086\u0008J\u0006\u0010\u000e\u001a\u00020\u000fJ\r\u0010\u0010\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u0011R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "()V",
        "isEmpty",
        "",
        "()Z",
        "describeRemove",
        "Lkotlinx/coroutines/experimental/internal/AtomicDesc;",
        "forEach",
        "",
        "T",
        "Lkotlinx/coroutines/experimental/internal/Node;",
        "block",
        "Lkotlin/Function1;",
        "remove",
        "",
        "validate",
        "validate$kotlinx_coroutines_core",
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

    .line 588
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;-><init>()V

    return-void
.end method

.method private final forEach(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 595
    .local v0, "$i$f$forEach":I
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 596
    .local v1, "cur":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_0
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 597
    const/4 v2, 0x3

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v2, v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_1
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v1

    .line 596
    goto :goto_0

    .line 600
    :cond_2
    return-void
.end method


# virtual methods
.method public final describeRemove()Lkotlinx/coroutines/experimental/internal/AtomicDesc;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 604
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final isEmpty()Z
    .locals 2

    .line 589
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()Ljava/lang/Void;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 603
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public bridge synthetic remove()Z
    .locals 1

    .line 588
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->remove()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final validate$kotlinx_coroutines_core()V
    .locals 4

    .line 607
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 608
    .local v0, "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 609
    .local v1, "cur":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_0
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 610
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v2

    .line 611
    .local v2, "next":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->validateNode$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 612
    move-object v0, v1

    .line 613
    move-object v1, v2

    .line 609
    .end local v2    # "next":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {p0, v0, v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->validateNode$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 616
    return-void
.end method
