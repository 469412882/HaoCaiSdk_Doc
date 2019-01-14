.class final Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TryEnqueueReceiveDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc<",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel<",
        "TE;>.ReceiveSelect<TR;-TE;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u0000*\u0004\u0008\u0002\u0010\u00022>\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00010\u0004R\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u0003j\u001e\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00010\u0004R\u0008\u0012\u0004\u0012\u00028\u00000\u0005`\u0006BD\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0008\u0012$\u0010\t\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\n\u0012\u0006\u0010\r\u001a\u00020\u000e\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000cH\u0014J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0014J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0014\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;",
        "E",
        "R",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel;",
        "Lkotlinx/coroutines/experimental/internal/AddLastDesc;",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "nullOnClose",
        "",
        "(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;Z)V",
        "failure",
        "affected",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "next",
        "finishOnSuccess",
        "",
        "onPrepare",
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
.field final synthetic this$0:Lkotlinx/coroutines/experimental/channels/AbstractChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;Z)V
    .locals 2
    .param p1, "$outer"    # Lkotlinx/coroutines/experimental/channels/AbstractChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .param p4, "nullOnClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;->this$0:Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->getQueue()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    new-instance v1, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;

    invoke-direct {v1, p1, p2, p3, p4}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;-><init>(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;Z)V

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 541
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

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

    .line 543
    instance-of v0, p1, Lkotlinx/coroutines/experimental/channels/Send;

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->ENQUEUE_FAILED:Ljava/lang/Object;

    return-object v0

    .line 544
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected finishOnSuccess(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
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

    .line 553
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->finishOnSuccess(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 555
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;->this$0:Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->onEnqueuedReceive()V

    .line 557
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    check-cast v0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->removeOnSelectCompletion()V

    .line 558
    return-void
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

    .line 548
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryEnqueueReceiveDesc;->this$0:Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->isBufferEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->ENQUEUE_FAILED:Ljava/lang/Object;

    return-object v0

    .line 549
    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->onPrepare(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
