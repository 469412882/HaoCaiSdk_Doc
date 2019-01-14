.class public final Lkotlinx/coroutines/experimental/channels/SendElement;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/Send;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0016R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/SendElement;",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/channels/Send;",
        "pollResult",
        "",
        "cont",
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "",
        "(Ljava/lang/Object;Lkotlinx/coroutines/experimental/CancellableContinuation;)V",
        "getPollResult",
        "()Ljava/lang/Object;",
        "completeResumeSend",
        "token",
        "toString",
        "",
        "tryResumeSend",
        "idempotent",
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
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pollResult:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/experimental/CancellableContinuation;)V
    .locals 1
    .param p1, "pollResult"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cont"    # Lkotlinx/coroutines/experimental/CancellableContinuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cont"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    nop

    .line 850
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/SendElement;->pollResult:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/channels/SendElement;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public completeResumeSend(Ljava/lang/Object;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/SendElement;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/experimental/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    return-void
.end method

.method public getPollResult()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 848
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/SendElement;->pollResult:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendElement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/SendElement;->getPollResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/SendElement;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "idempotent"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 851
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/SendElement;->cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/experimental/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
