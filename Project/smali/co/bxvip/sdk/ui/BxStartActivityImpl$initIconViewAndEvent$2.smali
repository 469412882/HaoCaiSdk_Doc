.class final Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "BxStartActivityImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/sdk/ui/BxStartActivityImpl;->initIconViewAndEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Landroid/view/View;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u008a@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "it",
        "Landroid/view/View;",
        "invoke",
        "(Lkotlinx/coroutines/experimental/CoroutineScope;Landroid/view/View;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private p$:Lkotlinx/coroutines/experimental/CoroutineScope;

.field private p$0:Landroid/view/View;

.field final synthetic this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;


# direct methods
.method constructor <init>(Lco/bxvip/sdk/ui/BxStartActivityImpl;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlinx/coroutines/experimental/CoroutineScope;Landroid/view/View;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 2
    .param p1    # Lkotlinx/coroutines/experimental/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "Landroid/view/View;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;

    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-direct {v0, v1, p3}, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;-><init>(Lco/bxvip/sdk/ui/BxStartActivityImpl;Lkotlin/coroutines/experimental/Continuation;)V

    iput-object p1, v0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    iput-object p2, v0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->p$0:Landroid/view/View;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 3
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

    .line 254
    iget v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    if-eqz v0, :cond_0

    .line 264
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_0
    if-eqz p2, :cond_1

    throw p2

    :cond_1
    move-object v0, p0

    .line 254
    .local v0, "this":Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;
    .local p1, "data":Ljava/lang/Object;
    .local p2, "throwable":Ljava/lang/Throwable;
    iget-object v1, v0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    iget-object v1, v0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->p$0:Landroid/view/View;

    .line 255
    nop

    .line 256
    :try_start_0
    iget-object v1, v0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$getMRemoteService$p(Lco/bxvip/sdk/ui/BxStartActivityImpl;)La/b/c/d/e/A;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 257
    iget-object v1, v0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$getMRemoteService$p(Lco/bxvip/sdk/ui/BxStartActivityImpl;)La/b/c/d/e/A;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v2, v0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {v2}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$getMServiceCallbackBinder$p(Lco/bxvip/sdk/ui/BxStartActivityImpl;)Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;

    move-result-object v2

    check-cast v2, La/b/c/d/e/B;

    invoke-interface {v1, v2}, La/b/c/d/e/A;->a(La/b/c/d/e/B;)V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v1, v0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    sget v2, Lco/bxvip/sdk/R$id;->mTvState:I

    invoke-virtual {v1, v2}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "mTvState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\u91cd\u8bd5\u5931\u8d25\uff01"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    goto :goto_1

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 263
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 264
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    check-cast p2, Landroid/view/View;

    check-cast p3, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Landroid/view/View;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Landroid/view/View;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlinx/coroutines/experimental/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "Landroid/view/View;",
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Landroid/view/View;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    check-cast v0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$2;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
