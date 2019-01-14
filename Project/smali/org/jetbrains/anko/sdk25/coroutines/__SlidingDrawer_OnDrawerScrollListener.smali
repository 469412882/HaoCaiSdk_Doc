.class public final Lorg/jetbrains/anko/sdk25/coroutines/__SlidingDrawer_OnDrawerScrollListener;
.super Ljava/lang/Object;
.source "ListenersWithCoroutines.kt"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerScrollListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\tH\u0016J7\u0010\u000e\u001a\u00020\t2\'\u0010\u000f\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0006\u00a2\u0006\u0002\u0008\u000b\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u0011\u001a\u00020\tH\u0016J7\u0010\u0011\u001a\u00020\t2\'\u0010\u000f\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0006\u00a2\u0006\u0002\u0008\u000b\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010R6\u0010\u0005\u001a%\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u000bX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u000cR6\u0010\r\u001a%\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u000bX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/jetbrains/anko/sdk25/coroutines/__SlidingDrawer_OnDrawerScrollListener;",
        "Landroid/widget/SlidingDrawer$OnDrawerScrollListener;",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;)V",
        "_onScrollEnded",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lkotlin/jvm/functions/Function2;",
        "_onScrollStarted",
        "onScrollEnded",
        "listener",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onScrollStarted",
        "anko-sdk25-coroutines_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field private _onScrollEnded:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _onScrollStarted:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lkotlin/coroutines/experimental/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;)V
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SlidingDrawer_OnDrawerScrollListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public onScrollEnded()V
    .locals 4

    .line 977
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SlidingDrawer_OnDrawerScrollListener;->_onScrollEnded:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    .line 978
    .local v0, "handler":Lkotlin/jvm/functions/Function2;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SlidingDrawer_OnDrawerScrollListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 979
    return-void

    .line 977
    .end local v0    # "handler":Lkotlin/jvm/functions/Function2;
    :cond_0
    return-void
.end method

.method public final onScrollEnded(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 984
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SlidingDrawer_OnDrawerScrollListener;->_onScrollEnded:Lkotlin/jvm/functions/Function2;

    .line 985
    return-void
.end method

.method public onScrollStarted()V
    .locals 4

    .line 963
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SlidingDrawer_OnDrawerScrollListener;->_onScrollStarted:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    .line 964
    .local v0, "handler":Lkotlin/jvm/functions/Function2;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SlidingDrawer_OnDrawerScrollListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 965
    return-void

    .line 963
    .end local v0    # "handler":Lkotlin/jvm/functions/Function2;
    :cond_0
    return-void
.end method

.method public final onScrollStarted(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 970
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SlidingDrawer_OnDrawerScrollListener;->_onScrollStarted:Lkotlin/jvm/functions/Function2;

    .line 971
    return-void
.end method
