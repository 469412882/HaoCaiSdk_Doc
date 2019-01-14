.class public interface abstract Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;
.super Ljava/lang/Object;
.source "BroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/ReceiveChannel;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/experimental/channels/ReceiveChannel<",
        "TT;>;",
        "Ljava/io/Closeable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;",
        "T",
        "Lkotlinx/coroutines/experimental/channels/ReceiveChannel;",
        "Ljava/io/Closeable;",
        "close",
        "",
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
.method public abstract close()V
.end method
