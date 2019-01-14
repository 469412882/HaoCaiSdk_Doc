.class public abstract Lkotlinx/coroutines/experimental/channels/AbstractChannel;
.super Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;,
        Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;,
        Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;,
        Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;,
        Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;,
        Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;,
        Lkotlinx/coroutines/experimental/channels/AbstractChannel$IdempotentTokenValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/experimental/channels/Channel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/experimental/channels/AbstractChannel\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationKt\n+ 3 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode\n*L\n1#1,880:1\n124#2,6:881\n124#2,6:901\n182#3,4:887\n194#3:891\n111#3,3:892\n195#3,6:895\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/experimental/channels/AbstractChannel\n*L\n428#1,6:881\n476#1,6:901\n451#1,4:887\n452#1:891\n452#1,3:892\n452#1,6:895\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u00070123456B\u0005\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eH\u0004J\u0016\u0010\u000f\u001a\u00020\u00062\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0002J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013H\u0086\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0014J\u0008\u0010\u0016\u001a\u00020\u0015H\u0014J\u000f\u0010\u0017\u001a\u0004\u0018\u00018\u0000H\u0007\u00a2\u0006\u0002\u0010\u0018J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u001dH\u0014J\u0011\u0010\u0010\u001a\u00028\u0000H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u0004\u0018\u00018\u0000H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ\u0019\u0010 \u001a\u0004\u0018\u00018\u00002\u0008\u0010!\u001a\u0004\u0018\u00010\u001aH\u0003\u00a2\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u0004\u0018\u00018\u0000H\u0083@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ\u0017\u0010$\u001a\u00028\u00002\u0008\u0010!\u001a\u0004\u0018\u00010\u001aH\u0003\u00a2\u0006\u0002\u0010\"J\u0011\u0010%\u001a\u00028\u0000H\u0083@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJH\u0010&\u001a\u00020\u0015\"\u0004\u0008\u0001\u0010\'2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\'0\u001d2\"\u0010(\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\'0*\u0012\u0006\u0012\u0004\u0018\u00010\u001a0)H\u0017\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010+JJ\u0010,\u001a\u00020\u0015\"\u0004\u0008\u0001\u0010\'2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\'0\u001d2$\u0010(\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\'0*\u0012\u0006\u0012\u0004\u0018\u00010\u001a0)H\u0017\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010+J \u0010-\u001a\u00020\u00152\n\u0010.\u001a\u0006\u0012\u0002\u0008\u00030/2\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0011H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0012\u0010\t\u001a\u00020\u0006X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008R\u0012\u0010\n\u001a\u00020\u0006X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0008R\u0011\u0010\u000c\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u00067"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;",
        "Lkotlinx/coroutines/experimental/channels/Channel;",
        "()V",
        "hasReceiveOrClosed",
        "",
        "getHasReceiveOrClosed",
        "()Z",
        "isBufferAlwaysEmpty",
        "isBufferEmpty",
        "isClosedForReceive",
        "isEmpty",
        "describeTryPoll",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;",
        "enqueueReceive",
        "receive",
        "Lkotlinx/coroutines/experimental/channels/Receive;",
        "iterator",
        "Lkotlinx/coroutines/experimental/channels/ChannelIterator;",
        "onCancelledReceive",
        "",
        "onEnqueuedReceive",
        "poll",
        "()Ljava/lang/Object;",
        "pollInternal",
        "",
        "pollSelectInternal",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "receiveOrNull",
        "receiveOrNullResult",
        "result",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "receiveOrNullSuspend",
        "receiveResult",
        "receiveSuspend",
        "registerSelectReceive",
        "R",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V",
        "registerSelectReceiveOrNull",
        "removeReceiveOnCancel",
        "cont",
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "IdempotentTokenValue",
        "Itr",
        "ReceiveElement",
        "ReceiveHasNext",
        "ReceiveSelect",
        "TryEnqueueReceiveDesc",
        "TryPollDesc",
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

    .line 352
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;-><init>()V

    return-void
.end method

