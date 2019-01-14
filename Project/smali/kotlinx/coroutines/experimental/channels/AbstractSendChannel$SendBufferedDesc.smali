.class Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBufferedDesc;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendBufferedDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc<",
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered<",
        "+TE;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0012\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00012\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00030\u0002j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0003`\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\nH\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBufferedDesc;",
        "E",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;",
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;",
        "Lkotlinx/coroutines/experimental/internal/AddLastDesc;",
        "queue",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;",
        "element",
        "(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;Ljava/lang/Object;)V",
        "failure",
        "",
        "affected",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "next",
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
.method public constructor <init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;Ljava/lang/Object;)V
    .locals 2
    .param p1, "queue"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;",
            "TE;)V"
        }
    .end annotation

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    new-instance v1, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;

    invoke-direct {v1, p2}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 127
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

    .line 129
    instance-of v0, p1, Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;

    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
