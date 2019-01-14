.class final Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
.super Lkotlinx/coroutines/experimental/channels/ConflatedChannel;
.source "ConflatedBroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Subscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/channels/ConflatedChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel<",
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
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000cR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/ConflatedChannel;",
        "Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;",
        "broadcastChannel",
        "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;",
        "(Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;)V",
        "close",
        "",
        "offerInternal",
        "",
        "element",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private final broadcastChannel:Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;)V
    .locals 1
    .param p1, "broadcastChannel"    # Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "broadcastChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    nop

    .line 262
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ConflatedChannel;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;->close(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;

    invoke-static {v0, p0}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->access$closeSubscriber(Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)V

    .line 266
    :cond_0
    return-void
.end method

.method public offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 268
    invoke-super {p0, p1}, Lkotlinx/coroutines/experimental/channels/ConflatedChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
