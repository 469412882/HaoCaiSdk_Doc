.class final Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "Channels.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/channels/ChannelsKt;->consumeEach(Lkotlinx/coroutines/experimental/channels/BroadcastChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/experimental/channels/ChannelsKt\n*L\n1#1,38:1\n*E\n"
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

.field private I$0:I

.field private L$0:Ljava/lang/Object;

.field private L$1:Ljava/lang/Object;

.field private L$2:Ljava/lang/Object;

.field private L$3:Ljava/lang/Object;

.field private p$:Lkotlinx/coroutines/experimental/channels/BroadcastChannel;

.field private p$0:Lkotlin/jvm/functions/Function2;

.field final synthetic receiver$0:Lkotlinx/coroutines/experimental/channels/BroadcastChannel;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/channels/BroadcastChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->receiver$0:Lkotlinx/coroutines/experimental/channels/BroadcastChannel;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->$action:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 10
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

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :pswitch_0
    iget-object p1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$3:Ljava/lang/Object;

    iget-object p1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/experimental/channels/ChannelIterator;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;

    iget v3, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->I$0:I

    iget-object v4, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/io/Closeable;

    if-eqz p2, :cond_0

    :try_start_0
    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :catchall_0
    move-exception p1

    move v0, v3

    goto/16 :goto_6

    .line 35
    :cond_0
    move p2, v3

    move-object v3, v1

    move-object v1, p1

    move-object p1, p0

    goto/16 :goto_1

    :pswitch_1
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ChannelIterator;

    iget-object v3, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;

    iget v4, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->I$0:I

    iget-object v5, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/io/Closeable;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p0

    move-object v8, v5

    move-object v5, v0

    move v0, v4

    move-object v4, v8

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto/16 :goto_3

    :pswitch_2
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ChannelIterator;

    iget-object v3, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;

    iget v4, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->I$0:I

    iget-object v5, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/io/Closeable;

    if-eqz p2, :cond_2

    :goto_0
    :try_start_1
    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :catchall_1
    move-exception p1

    move v0, v4

    move-object v4, v5

    goto/16 :goto_6

    :catch_0
    move-exception p1

    move-object v4, v5

    goto/16 :goto_4

    .line 35
    :cond_2
    move-object p2, p0

    move-object v8, v5

    move-object v5, v0

    move v0, v4

    move-object v4, v8

    goto :goto_2

    :pswitch_3
    if-eqz p2, :cond_3

    throw p2

    .line 34
    :cond_3
    iget-object p1, p0, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->receiver$0:Lkotlinx/coroutines/experimental/channels/BroadcastChannel;

    invoke-interface {p1}, Lkotlinx/coroutines/experimental/channels/BroadcastChannel;->open()Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/io/Closeable;

    const/4 p1, 0x0

    :try_start_2
    move-object p2, v4

    check-cast p2, Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;

    .line 35
    invoke-interface {p2}, Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;->iterator()Lkotlinx/coroutines/experimental/channels/ChannelIterator;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object p1, p0

    move-object v3, p2

    const/4 p2, 0x0

    :goto_1
    :try_start_3
    iput-object v4, p1, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$0:Ljava/lang/Object;

    iput p2, p1, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->I$0:I

    iput-object v3, p1, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$1:Ljava/lang/Object;

    iput-object v1, p1, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$2:Ljava/lang/Object;

    iput v2, p1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {v1, p1}, Lkotlinx/coroutines/experimental/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v5, v0, :cond_4

    return-object v0

    :cond_4
    move v8, p2

    move-object p2, p1

    move-object p1, v5

    move-object v5, v0

    move v0, v8

    :goto_2
    :try_start_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iput-object v4, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$0:Ljava/lang/Object;

    iput v0, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->I$0:I

    iput-object v3, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$1:Ljava/lang/Object;

    iput-object v1, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$2:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p2, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {v1, p2}, Lkotlinx/coroutines/experimental/channels/ChannelIterator;->next(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_5

    return-object v5

    :cond_5
    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    :goto_3
    iget-object v6, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->$action:Lkotlin/jvm/functions/Function2;

    iput-object v4, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$0:Ljava/lang/Object;

    iput v0, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->I$0:I

    iput-object v1, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$1:Ljava/lang/Object;

    iput-object v3, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$2:Ljava/lang/Object;

    iput-object p1, p2, Lkotlinx/coroutines/experimental/channels/ChannelsKt$consumeEach$2;->L$3:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, p2, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {v6, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_6

    return-object v5

    :cond_6
    move-object p1, p2

    move p2, v0

    move-object v0, v5

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_1

    .line 36
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 34
    if-nez v0, :cond_8

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    .line 37
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 34
    :catchall_2
    move-exception p1

    goto :goto_6

    :catchall_3
    move-exception p1

    move v0, p2

    goto :goto_6

    :catchall_4
    move-exception p2

    move-object p1, p2

    const/4 v0, 0x0

    goto :goto_6

    :catch_1
    move-exception p1

    :goto_4
    if-eqz v4, :cond_9

    :try_start_5
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p1

    const/4 v0, 0x1

    goto :goto_6

    :catch_2
    move-exception p2

    :cond_9
    :goto_5
    :try_start_6
    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_6
    if-nez v0, :cond_a

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    :cond_a
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
