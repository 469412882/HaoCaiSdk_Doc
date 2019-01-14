.class final Lkotlinx/coroutines/experimental/sync/MutexKt$withMutex$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/sync/MutexKt;->withMutex(Lkotlinx/coroutines/experimental/sync/Mutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
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
.field final synthetic $action:Lkotlin/jvm/functions/Function1;

.field private p$:Lkotlinx/coroutines/experimental/sync/Mutex;

.field private p$0:Lkotlin/jvm/functions/Function1;

.field final synthetic receiver$0:Lkotlinx/coroutines/experimental/sync/Mutex;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/sync/Mutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/sync/MutexKt$withMutex$1;->receiver$0:Lkotlinx/coroutines/experimental/sync/Mutex;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/sync/MutexKt$withMutex$1;->$action:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4
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

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 118
    nop

    .line 119
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :pswitch_0
    if-eqz p2, :cond_2

    :try_start_0
    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 113
    :pswitch_1
    if-eqz p2, :cond_1

    throw p2

    :pswitch_2
    if-eqz p2, :cond_0

    throw p2

    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/experimental/sync/MutexKt$withMutex$1;->receiver$0:Lkotlinx/coroutines/experimental/sync/Mutex;

    iput v2, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-static {p1, v3, p0, v2, v3}, Lkotlinx/coroutines/experimental/sync/Mutex$DefaultImpls;->lock$default(Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 114
    :cond_1
    nop

    .line 115
    :try_start_1
    iget-object p1, p0, Lkotlinx/coroutines/experimental/sync/MutexKt$withMutex$1;->$action:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x2

    iput p2, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 117
    :cond_2
    iget-object p2, p0, Lkotlinx/coroutines/experimental/sync/MutexKt$withMutex$1;->receiver$0:Lkotlinx/coroutines/experimental/sync/Mutex;

    invoke-static {p2, v3, v2, v3}, Lkotlinx/coroutines/experimental/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p1

    :goto_0
    iget-object p2, p0, Lkotlinx/coroutines/experimental/sync/MutexKt$withMutex$1;->receiver$0:Lkotlinx/coroutines/experimental/sync/Mutex;

    invoke-static {p2, v3, v2, v3}, Lkotlinx/coroutines/experimental/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
