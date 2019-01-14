.class public interface abstract Lkotlinx/coroutines/experimental/channels/ReceiveChannel;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002J\u000f\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u00a6\u0002J\u000f\u0010\t\u001a\u0004\u0018\u00018\u0000H&\u00a2\u0006\u0002\u0010\nJ\u0011\u0010\u000b\u001a\u00028\u0000H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\r\u001a\u0004\u0018\u00018\u0000H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJH\u0010\u000e\u001a\u00020\u000f\"\u0004\u0008\u0001\u0010\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u00122\"\u0010\u0013\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00100\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0014H&\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016JJ\u0010\u0017\u001a\u00020\u000f\"\u0004\u0008\u0001\u0010\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u00122$\u0010\u0013\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00100\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0014H&\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/ReceiveChannel;",
        "E",
        "",
        "isClosedForReceive",
        "",
        "()Z",
        "isEmpty",
        "iterator",
        "Lkotlinx/coroutines/experimental/channels/ChannelIterator;",
        "poll",
        "()Ljava/lang/Object;",
        "receive",
        "(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "receiveOrNull",
        "registerSelectReceive",
        "",
        "R",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V",
        "registerSelectReceiveOrNull",
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
.method public abstract isClosedForReceive()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract iterator()Lkotlinx/coroutines/experimental/channels/ChannelIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract poll()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract receive(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract receiveOrNull(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract registerSelectReceive(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .param p1    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerSelectReceiveOrNull(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .param p1    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
