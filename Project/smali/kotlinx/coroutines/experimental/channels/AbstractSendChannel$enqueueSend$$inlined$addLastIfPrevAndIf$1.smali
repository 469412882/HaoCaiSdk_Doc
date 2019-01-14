.class public final Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->enqueueSend(Lkotlinx/coroutines/experimental/channels/SendElement;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1\n+ 2 AbstractChannel.kt\nkotlinx/coroutines/experimental/channels/AbstractSendChannel\n*L\n1#1,618:1\n201#2:619\n*E\n"
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
.field final synthetic $node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;)V
    .locals 0
    .param p1, "$captured_local_variable$1"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p2, "$super_call_param$2"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1;->$node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    iput-object p3, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1;->this$0:Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;

    .line 111
    invoke-direct {p0, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    return-void
.end method


# virtual methods
.method public prepare()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 112
    .local v0, "$i$a$3$addLastIfPrevAndIf":I
    nop

    .line 619
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1;->this$0:Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->isBufferFull()Z

    move-result v0

    .line 619
    .end local v0    # "$i$a$3$addLastIfPrevAndIf":I
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->getCONDITION_FALSE()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
