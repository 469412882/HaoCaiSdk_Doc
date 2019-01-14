.class public interface abstract Lkotlinx/coroutines/experimental/channels/Channel;
.super Ljava/lang/Object;
.source "Channel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/SendChannel;
.implements Lkotlinx/coroutines/experimental/channels/ReceiveChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/channels/Channel$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/experimental/channels/SendChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/experimental/channels/ReceiveChannel<",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u0004*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/Channel;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/SendChannel;",
        "Lkotlinx/coroutines/experimental/channels/ReceiveChannel;",
        "Factory",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final CONFLATED:I = -0x1

.field public static final Factory:Lkotlinx/coroutines/experimental/channels/Channel$Factory;

.field public static final UNLIMITED:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/experimental/channels/Channel$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/channels/Channel$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/channels/Channel;->Factory:Lkotlinx/coroutines/experimental/channels/Channel$Factory;

    return-void
.end method
