.class final Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;
.super Lkotlinx/coroutines/experimental/channels/Receive;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveElement"
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
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0014\u0010\u000c\u001a\u00020\t2\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J!\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0012\u001a\u00028\u00012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0002\u0010\u0014R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/Receive;",
        "cont",
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "nullOnClose",
        "",
        "(Lkotlinx/coroutines/experimental/CancellableContinuation;Z)V",
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
            "TE;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final nullOnClose:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/CancellableContinuation;Z)V
    .locals 1
    .param p1, "cont"    # Lkotlinx/coroutines/experimental/CancellableContinuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "nullOnClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "-TE;>;Z)V"
        }
    .end annotation

    const-string v0, "cont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    nop

    .line 706
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/Receive;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    iput-boolean p2, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;->nullOnClose:Z

    return-void
.end method


# virtual methods
.method public completeResumeReceive(Ljava/lang/Object;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/experimental/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    return-void
.end method

.method public resumeReceiveClosed(Lkotlinx/coroutines/experimental/channels/Closed;)V
    .locals 2
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

    .line 710
    iget-object v0, p1, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;->nullOnClose:Z

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resume(Ljava/lang/Object;)V

    goto :goto_0

    .line 713
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 714
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveElement["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",nullOnClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;->nullOnClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 707
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/experimental/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
