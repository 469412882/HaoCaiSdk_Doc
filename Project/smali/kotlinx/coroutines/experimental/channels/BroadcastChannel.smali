.class public interface abstract Lkotlinx/coroutines/experimental/channels/BroadcastChannel;
.super Ljava/lang/Object;
.source "BroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/SendChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/experimental/channels/SendChannel<",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H&\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/BroadcastChannel;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/SendChannel;",
        "open",
        "Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# virtual methods
.method public abstract open()Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
