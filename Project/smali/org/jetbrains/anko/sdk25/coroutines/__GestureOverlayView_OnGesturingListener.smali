.class public final Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener;
.super Ljava/lang/Object;
.source "ListenersWithCoroutines.kt"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGesturingListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u000f\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008H\u0016J?\u0010\u000f\u001a\u00020\n2/\u0010\u0011\u001a+\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u0012\u0010\u0013\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008H\u0016J?\u0010\u0013\u001a\u00020\n2/\u0010\u0011\u001a+\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012R>\u0010\u0005\u001a-\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u000cX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\rR>\u0010\u000e\u001a-\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u000cX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener;",
        "Landroid/gesture/GestureOverlayView$OnGesturingListener;",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;)V",
        "_onGesturingEnded",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Landroid/gesture/GestureOverlayView;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lkotlin/jvm/functions/Function3;",
        "_onGesturingStarted",
        "onGesturingEnded",
        "overlay",
        "listener",
        "(Lkotlin/jvm/functions/Function3;)V",
        "onGesturingStarted",
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
.field private _onGesturingEnded:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
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

.field private _onGesturingStarted:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
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

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public onGesturingEnded(Landroid/gesture/GestureOverlayView;)V
    .locals 5
    .param p1, "overlay"    # Landroid/gesture/GestureOverlayView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 241
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener;->_onGesturingEnded:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    .line 242
    .local v0, "handler":Lkotlin/jvm/functions/Function3;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v2, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener$onGesturingEnded$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener$onGesturingEnded$1;-><init>(Lkotlin/jvm/functions/Function3;Landroid/gesture/GestureOverlayView;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 245
    return-void

    .line 241
    .end local v0    # "handler":Lkotlin/jvm/functions/Function3;
    :cond_0
    return-void
.end method

.method public final onGesturingEnded(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
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

    .line 250
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener;->_onGesturingEnded:Lkotlin/jvm/functions/Function3;

    .line 251
    return-void
.end method

.method public onGesturingStarted(Landroid/gesture/GestureOverlayView;)V
    .locals 5
    .param p1, "overlay"    # Landroid/gesture/GestureOverlayView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 225
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener;->_onGesturingStarted:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    .line 226
    .local v0, "handler":Lkotlin/jvm/functions/Function3;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v2, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener$onGesturingStarted$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener$onGesturingStarted$1;-><init>(Lkotlin/jvm/functions/Function3;Landroid/gesture/GestureOverlayView;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 229
    return-void

    .line 225
    .end local v0    # "handler":Lkotlin/jvm/functions/Function3;
    :cond_0
    return-void
.end method

.method public final onGesturingStarted(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
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

    .line 234
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGesturingListener;->_onGesturingStarted:Lkotlin/jvm/functions/Function3;

    .line 235
    return-void
.end method
