.class final Lkotlinx/coroutines/experimental/channels/AbstractChannel$removeReceiveOnCancel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/channels/AbstractChannel;->removeReceiveOnCancel(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/channels/Receive;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

.field final synthetic $receive:Lkotlinx/coroutines/experimental/channels/Receive;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/channels/AbstractChannel;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/channels/Receive;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$removeReceiveOnCancel$1;->this$0:Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$removeReceiveOnCancel$1;->$cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    iput-object p3, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$removeReceiveOnCancel$1;->$receive:Lkotlinx/coroutines/experimental/channels/Receive;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 352
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$removeReceiveOnCancel$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "it"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 639
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$removeReceiveOnCancel$1;->$cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/CancellableContinuation;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$removeReceiveOnCancel$1;->$receive:Lkotlinx/coroutines/experimental/channels/Receive;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/Receive;->remove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$removeReceiveOnCancel$1;->this$0:Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->onCancelledReceive()V

    .line 641
    :cond_0
    return-void
.end method
