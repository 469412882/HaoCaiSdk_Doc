.class final Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendConflatedDesc;
.super Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBufferedDesc;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendConflatedDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBufferedDesc<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0014\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendConflatedDesc;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBufferedDesc;",
        "queue",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;",
        "element",
        "(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;Ljava/lang/Object;)V",
        "finishOnSuccess",
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
    .locals 1
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

    .line 139
    nop

    .line 142
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBufferedDesc;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
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

    .line 144
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBufferedDesc;->finishOnSuccess(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 146
    instance-of v0, p1, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendBuffered;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->remove()Z

    .line 148
    :cond_0
    return-void
.end method
