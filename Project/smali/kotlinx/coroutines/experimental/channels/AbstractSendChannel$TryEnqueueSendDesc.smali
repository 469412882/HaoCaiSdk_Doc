.class final Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TryEnqueueSendDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc<",
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect<",
        "TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u0000*\u0004\u0008\u0001\u0010\u0001*\u0004\u0008\u0002\u0010\u00022\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0004`\u0005B<\u0012\u0006\u0010\u0006\u001a\u00028\u0001\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0008\u0012\u001c\u0010\t\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u0014J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0014J\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0014\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;",
        "E",
        "R",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;",
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;",
        "Lkotlinx/coroutines/experimental/internal/AddLastDesc;",
        "element",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "(Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V",
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
.field final synthetic this$0:Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "$outer"    # Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;
    .param p2, "element"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;->this$0:Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;

    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->getQueue()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    new-instance v1, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;

    invoke-direct {v1, p2, p3, p4}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 266
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    return-void
.end method


# virtual methods
.method protected failure(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 268
    instance-of v0, p1, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 269
    instance-of v0, p1, Lkotlinx/coroutines/experimental/channels/Closed;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    check-cast v1, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->ENQUEUE_FAILED:Ljava/lang/Object;

    :goto_1
    return-object v1

    .line 271
    :cond_2
    return-object v1
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

    .line 280
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->finishOnSuccess(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 282
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    check-cast v0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->disposeOnSelect()V

    .line 283
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

    .line 275
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$TryEnqueueSendDesc;->this$0:Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->isBufferFull()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->ENQUEUE_FAILED:Ljava/lang/Object;

    return-object v0

    .line 276
    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->onPrepare(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
