.class public final Lkotlinx/coroutines/experimental/channels/ChannelsKt;
.super Ljava/lang/Object;
.source "Channels.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aE\u0010\u0002\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00040\u00052\"\u0010\u0006\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001aE\u0010\u0002\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00040\u000b2\"\u0010\u0006\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\r"
    }
    d2 = {
        "DEFAULT_CLOSE_MESSAGE",
        "",
        "consumeEach",
        "",
        "E",
        "Lkotlinx/coroutines/experimental/channels/BroadcastChannel;",
        "action",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "(Lkotlinx/coroutines/experimental/channels/BroadcastChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/experimental/channels/ReceiveChannel;",
        "(Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final DEFAULT_CLOSE_MESSAGE:Ljava/lang/String; = "Channel was closed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final consumeEach(Lkotlinx/coroutines/experimental/channels/BroadcastChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$receiver"    # Lkotlinx/coroutines/experimental/channels/BroadcastChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "action"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/channels/BroadcastChannel<",
            "TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;-><init>(Lkotlinx/coroutines/experimental/channels/BroadcastChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    return-object v0
.end method

.method public static final consumeEach(Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$receiver"    # Lkotlinx/coroutines/experimental/channels/ReceiveChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "action"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;-><init>(Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    return-object v0
.end method
