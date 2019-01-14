.class final Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;
.super Lkotlinx/coroutines/experimental/channels/Receive;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveHasNext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/channels/Receive<",
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
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B!\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0014\u0010\r\u001a\u00020\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J!\u0010\u0012\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0013\u001a\u00028\u00012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0002\u0010\u0015R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/Receive;",
        "iterator",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;",
        "cont",
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "",
        "(Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;Lkotlinx/coroutines/experimental/CancellableContinuation;)V",
        "completeResumeReceive",
        "",
        "token",
        "",
        "resumeReceiveClosed",
        "closed",
        "Lkotlinx/coroutines/experimental/channels/Closed;",
        "toString",
        "",
        "tryResumeReceive",
        "value",
        "idempotent",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
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
.field public final cont:Lkotlinx/coroutines/experimental/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final iterator:Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;Lkotlinx/coroutines/experimental/CancellableContinuation;)V
    .locals 1
    .param p1, "iterator"    # Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "cont"    # Lkotlinx/coroutines/experimental/CancellableContinuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr<",
            "TE;>;",
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cont"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    nop

    .line 721
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/Receive;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->iterator:Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public completeResumeReceive(Ljava/lang/Object;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    instance-of v0, p1, Lkotlinx/coroutines/experimental/channels/AbstractChannel$IdempotentTokenValue;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->iterator:Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/experimental/channels/AbstractChannel$IdempotentTokenValue;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/channels/AbstractChannel$IdempotentTokenValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->setResult(Ljava/lang/Object;)V

    .line 739
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/experimental/channels/AbstractChannel$IdempotentTokenValue;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/channels/AbstractChannel$IdempotentTokenValue;->token:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    goto :goto_0

    .line 741
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/experimental/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    .line 742
    :goto_0
    return-void
.end method

.method public resumeReceiveClosed(Lkotlinx/coroutines/experimental/channels/Closed;)V
    .locals 4
    .param p1, "closed"    # Lkotlinx/coroutines/experimental/channels/Closed;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/channels/Closed<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "closed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    iget-object v0, p1, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlinx/coroutines/experimental/CancellableContinuation$DefaultImpls;->tryResume$default(Lkotlinx/coroutines/experimental/CancellableContinuation;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/CancellableContinuation;->tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 745
    :goto_0
    nop

    .line 749
    .local v0, "token":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 750
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->iterator:Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->setResult(Ljava/lang/Object;)V

    .line 751
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/experimental/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    .line 753
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveHasNext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResumeReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 723
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/experimental/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 724
    .local v0, "token":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 730
    if-eqz p2, :cond_0

    new-instance v1, Lkotlinx/coroutines/experimental/channels/AbstractChannel$IdempotentTokenValue;

    invoke-direct {v1, v0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$IdempotentTokenValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 731
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveHasNext;->iterator:Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$Itr;->setResult(Ljava/lang/Object;)V

    .line 733
    :cond_1
    return-object v0
.end method
