.class public final Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TryPollDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc<",
        "Lkotlinx/coroutines/experimental/channels/Send;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000bH\u0014J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0003H\u0015R\u0016\u0010\u0008\u001a\u0004\u0018\u00018\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;",
        "E",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;",
        "Lkotlinx/coroutines/experimental/channels/Send;",
        "Lkotlinx/coroutines/experimental/internal/RemoveFirstDesc;",
        "queue",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;",
        "(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;)V",
        "pollResult",
        "Ljava/lang/Object;",
        "resumeToken",
        "",
        "failure",
        "affected",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "next",
        "validatePrepared",
        "",
        "node",
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
.field public pollResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public resumeToken:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;)V
    .locals 1
    .param p1, "queue"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

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

    .line 523
    instance-of v0, p1, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v0, :cond_0

    return-object p1

    .line 524
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    return-object v0

    .line 525
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic validatePrepared(Ljava/lang/Object;)Z
    .locals 0

    .line 518
    check-cast p1, Lkotlinx/coroutines/experimental/channels/Send;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;->validatePrepared(Lkotlinx/coroutines/experimental/channels/Send;)Z

    move-result p1

    return p1
.end method

.method protected validatePrepared(Lkotlinx/coroutines/experimental/channels/Send;)Z
    .locals 2
    .param p1, "node"    # Lkotlinx/coroutines/experimental/channels/Send;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    invoke-interface {p1, p0}, Lkotlinx/coroutines/experimental/channels/Send;->tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    .local v0, "token":Ljava/lang/Object;
    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;->resumeToken:Ljava/lang/Object;

    .line 532
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$TryPollDesc;->pollResult:Ljava/lang/Object;

    .line 533
    const/4 v1, 0x1

    return v1

    .line 530
    .end local v0    # "token":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
