.class public Lkotlinx/coroutines/experimental/channels/ConflatedChannel;
.super Lkotlinx/coroutines/experimental/channels/AbstractChannel;
.source "ConflatedChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConflatedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedChannel.kt\nkotlinx/coroutines/experimental/channels/ConflatedChannel\n*L\n1#1,70:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\rJ!\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00028\u00002\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u0010H\u0014\u00a2\u0006\u0002\u0010\u0011R\u0014\u0010\u0004\u001a\u00020\u00058DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00058DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0006R\u0014\u0010\u0008\u001a\u00020\u00058DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u00058DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/ConflatedChannel;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel;",
        "()V",
        "isBufferAlwaysEmpty",
        "",
        "()Z",
        "isBufferAlwaysFull",
        "isBufferEmpty",
        "isBufferFull",
        "offerInternal",
        "",
        "element",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "offerSelectInternal",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;",
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

    .line 31
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;-><init>()V

    return-void
.end method


# virtual methods
.method protected final isBufferAlwaysEmpty()Z
    .locals 1

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method protected final isBufferAlwaysFull()Z
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method protected final isBufferEmpty()Z
    .locals 1

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method protected final isBufferFull()Z
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    :goto_0
    nop

    .line 40
    invoke-super {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 42
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;

    return-object v1

    .line 43
    :cond_0
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 44
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/ConflatedChannel;->sendConflated(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;

    return-object v1

    .line 49
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1
    nop

    .line 39
    goto :goto_0

    .line 47
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v1, :cond_3

    return-object v0

    .line 48
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offerInternal result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method protected offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :goto_0
    nop

    .line 56
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ConflatedChannel;->getHasReceiveOrClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/ConflatedChannel;->describeSendConflated(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    invoke-interface {p2, v0}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;

    .line 56
    :goto_1
    nop

    .line 59
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 60
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 61
    :cond_2
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;

    return-object v1

    .line 62
    :cond_3
    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 65
    .end local v0    # "result":Ljava/lang/Object;
    nop

    .line 55
    goto :goto_0

    .line 63
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_4
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v1, :cond_5

    return-object v0

    .line 64
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
