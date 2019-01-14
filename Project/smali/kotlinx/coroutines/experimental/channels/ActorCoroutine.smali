.class Lkotlinx/coroutines/experimental/channels/ActorCoroutine;
.super Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;
.source "Actor.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/ActorScope;
.implements Lkotlinx/coroutines/experimental/channels/ActorJob;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/channels/ChannelCoroutine<",
        "TE;>;",
        "Lkotlinx/coroutines/experimental/channels/ActorScope<",
        "TE;>;",
        "Lkotlinx/coroutines/experimental/channels/ActorJob<",
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
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0012\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B#\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/ActorCoroutine;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;",
        "Lkotlinx/coroutines/experimental/channels/ActorScope;",
        "Lkotlinx/coroutines/experimental/channels/ActorJob;",
        "parentContext",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "channel",
        "Lkotlinx/coroutines/experimental/channels/Channel;",
        "active",
        "",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/channels/Channel;Z)V",
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
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/channels/Channel;Z)V
    .locals 1
    .param p1, "parentContext"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "channel"    # Lkotlinx/coroutines/experimental/channels/Channel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlinx/coroutines/experimental/channels/Channel<",
            "TE;>;Z)V"
        }
    .end annotation

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    nop

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/experimental/channels/ChannelCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/channels/Channel;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChannel()Lkotlinx/coroutines/experimental/channels/SendChannel;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ActorCoroutine;->getChannel()Lkotlinx/coroutines/experimental/channels/Channel;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/channels/SendChannel;

    return-object v0
.end method
