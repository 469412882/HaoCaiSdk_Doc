.class final Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "Channels.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/channels/ChannelsKt;->consumeEach(Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $action:Lkotlin/jvm/functions/Function2;

.field private L$0:Ljava/lang/Object;

.field private L$1:Ljava/lang/Object;

.field private p$:Lkotlinx/coroutines/experimental/channels/ReceiveChannel;

.field private p$0:Lkotlin/jvm/functions/Function2;

.field final synthetic receiver$0:Lkotlinx/coroutines/experimental/channels/ReceiveChannel;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->receiver$0:Lkotlinx/coroutines/experimental/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->$action:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :pswitch_0
    iget-object p1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/experimental/channels/ChannelIterator;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->L$0:Ljava/lang/Object;

    if-eqz p2, :cond_3

    throw p2

    :pswitch_1
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ChannelIterator;

    if-eqz p2, :cond_0

    throw p2

    :cond_0
    move-object p2, p0

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ChannelIterator;

    if-eqz p2, :cond_1

    throw p2

    :cond_1
    move-object p2, p0

    goto :goto_1

    :pswitch_3
    if-eqz p2, :cond_2

    throw p2

    :cond_2
    iget-object p1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->receiver$0:Lkotlinx/coroutines/experimental/channels/ReceiveChannel;

    invoke-interface {p1}, Lkotlinx/coroutines/experimental/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/experimental/channels/ChannelIterator;

    move-result-object p1

    :cond_3
    move-object v1, p1

    move-object p1, p0

    :goto_0
    iput-object v1, p1, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->L$0:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, p1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {v1, p1}, Lkotlinx/coroutines/experimental/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iput-object v1, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p2, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {v1, p2}, Lkotlinx/coroutines/experimental/channels/ChannelIterator;->next(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    iget-object v2, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->$action:Lkotlin/jvm/functions/Function2;

    iput-object p1, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->L$0:Ljava/lang/Object;

    iput-object v1, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, p2, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {v2, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object p1, p2

    goto :goto_0

    .line 27
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
