.class final Lkotlinx/coroutines/experimental/channels/ProducerCoroutine;
.super Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;
.source "Produce.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/ProducerScope;
.implements Lkotlinx/coroutines/experimental/channels/ProducerJob;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/channels/ChannelCoroutine<",
        "TE;>;",
        "Lkotlinx/coroutines/experimental/channels/ProducerScope<",
        "TE;>;",
        "Lkotlinx/coroutines/experimental/channels/ProducerJob<",
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B\u001b\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/ProducerCoroutine;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;",
        "Lkotlinx/coroutines/experimental/channels/ProducerScope;",
        "Lkotlinx/coroutines/experimental/channels/ProducerJob;",
        "parentContext",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "channel",
        "Lkotlinx/coroutines/experimental/channels/Channel;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/channels/Channel;)V",
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
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/channels/Channel;)V
    .locals 1
    .param p1, "parentContext"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "channel"    # Lkotlinx/coroutines/experimental/channels/Channel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlinx/coroutines/experimental/channels/Channel<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    nop

    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/channels/Channel;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChannel()Lkotlinx/coroutines/experimental/channels/ReceiveChannel;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ProducerCoroutine;->getChannel()Lkotlinx/coroutines/experimental/channels/Channel;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/channels/ReceiveChannel;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lkotlinx/coroutines/experimental/channels/SendChannel;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ProducerCoroutine;->getChannel()Lkotlinx/coroutines/experimental/channels/Channel;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/channels/SendChannel;

    return-object v0
.end method
