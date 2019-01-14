.class public abstract Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/SendChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBufferedDesc;,
        Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendConflatedDesc;,
        Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;,
        Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;,
        Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;,
        Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/experimental/channels/SendChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/experimental/channels/AbstractSendChannel\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationKt\n*L\n1#1,880:1\n286#2,7:881\n182#2,4:888\n182#2,4:892\n182#2,4:902\n194#2:906\n111#2,3:907\n195#2,6:910\n182#2,4:916\n286#2,7:920\n124#3,6:896\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/experimental/channels/AbstractSendChannel\n*L\n98#1,7:881\n104#1,4:888\n111#1,4:892\n200#1,4:902\n201#1:906\n201#1,3:907\n201#1,6:910\n209#1,4:916\n231#1,7:920\n173#1,6:896\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0006<=>?@AB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J!\u0010\u0019\u001a\u000e\u0012\u0002\u0008\u00030\u001aj\u0006\u0012\u0002\u0008\u0003`\u001b2\u0006\u0010\u001c\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u001dJ!\u0010\u001e\u001a\u000e\u0012\u0002\u0008\u00030\u001aj\u0006\u0012\u0002\u0008\u0003`\u001b2\u0006\u0010\u001c\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u001dJ\u001b\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00000 2\u0006\u0010\u001c\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010!J\u0010\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020$H\u0002J\u0013\u0010%\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00028\u0000\u00a2\u0006\u0002\u0010&J\u0015\u0010\'\u001a\u00020(2\u0006\u0010\u001c\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010)J!\u0010*\u001a\u00020(2\u0006\u0010\u001c\u001a\u00028\u00002\n\u0010+\u001a\u0006\u0012\u0002\u0008\u00030,H\u0014\u00a2\u0006\u0002\u0010-JJ\u0010.\u001a\u00020\u0015\"\u0004\u0008\u0001\u0010/2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u0002H/0,2\u0006\u0010\u001c\u001a\u00028\u00002\u001c\u00100\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H/02\u0012\u0006\u0012\u0004\u0018\u00010(01H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u00103J\u0019\u0010#\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00028\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104J\u0015\u00105\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010&J\u0015\u00106\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010&J\u0019\u00107\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104J\u0010\u00108\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u000109H\u0004J\n\u0010:\u001a\u0004\u0018\u00010;H\u0004R\u001a\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00058DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00058DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007R\u0012\u0010\n\u001a\u00020\u000bX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000cR\u0012\u0010\r\u001a\u00020\u000bX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u000e\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u000f\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\u0011X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006B"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/SendChannel;",
        "()V",
        "closedForReceive",
        "Lkotlinx/coroutines/experimental/channels/Closed;",
        "getClosedForReceive",
        "()Lkotlinx/coroutines/experimental/channels/Closed;",
        "closedForSend",
        "getClosedForSend",
        "isBufferAlwaysFull",
        "",
        "()Z",
        "isBufferFull",
        "isClosedForSend",
        "isFull",
        "queue",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;",
        "getQueue",
        "()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;",
        "afterClose",
        "",
        "cause",
        "",
        "close",
        "describeSendBuffered",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;",
        "Lkotlinx/coroutines/experimental/internal/AddLastDesc;",
        "element",
        "(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;",
        "describeSendConflated",
        "describeTryOffer",
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;",
        "(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;",
        "enqueueSend",
        "send",
        "Lkotlinx/coroutines/experimental/channels/SendElement;",
        "offer",
        "(Ljava/lang/Object;)Z",
        "offerInternal",
        "",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "offerSelectInternal",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;",
        "registerSelectSend",
        "R",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "sendBuffered",
        "sendConflated",
        "sendSuspend",
        "takeFirstReceiveOrPeekClosed",
        "Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;",
        "takeFirstSendOrPeekClosed",
        "Lkotlinx/coroutines/experimental/channels/Send;",
        "SendBuffered",
        "SendBufferedDesc",
        "SendConflatedDesc",
        "SendSelect",
        "TryEnqueueSendDesc",
        "TryOfferDesc",
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
.field private final queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    return-void
.end method