.method public static final synthetic access$enqueueReceive(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/channels/Receive;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/channels/AbstractChannel;
    .param p1, "receive"    # Lkotlinx/coroutines/experimental/channels/Receive;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 352
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->enqueueReceive(Lkotlinx/coroutines/experimental/channels/Receive;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$removeReceiveOnCancel(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/channels/Receive;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/channels/AbstractChannel;
    .param p1, "cont"    # Lkotlinx/coroutines/experimental/CancellableContinuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "receive"    # Lkotlinx/coroutines/experimental/channels/Receive;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 352
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->removeReceiveOnCancel(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/channels/Receive;)V

    return-void
.end method

.method private final enqueueReceive(Lkotlinx/coroutines/experimental/channels/Receive;)Z
    .locals 9
    .param p1, "receive"    # Lkotlinx/coroutines/experimental/channels/Receive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/channels/Receive<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->isBufferAlwaysEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 451
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->getQueue()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 887
    .local v0, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .local v3, "$i$f$addLastIfPrev":I
    .local v4, "$i$a$1$addLastIfPrev":I
    :goto_0
    nop

    .line 888
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 888
    .end local v4    # "$i$a$1$addLastIfPrev":I
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 888
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_0
    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 889
    .local v5, "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v6, v5

    .line 451
    .local v6, "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    instance-of v7, v6, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 451
    .end local v4    # "$i$a$1$addLastIfPrev":I
    .end local v6    # "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    goto :goto_4

    .line 890
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_2
    move-object v6, p1

    check-cast v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v5, v6, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 890
    .end local v4    # "$i$a$1$addLastIfPrev":I
    goto :goto_5

    .line 887
    .end local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .restart local v4    # "$i$a$1$addLastIfPrev":I
    :cond_3
    goto :goto_0

    .line 452
    .end local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$addLastIfPrev":I
    .end local v4    # "$i$a$1$addLastIfPrev":I
    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->getQueue()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    move-result-object v0

    .line 452
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move v3, v2

    .line 891
    .local v3, "$i$f$addLastIfPrevAndIf":I
    move-object v4, v0

    .line 891
    .local v4, "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move v5, v2

    .line 892
    .local v5, "$i$f$makeCondAddOp":I
    new-instance v6, Lkotlinx/coroutines/experimental/channels/AbstractChannel$enqueueReceive$$inlined$addLastIfPrevAndIf$1;

    move-object v7, p1

    check-cast v7, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-object v8, p1

    check-cast v8, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {v6, v7, v8, p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$enqueueReceive$$inlined$addLastIfPrevAndIf$1;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/channels/AbstractChannel;)V

    check-cast v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;

    .line 894
    .end local v4    # "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v5    # "$i$f$makeCondAddOp":I
    nop

    .line 891
    const/4 v4, 0x0

    .line 895
    .local v4, "$i$a$2$addLastIfPrevAndIf":I
    .local v6, "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_2
    nop

    .line 896
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 896
    .end local v4    # "$i$a$2$addLastIfPrevAndIf":I
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 896
    .restart local v4    # "$i$a$2$addLastIfPrevAndIf":I
    :cond_5
    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 897
    .local v5, "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v7, v5

    .line 452
    .local v7, "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    instance-of v8, v7, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v8, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    .line 452
    .end local v4    # "$i$a$2$addLastIfPrevAndIf":I
    .end local v7    # "it":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_6
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_7

    .line 450
    .end local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$addLastIfPrevAndIf":I
    .end local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v6    # "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_4
    const/4 v1, 0x0

    goto :goto_5

    .line 898
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

    .line 895
    .end local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    goto :goto_2

    .line 900
    .end local v4    # "$i$a$2$addLastIfPrevAndIf":I
    .restart local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :pswitch_0
    goto :goto_4

    .line 899
    :pswitch_1
    nop

    .line 450
    .end local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$addLastIfPrevAndIf":I
    .end local v5    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v6    # "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_5
    move v0, v1

    .line 453
    .local v0, "result":Z
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->onEnqueuedReceive()V

    .line 454
    :cond_8
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final receiveOrNullResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 468
    instance-of v0, p1, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v0, :cond_1

    .line 469
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/channels/Closed;

    iget-object v0, v0, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/channels/Closed;

    iget-object v0, v0, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    throw v0

    .line 470
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 472
    :cond_1
    return-object p1
.end method

.method private final receiveOrNullSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 476
    .local v0, "$i$f$suspendCancellableCoroutine":I
    const/4 v1, 0x1

    .line 901
    .local v1, "holdCancellability$iv":Z
    invoke-static {p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    .line 901
    .local v2, "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    const/4 v3, 0x0

    move v4, v3

    .line 902
    .local v4, "$i$a$1$suspendCoroutineOrReturn":I
    new-instance v5, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    .line 903
    .local v5, "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    if-nez v1, :cond_0

    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initCancellability()V

    .line 904
    :cond_0
    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/experimental/CancellableContinuation;

    .line 477
    .local v3, "$i$a$1$suspendCancellableCoroutine":I
    .local v7, "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    new-instance v8, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;

    invoke-direct {v8, v7, v6}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;-><init>(Lkotlinx/coroutines/experimental/CancellableContinuation;Z)V

    .line 478
    .local v8, "receive":Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;
    :goto_0
    nop

    .line 479
    move-object v6, v8

    check-cast v6, Lkotlinx/coroutines/experimental/channels/Receive;

    invoke-static {p0, v6}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->access$enqueueReceive(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/channels/Receive;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 480
    invoke-interface {v7}, Lkotlinx/coroutines/experimental/CancellableContinuation;->initCancellability()V

    .line 481
    move-object v6, v8

    check-cast v6, Lkotlinx/coroutines/experimental/channels/Receive;

    invoke-static {p0, v7, v6}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->access$removeReceiveOnCancel(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/channels/Receive;)V

    .line 482
    goto :goto_2

    .line 485
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v6

    .line 486
    .local v6, "result":Ljava/lang/Object;
    instance-of v9, v6, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v9, :cond_3

    .line 487
    move-object v9, v6

    check-cast v9, Lkotlinx/coroutines/experimental/channels/Closed;

    iget-object v9, v9, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v9, :cond_2

    .line 488
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resume(Ljava/lang/Object;)V

    goto :goto_1

    .line 490
    :cond_2
    move-object v9, v6

    check-cast v9, Lkotlinx/coroutines/experimental/channels/Closed;

    iget-object v9, v9, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-interface {v7, v9}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 491
    :goto_1
    goto :goto_2

    .line 493
    :cond_3
    sget-object v9, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v6, v9, :cond_4

    .line 494
    invoke-interface {v7, v6}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resume(Ljava/lang/Object;)V

    .line 495
    nop

    .line 905
    .end local v3    # "$i$a$1$suspendCancellableCoroutine":I
    .end local v6    # "result":Ljava/lang/Object;
    .end local v7    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    .end local v8    # "receive":Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;
    :goto_2
    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 901
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    .end local v1    # "holdCancellability$iv":Z
    .end local v2    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .end local v4    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    nop

    .line 906
    nop

    .line 498
    return-object v0

    .line 478
    .restart local v0    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "holdCancellability$iv":Z
    .restart local v2    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .restart local v3    # "$i$a$1$suspendCancellableCoroutine":I
    .restart local v4    # "$i$a$1$suspendCoroutineOrReturn":I
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    .restart local v7    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    .restart local v8    # "receive":Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;
    :cond_4
    goto :goto_0
.end method

.method private final receiveResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 423
    instance-of v0, p1, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 424
    :cond_0
    return-object p1
.end method

.method private final receiveSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 428
    .local v0, "$i$f$suspendCancellableCoroutine":I
    const/4 v1, 0x1

    .line 881
    .local v1, "holdCancellability$iv":Z
    invoke-static {p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    .line 881
    .local v2, "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    const/4 v3, 0x0

    move v4, v3

    .line 882
    .local v4, "$i$a$1$suspendCoroutineOrReturn":I
    new-instance v5, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    .line 883
    .local v5, "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    if-nez v1, :cond_0

    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initCancellability()V

    .line 884
    :cond_0
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/experimental/CancellableContinuation;

    .line 884
    .local v6, "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    move v7, v3

    .line 429
    .local v7, "$i$a$1$suspendCancellableCoroutine":I
    new-instance v8, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;

    invoke-direct {v8, v6, v3}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;-><init>(Lkotlinx/coroutines/experimental/CancellableContinuation;Z)V

    .line 430
    .local v8, "receive":Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;
    :goto_0
    nop

    .line 431
    move-object v3, v8

    check-cast v3, Lkotlinx/coroutines/experimental/channels/Receive;

    invoke-static {p0, v3}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->access$enqueueReceive(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/channels/Receive;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    invoke-interface {v6}, Lkotlinx/coroutines/experimental/CancellableContinuation;->initCancellability()V

    .line 433
    move-object v3, v8

    check-cast v3, Lkotlinx/coroutines/experimental/channels/Receive;

    invoke-static {p0, v6, v3}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->access$removeReceiveOnCancel(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/channels/Receive;)V

    .line 434
    goto :goto_1

    .line 437
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v3

    .line 438
    .local v3, "result":Ljava/lang/Object;
    instance-of v9, v3, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v9, :cond_2

    .line 439
    move-object v9, v3

    check-cast v9, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-virtual {v9}, Lkotlinx/coroutines/experimental/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v9

    invoke-interface {v6, v9}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 440
    goto :goto_1

    .line 442
    :cond_2
    sget-object v9, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v3, v9, :cond_3

    .line 443
    invoke-interface {v6, v3}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resume(Ljava/lang/Object;)V

    .line 444
    nop

    .line 885
    .end local v3    # "result":Ljava/lang/Object;
    .end local v6    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    .end local v7    # "$i$a$1$suspendCancellableCoroutine":I
    .end local v8    # "receive":Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;
    :goto_1
    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 881
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    .end local v1    # "holdCancellability$iv":Z
    .end local v2    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .end local v4    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    nop

    .line 886
    nop

    .line 447
    return-object v0

    .line 430
    .restart local v0    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "holdCancellability$iv":Z
    .restart local v2    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .restart local v4    # "$i$a$1$suspendCoroutineOrReturn":I
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    .restart local v6    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    .restart local v7    # "$i$a$1$suspendCancellableCoroutine":I
    .restart local v8    # "receive":Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;
    :cond_3
    goto :goto_0
.end method

.method private final removeReceiveOnCancel(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/channels/Receive;)V
    .locals 1
    .param p1, "cont"    # Lkotlinx/coroutines/experimental/CancellableContinuation;
    .param p2, "receive"    # Lkotlinx/coroutines/experimental/channels/Receive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "*>;",
            "Lkotlinx/coroutines/experimental/channels/Receive<",
            "*>;)V"
        }
    .end annotation

    .line 638
    new-instance v0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$removeReceiveOnCancel$1;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$removeReceiveOnCancel$1;-><init>(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/channels/Receive;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/experimental/CancellableContinuation;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 642
    return-void
.end method


# virtual methods
.method protected final describeTryPoll()Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 513
    new-instance v0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->getQueue()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;)V

    return-object v0
.end method

.method protected final getHasReceiveOrClosed()Z
    .locals 1

    .line 405
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->getQueue()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    return v0
.end method

.method protected abstract isBufferAlwaysEmpty()Z
.end method

.method protected abstract isBufferEmpty()Z
.end method

.method public final isClosedForReceive()Z
    .locals 1

    .line 409
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->getClosedForReceive()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 410
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->getQueue()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final iterator()Lkotlinx/coroutines/experimental/channels/ChannelIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 506
    new-instance v0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;-><init>(Lkotlinx/coroutines/experimental/channels/AbstractChannel;)V

    check-cast v0, Lkotlinx/coroutines/experimental/channels/ChannelIterator;

    return-object v0
.end method

.method protected onCancelledReceive()V
    .locals 0

    .line 633
    return-void
.end method

.method protected onEnqueuedReceive()V
    .locals 0

    .line 628
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 502
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v0

    .line 503
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->receiveOrNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected pollInternal()Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 375
    :goto_0
    nop

    .line 376
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/experimental/channels/Send;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    .local v0, "send":Lkotlinx/coroutines/experimental/channels/Send;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/channels/Send;->tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 378
    .local v1, "token":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 379
    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/channels/Send;->completeResumeSend(Ljava/lang/Object;)V

    .line 380
    invoke-interface {v0}, Lkotlinx/coroutines/experimental/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 375
    .end local v0    # "send":Lkotlinx/coroutines/experimental/channels/Send;
    .end local v1    # "token":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 376
    :cond_1
    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    return-object v0
.end method

.method protected pollSelectInternal(Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;
    .locals 4
    .param p1, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->describeTryPoll()Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;

    move-result-object v0

    .line 393
    .local v0, "pollOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v1

    .line 394
    .local v1, "failure":Ljava/lang/Object;
    if-eqz v1, :cond_0

    return-object v1

    .line 395
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/experimental/channels/Send;

    .line 396
    .local v2, "send":Lkotlinx/coroutines/experimental/channels/Send;
    iget-object v3, v0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;->resumeToken:Ljava/lang/Object;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v2, v3}, Lkotlinx/coroutines/experimental/channels/Send;->completeResumeSend(Ljava/lang/Object;)V

    .line 397
    iget-object v3, v0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;->pollResult:Ljava/lang/Object;

    return-object v3
.end method

.method public final receive(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v0

    .line 416
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->receiveResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 418
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->receiveSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final receiveOrNull(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v0

    .line 461
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->receiveOrNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 463
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->receiveOrNullSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public registerSelectReceive(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p1, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    :goto_0
    nop

    .line 564
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 565
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 566
    new-instance v0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;-><init>(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;Z)V

    .line 567
    .local v0, "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->performAtomicIfNotSelected(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 568
    .local v1, "enqueueResult":Ljava/lang/Object;
    nop

    .line 569
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-void

    .line 570
    :cond_1
    sget-object v2, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->ENQUEUE_FAILED:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    .line 572
    .end local v0    # "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;
    .end local v1    # "enqueueResult":Ljava/lang/Object;
    goto :goto_1

    .line 571
    .restart local v0    # "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;
    .restart local v1    # "enqueueResult":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performAtomicIfNotSelected(TryEnqueueReceiveDesc) returned "

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

    .line 567
    .end local v1    # "enqueueResult":Ljava/lang/Object;
    :cond_3
    return-void

    .line 574
    .end local v0    # "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;
    :cond_4
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->pollSelectInternal(Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;

    move-result-object v0

    .line 575
    .local v0, "pollResult":Ljava/lang/Object;
    nop

    .line 576
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    return-void

    .line 577
    :cond_5
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-ne v0, v1, :cond_6

    .line 583
    .end local v0    # "pollResult":Ljava/lang/Object;
    :goto_1
    nop

    .line 584
    nop

    .line 563
    goto :goto_0

    .line 578
    .restart local v0    # "pollResult":Ljava/lang/Object;
    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/Closed;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 580
    :cond_7
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;->startCoroutineUndispatched(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 581
    return-void
.end method

.method public registerSelectReceiveOrNull(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p1, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    :goto_0
    nop

    .line 591
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 592
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 593
    new-instance v0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;-><init>(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;Z)V

    .line 594
    .local v0, "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->performAtomicIfNotSelected(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 595
    .local v1, "enqueueResult":Ljava/lang/Object;
    nop

    .line 596
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-void

    .line 597
    :cond_1
    sget-object v2, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->ENQUEUE_FAILED:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    .line 599
    .end local v0    # "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;
    .end local v1    # "enqueueResult":Ljava/lang/Object;
    goto :goto_1

    .line 598
    .restart local v0    # "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;
    .restart local v1    # "enqueueResult":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performAtomicIfNotSelected(TryEnqueueReceiveDesc) returned "

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

    .line 594
    .end local v1    # "enqueueResult":Ljava/lang/Object;
    :cond_3
    return-void

    .line 601
    .end local v0    # "enqueueOp":Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;
    :cond_4
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->pollSelectInternal(Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;

    move-result-object v0

    .line 602
    .local v0, "pollResult":Ljava/lang/Object;
    nop

    .line 603
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    return-void

    .line 604
    :cond_5
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-ne v0, v1, :cond_6

    .line 618
    .end local v0    # "pollResult":Ljava/lang/Object;
    :goto_1
    nop

    .line 619
    nop

    .line 590
    goto :goto_0

    .line 605
    .restart local v0    # "pollResult":Ljava/lang/Object;
    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v1, :cond_9

    .line 606
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/Closed;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    .line 607
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 608
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;->startCoroutineUndispatched(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 609
    :cond_7
    return-void

    .line 611
    :cond_8
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/Closed;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    throw v1

    .line 615
    :cond_9
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;->startCoroutineUndispatched(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 616
    return-void
.end method
