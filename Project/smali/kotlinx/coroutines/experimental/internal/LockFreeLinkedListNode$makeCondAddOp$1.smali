.class public final Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->makeCondAddOp(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1\n*L\n1#1,618:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "kotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;",
        "(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V",
        "prepare",
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
.field final synthetic $condition:Lkotlin/jvm/functions/Function0;

.field final synthetic $node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$captured_local_variable$1"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p3, "$super_call_param$2"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 111
    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1;->$condition:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1;->$node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {p0, p3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    return-void
.end method


# virtual methods
.method public prepare()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 112
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1;->$condition:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->getCONDITION_FALSE()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
