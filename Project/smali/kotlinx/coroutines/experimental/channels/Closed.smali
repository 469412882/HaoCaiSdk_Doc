.class public final Lkotlinx/coroutines/experimental/channels/Closed;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/Send;
.implements Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/channels/Send;",
        "Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/experimental/channels/Closed\n*L\n1#1,880:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B\u000f\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J!\u0010\u001a\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001b\u001a\u00028\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0015H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\r\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/Closed;",
        "E",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/channels/Send;",
        "Lkotlinx/coroutines/experimental/channels/ReceiveOrClosed;",
        "closeCause",
        "",
        "(Ljava/lang/Throwable;)V",
        "offerResult",
        "getOfferResult",
        "()Lkotlinx/coroutines/experimental/channels/Closed;",
        "pollResult",
        "getPollResult",
        "receiveException",
        "getReceiveException",
        "()Ljava/lang/Throwable;",
        "sendException",
        "getSendException",
        "completeResumeReceive",
        "",
        "token",
        "",
        "completeResumeSend",
        "",
        "toString",
        "",
        "tryResumeReceive",
        "value",
        "idempotent",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "tryResumeSend",
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
.field public final closeCause:Ljava/lang/Throwable;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "closeCause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 860
    nop

    .line 862
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public completeResumeReceive(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic completeResumeReceive(Ljava/lang/Object;)V
    .locals 0

    .line 860
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/Closed;->completeResumeReceive(Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public completeResumeSend(Ljava/lang/Object;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->CLOSE_RESUMED:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_1
    return-void
.end method

.method public bridge synthetic getOfferResult()Ljava/lang/Object;
    .locals 1

    .line 860
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/Closed;->getOfferResult()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v0

    return-object v0
.end method

.method public getOfferResult()Lkotlinx/coroutines/experimental/channels/Closed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/Closed<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 866
    return-object p0
.end method

.method public bridge synthetic getPollResult()Ljava/lang/Object;
    .locals 1

    .line 860
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/Closed;->getPollResult()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v0

    return-object v0
.end method

.method public getPollResult()Lkotlinx/coroutines/experimental/channels/Closed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/Closed<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 867
    return-object p0
.end method

.method public final getReceiveException()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 864
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/experimental/channels/ClosedReceiveChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    return-object v0
.end method

.method public final getSendException()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 863
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/experimental/channels/ClosedSendChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closed["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResumeReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "idempotent"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 870
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "idempotent"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 868
    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->CLOSE_RESUMED:Ljava/lang/Object;

    return-object v0
.end method