.method public static final synthetic access$enqueueSend(Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;Lkotlinx/coroutines/experimental/channels/SendElement;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;
    .param p1, "send"    # Lkotlinx/coroutines/experimental/channels/SendElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->enqueueSend(Lkotlinx/coroutines/experimental/channels/SendElement;)Z

    move-result v0

    return v0
.end method

.method private final enqueueSend(Lkotlinx/coroutines/experimental/channels/SendElement;)Z
    .locals 9
    .param p1, "send"    # Lkotlinx/coroutines/experimental/channels/SendElement;

    .line 199
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->isBufferAlwaysFull()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 902
    .local v0, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .local v3, "$i$f$addLastIfPrev":I
    .local v4, "$i$a$1$addLastIfPrev":I
    :goto_0
    nop

    .line 903
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 903
    .end local v4    # "$i$a$1$addLastIfPrev":I
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 903
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_0
    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 904
    .local v5, "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v6, v5

    .line 200
    .local v6, "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    instance-of v7, v6, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    if-nez v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 200
    .end local v4    # "$i$a$1$addLastIfPrev":I
    .end local v6    # "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    goto :goto_4

    .line 905
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_2
    move-object v6, p1

    check-cast v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v5, v6, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 905
    .end local v4    # "$i$a$1$addLastIfPrev":I
    goto :goto_5

    .line 902
    .end local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_3
    goto :goto_0

    .line 201
    .end local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$addLastIfPrev":I
    .end local v4    # "$i$a$1$addLastIfPrev":I
    :cond_4
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    .line 201
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move v3, v2

    .line 906
    .local v3, "$i$f$addLastIfPrevAndIf":I
    move-object v4, v0

    .line 906
    .local v4, "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move v5, v2

    .line 907
    .local v5, "$i$f$makeCondAddOp":I
    new-instance v6, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1;

    move-object v7, p1

    check-cast v7, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-object v8, p1

    check-cast v8, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {v6, v7, v8, p0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;)V

    check-cast v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;

    .line 909
    .end local v4    # "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v5    # "$i$f$makeCondAddOp":I
    nop

    .line 906
    const/4 v4, 0x0

    .line 910
    .local v4, "$i$a$2$addLastIfPrevAndIf":I
    .local v6, "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_2
    nop

    .line 911
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 911
    .end local v4    # "$i$a$2$addLastIfPrevAndIf":I
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    .restart local v4    # "$i$a$2$addLastIfPrevAndIf":I
    :cond_5
    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 912
    .local v5, "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v7, v5

    .line 201
    .local v7, "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    instance-of v8, v7, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    if-nez v8, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    .line 201
    .end local v4    # "$i$a$2$addLastIfPrevAndIf":I
    .end local v7    # "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_6
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_7

    .line 199
    .end local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$addLastIfPrevAndIf":I
    .end local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v6    # "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_4
    const/4 v1, 0x0

    goto :goto_5

    .line 913
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .restart local v3    # "$i$f$addLastIfPrevAndIf":I
    .restart local v4    # "$i$a$2$addLastIfPrevAndIf":I
    .restart local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .restart local v6    # "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :cond_7
    move-object v7, p1

    check-cast v7, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v5, v7, v0, v6}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 910
    .end local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    goto :goto_2

    .line 915
    .end local v4    # "$i$a$2$addLastIfPrevAndIf":I
    .restart local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :pswitch_0
    goto :goto_4

    .line 914
    :pswitch_1
    nop

    .line 199
    .end local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$addLastIfPrevAndIf":I
    .end local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v6    # "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_5
    nop

    .line 201
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final sendSuspend(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    .local v0, "$i$f$suspendCancellableCoroutine":I
    const/4 v1, 0x1

    .line 896
    .local v1, "holdCancellability$iv":Z
    invoke-static {p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    .line 896
    .local v2, "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    const/4 v3, 0x0

    move v4, v3

    .line 897
    .local v4, "$i$a$1$suspendCoroutineOrReturn":I
    new-instance v5, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    .line 898
    .local v5, "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    if-nez v1, :cond_0

    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initCancellability()V

    .line 899
    :cond_0
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/experimental/CancellableContinuation;

    .line 174
    .local v3, "$i$a$1$suspendCancellableCoroutine":I
    .local v6, "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    new-instance v7, Lkotlinx/coroutines/experimental/channels/SendElement;

    invoke-direct {v7, p1, v6}, Lkotlinx/coroutines/experimental/channels/SendElement;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/experimental/CancellableContinuation;)V

    .line 175
    .local v7, "send":Lkotlinx/coroutines/experimental/channels/SendElement;
    :goto_0
    nop

    .line 176
    invoke-static {p0, v7}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->access$enqueueSend(Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;Lkotlinx/coroutines/experimental/channels/SendElement;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    invoke-interface {v6}, Lkotlinx/coroutines/experimental/CancellableContinuation;->initCancellability()V

    .line 178
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-static {v6, v8}, Lkotlinx/coroutines/experimental/CancellableContinuationKt;->removeOnCancel(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 179
    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 183
    .local v8, "result":Ljava/lang/Object;
    nop

    .line 184
    sget-object v9, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;

    if-ne v8, v9, :cond_2

    .line 185
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v6, v9}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resume(Ljava/lang/Object;)V

    .line 186
    goto :goto_1

    .line 188
    :cond_2
    sget-object v9, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;

    if-ne v8, v9, :cond_3

    .line 188
    .end local v8    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 189
    .restart local v8    # "result":Ljava/lang/Object;
    :cond_3
    instance-of v9, v8, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v9, :cond_4

    .line 190
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-virtual {v9}, Lkotlinx/coroutines/experimental/channels/Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object v9

    invoke-interface {v6, v9}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 191
    nop

    .line 900
    .end local v3    # "$i$a$1$suspendCancellableCoroutine":I
    .end local v6    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    .end local v7    # "send":Lkotlinx/coroutines/experimental/channels/SendElement;
    .end local v8    # "result":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 896
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    .end local v1    # "holdCancellability$iv":Z
    .end local v2    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .end local v4    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    nop

    .line 901
    nop

    .line 196
    return-object v0

    .line 193
    .restart local v0    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "holdCancellability$iv":Z
    .restart local v2    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .restart local v3    # "$i$a$1$suspendCancellableCoroutine":I
    .restart local v4    # "$i$a$1$suspendCoroutineOrReturn":I
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    .restart local v6    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    .restart local v7    # "send":Lkotlinx/coroutines/experimental/channels/SendElement;
    .restart local v8    # "result":Ljava/lang/Object;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "offerInternal returned "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10
.end method


# virtual methods
.method protected afterClose(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 224
    return-void
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 10
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 204
    new-instance v0, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/experimental/channels/Closed;-><init>(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 205
    .local v0, "closed":Lkotlinx/coroutines/experimental/channels/Closed;
    .local v2, "$i$a$1$addLastIfPrev":I
    .local v3, "$i$f$addLastIfPrev":I
    :goto_0
    nop

    .line 206
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    move-result-object v4

    .line 207
    .local v4, "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    if-nez v4, :cond_5

    .line 209
    iget-object v5, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    .line 916
    .local v5, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_1
    nop

    .line 917
    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 917
    .end local v2    # "$i$a$1$addLastIfPrev":I
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 917
    .restart local v2    # "$i$a$1$addLastIfPrev":I
    :cond_0
    check-cast v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 918
    .local v6, "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v7, v6

    .line 209
    .local v7, "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    instance-of v8, v7, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    const/4 v9, 0x1

    if-nez v8, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    .line 209
    .end local v2    # "$i$a$1$addLastIfPrev":I
    .end local v7    # "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_2

    .line 916
    const/4 v5, 0x0

    goto :goto_3

    .line 919
    :cond_2
    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v6, v7, v5}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 916
    const/4 v5, 0x1

    .line 916
    .end local v5    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v6    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_3
    if-eqz v5, :cond_3

    .line 210
    .end local v3    # "$i$f$addLastIfPrev":I
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->afterClose(Ljava/lang/Throwable;)V

    .line 211
    return v9

    .line 213
    .restart local v2    # "$i$a$1$addLastIfPrev":I
    .restart local v3    # "$i$f$addLastIfPrev":I
    :cond_3
    goto :goto_0

    .line 916
    .restart local v5    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_4
    goto :goto_1

    .line 215
    .end local v5    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_5
    instance-of v5, v4, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v5, :cond_6

    .line 215
    .end local v2    # "$i$a$1$addLastIfPrev":I
    .end local v3    # "$i$f$addLastIfPrev":I
    return v1

    .line 216
    .restart local v2    # "$i$a$1$addLastIfPrev":I
    .restart local v3    # "$i$f$addLastIfPrev":I
    :cond_6
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/experimental/channels/Receive;

    .line 217
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/experimental/channels/Receive;

    invoke-virtual {v5, v0}, Lkotlinx/coroutines/experimental/channels/Receive;->resumeReceiveClosed(Lkotlinx/coroutines/experimental/channels/Closed;)V

    .line 205
    .end local v4    # "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    goto :goto_0
.end method

.method protected final describeSendBuffered(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 122
    new-instance v0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBufferedDesc;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBufferedDesc;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;

    return-object v0
.end method

.method protected final describeSendConflated(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 137
    new-instance v0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendConflatedDesc;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendConflatedDesc;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;

    return-object v0
.end method

.method protected final describeTryOffer(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 238
    new-instance v0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;)V

    return-object v0
.end method

.method protected final getClosedForReceive()Lkotlinx/coroutines/experimental/channels/Closed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/Closed<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 91
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/channels/Closed;

    return-object v0
.end method

.method protected final getClosedForSend()Lkotlinx/coroutines/experimental/channels/Closed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/Closed<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 85
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getPrev()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/channels/Closed;

    return-object v0
.end method

.method protected final getQueue()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    return-object v0
.end method

.method protected abstract isBufferAlwaysFull()Z
.end method

.method protected abstract isBufferFull()Z
.end method

.method public final isClosedForSend()Z
    .locals 1

    .line 153
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFull()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 164
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 166
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    .line 168
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/channels/Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 169
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offerInternal returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    :goto_0
    nop

    .line 55
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    .local v0, "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "token":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 59
    invoke-interface {v0}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 54
    .end local v0    # "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    .end local v1    # "token":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;

    return-object v0
.end method

.method protected offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->describeTryOffer(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;

    move-result-object v0

    .line 72
    .local v0, "offerOp":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    invoke-interface {p2, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "failure":Ljava/lang/Object;
    if-eqz v1, :cond_0

    return-object v1

    .line 74
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    .line 75
    .local v2, "receive":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    iget-object v3, v0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryOfferDesc;->resumeToken:Ljava/lang/Object;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v2, v3}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 76
    invoke-interface {v2}, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public registerSelectSend(Lkotlinx/coroutines/experimental/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;TE;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    :goto_0
    nop

    .line 288
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->isFull()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 290
    new-instance v0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;

    invoke-direct {v0, p0, p2, p1, p3}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;-><init>(Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V

    .line 291
    .local v0, "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->performAtomicIfNotSelected(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 292
    .local v1, "enqueueResult":Ljava/lang/Object;
    nop

    .line 293
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-void

    .line 294
    :cond_1
    sget-object v2, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->ENQUEUE_FAILED:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    .line 297
    .end local v0    # "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;
    .end local v1    # "enqueueResult":Ljava/lang/Object;
    goto :goto_1

    .line 295
    .restart local v0    # "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;
    .restart local v1    # "enqueueResult":Ljava/lang/Object;
    :cond_2
    instance-of v2, v1, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/channels/Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2

    .line 296
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performAtomicIfNotSelected(TryEnqueueSendDesc) returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 291
    .end local v1    # "enqueueResult":Ljava/lang/Object;
    :cond_4
    return-void

    .line 299
    .end local v0    # "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;
    :cond_5
    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;

    move-result-object v0

    .line 300
    .local v0, "offerResult":Ljava/lang/Object;
    nop

    .line 301
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_6

    return-void

    .line 302
    :cond_6
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;

    if-ne v0, v1, :cond_7

    .line 309
    .end local v0    # "offerResult":Ljava/lang/Object;
    :goto_1
    nop

    .line 310
    nop

    .line 287
    goto :goto_0

    .line 303
    .restart local v0    # "offerResult":Ljava/lang/Object;
    :cond_7
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;

    if-ne v0, v1, :cond_8

    .line 304
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    invoke-static {p3, v1}, Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;->startCoroutineUndispatched(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V

    .line 305
    return-void

    .line 307
    :cond_8
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/channels/Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 308
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offerSelectInternal returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final send(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 160
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->sendSuspend(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final sendBuffered(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    new-instance v1, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 888
    .local v0, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .local v1, "node$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .local v3, "$i$f$addLastIfPrev":I
    .local v4, "$i$a$1$addLastIfPrev":I
    :goto_0
    nop

    .line 889
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 889
    .end local v4    # "$i$a$1$addLastIfPrev":I
    new-instance v2, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v2, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 889
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_0
    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 890
    .local v5, "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v6, v5

    .line 104
    .local v6, "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    instance-of v7, v6, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    const/4 v8, 0x1

    if-nez v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 104
    .end local v4    # "$i$a$1$addLastIfPrev":I
    .end local v6    # "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    goto :goto_2

    .line 891
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_2
    invoke-virtual {v5, v1, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 104
    .end local v4    # "$i$a$1$addLastIfPrev":I
    const/4 v2, 0x1

    .line 104
    .end local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v1    # "node$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$addLastIfPrev":I
    .end local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_2
    return v2

    .line 888
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .restart local v1    # "node$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .restart local v3    # "$i$f$addLastIfPrev":I
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_3
    goto :goto_0
.end method

.method protected final sendConflated(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 110
    new-instance v0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;-><init>(Ljava/lang/Object;)V

    .line 111
    .local v0, "node":Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 892
    .local v1, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .local v3, "$i$f$addLastIfPrev":I
    .local v4, "$i$a$1$addLastIfPrev":I
    :goto_0
    nop

    .line 893
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 893
    .end local v4    # "$i$a$1$addLastIfPrev":I
    new-instance v2, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v2, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 893
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_0
    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 894
    .local v5, "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v6, v5

    .line 111
    .local v6, "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    instance-of v7, v6, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    const/4 v8, 0x1

    if-nez v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 111
    .end local v4    # "$i$a$1$addLastIfPrev":I
    .end local v6    # "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    .line 892
    const/4 v1, 0x0

    goto :goto_2

    .line 895
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_2
    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v5, v6, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 892
    .end local v4    # "$i$a$1$addLastIfPrev":I
    const/4 v1, 0x1

    .line 892
    .end local v1    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$addLastIfPrev":I
    .end local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_2
    if-nez v1, :cond_3

    .line 111
    return v2

    .line 113
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;->getPrev()Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, "prev":Ljava/lang/Object;
    instance-of v2, v1, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;

    if-eqz v2, :cond_4

    .line 115
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;->remove()Z

    .line 116
    :cond_4
    return v8

    .line 892
    .local v1, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .restart local v3    # "$i$f$addLastIfPrev":I
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_5
    goto :goto_0
.end method

.method protected final takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 231
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 920
    .local v0, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .local v1, "$i$f$removeFirstIfIsInstanceOfOrPeekIf":I
    .local v2, "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :goto_0
    nop

    .line 921
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 921
    .end local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 921
    .restart local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :cond_0
    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 922
    .local v3, "first$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 922
    .end local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    goto :goto_2

    .line 923
    .restart local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :cond_1
    instance-of v4, v3, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    if-nez v4, :cond_2

    .line 923
    .end local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    goto :goto_2

    .line 924
    .restart local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :cond_2
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    .line 231
    .local v4, "it":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    instance-of v4, v4, Lkotlinx/coroutines/experimental/channels/Closed;

    .line 231
    .end local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    .end local v4    # "it":Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;
    if-eqz v4, :cond_3

    goto :goto_1

    .line 925
    .restart local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :cond_3
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->remove()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 920
    .end local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v1    # "$i$f$removeFirstIfIsInstanceOfOrPeekIf":I
    .end local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :goto_1
    move-object v5, v3

    .line 920
    .end local v3    # "first$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_2
    check-cast v5, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    .line 231
    return-object v5

    .line 926
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .restart local v1    # "$i$f$removeFirstIfIsInstanceOfOrPeekIf":I
    .restart local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    .restart local v3    # "first$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_4
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpDelete()V

    .line 920
    .end local v3    # "first$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    goto :goto_0
.end method

.method protected final takeFirstSendOrPeekClosed()Lkotlinx/coroutines/experimental/channels/Send;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 98
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 881
    .local v0, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .local v1, "$i$f$removeFirstIfIsInstanceOfOrPeekIf":I
    .local v2, "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :goto_0
    nop

    .line 882
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 882
    .end local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 882
    .restart local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :cond_0
    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 883
    .local v3, "first$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 883
    .end local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    goto :goto_2

    .line 884
    .restart local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :cond_1
    instance-of v4, v3, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v4, :cond_2

    .line 884
    .end local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    goto :goto_2

    .line 885
    .restart local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :cond_2
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/experimental/channels/Send;

    .line 98
    .local v4, "it":Lkotlinx/coroutines/experimental/channels/Send;
    instance-of v4, v4, Lkotlinx/coroutines/experimental/channels/Closed;

    .line 98
    .end local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    .end local v4    # "it":Lkotlinx/coroutines/experimental/channels/Send;
    if-eqz v4, :cond_3

    goto :goto_1

    .line 886
    .restart local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :cond_3
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->remove()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 881
    .end local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v1    # "$i$f$removeFirstIfIsInstanceOfOrPeekIf":I
    .end local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    :goto_1
    move-object v5, v3

    .line 881
    .end local v3    # "first$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_2
    check-cast v5, Lkotlinx/coroutines/experimental/channels/Send;

    .line 98
    return-object v5

    .line 887
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .restart local v1    # "$i$f$removeFirstIfIsInstanceOfOrPeekIf":I
    .restart local v2    # "$i$a$1$removeFirstIfIsInstanceOfOrPeekIf":I
    .restart local v3    # "first$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_4
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpDelete()V

    .line 881
    .end local v3    # "first$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    goto :goto_0
.end method
