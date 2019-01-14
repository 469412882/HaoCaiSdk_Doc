.class public final Lkotlinx/coroutines/experimental/channels/Channel$Factory;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0001\u0010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004H\u0086\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/Channel$Factory;",
        "",
        "()V",
        "CONFLATED",
        "",
        "UNLIMITED",
        "invoke",
        "Lkotlinx/coroutines/experimental/channels/Channel;",
        "E",
        "capacity",
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

.field public static final UNLIMITED:I = 0x7fffffff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 232
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/Channel$Factory;-><init>()V

    return-void
.end method

.method public static bridge synthetic invoke$default(Lkotlinx/coroutines/experimental/channels/Channel$Factory;IILjava/lang/Object;)Lkotlinx/coroutines/experimental/channels/Channel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 254
    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/Channel$Factory;->invoke(I)Lkotlinx/coroutines/experimental/channels/Channel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final invoke(I)Lkotlinx/coroutines/experimental/channels/Channel;
    .locals 1
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lkotlinx/coroutines/experimental/channels/Channel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 255
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 259
    new-instance v0, Lkotlinx/coroutines/experimental/channels/ArrayChannel;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/experimental/channels/ArrayChannel;-><init>(I)V

    check-cast v0, Lkotlinx/coroutines/experimental/channels/Channel;

    goto :goto_0

    .line 256
    :pswitch_0
    new-instance v0, Lkotlinx/coroutines/experimental/channels/RendezvousChannel;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/channels/RendezvousChannel;-><init>()V

    check-cast v0, Lkotlinx/coroutines/experimental/channels/Channel;

    goto :goto_0

    .line 258
    :pswitch_1
    new-instance v0, Lkotlinx/coroutines/experimental/channels/ConflatedChannel;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/channels/ConflatedChannel;-><init>()V

    check-cast v0, Lkotlinx/coroutines/experimental/channels/Channel;

    goto :goto_0

    .line 257
    :cond_0
    new-instance v0, Lkotlinx/coroutines/experimental/channels/LinkedListChannel;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/channels/LinkedListChannel;-><init>()V

    check-cast v0, Lkotlinx/coroutines/experimental/channels/Channel;

    .line 255
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
