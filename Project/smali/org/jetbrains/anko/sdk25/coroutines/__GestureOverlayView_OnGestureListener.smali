.class public final Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;
.super Ljava/lang/Object;
.source "ListenersWithCoroutines.kt"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGestureListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0016JG\u0010\u0012\u001a\u00020\u000b27\u0010\u0015\u001a3\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0006\u00a2\u0006\u0002\u0008\r\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J\u001c\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0016JG\u0010\u0017\u001a\u00020\u000b27\u0010\u0015\u001a3\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0006\u00a2\u0006\u0002\u0008\r\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J\u001c\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0016JG\u0010\u0018\u001a\u00020\u000b27\u0010\u0015\u001a3\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0006\u00a2\u0006\u0002\u0008\r\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J\u001c\u0010\u0019\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0016JG\u0010\u0019\u001a\u00020\u000b27\u0010\u0015\u001a3\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0006\u00a2\u0006\u0002\u0008\r\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016RF\u0010\u0005\u001a5\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\rX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u000eRF\u0010\u000f\u001a5\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\rX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u000eRF\u0010\u0010\u001a5\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\rX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u000eRF\u0010\u0011\u001a5\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\rX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u001a"
    }
    d2 = {
        "Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;",
        "Landroid/gesture/GestureOverlayView$OnGestureListener;",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;)V",
        "_onGesture",
        "Lkotlin/Function4;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Landroid/gesture/GestureOverlayView;",
        "Landroid/view/MotionEvent;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lkotlin/jvm/functions/Function4;",
        "_onGestureCancelled",
        "_onGestureEnded",
        "_onGestureStarted",
        "onGesture",
        "overlay",
        "event",
        "listener",
        "(Lkotlin/jvm/functions/Function4;)V",
        "onGestureCancelled",
        "onGestureEnded",
        "onGestureStarted",
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
.field private _onGesture:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
            "-",
            "Landroid/view/MotionEvent;",
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

.field private _onGestureCancelled:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
            "-",
            "Landroid/view/MotionEvent;",
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

.field private _onGestureEnded:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
            "-",
            "Landroid/view/MotionEvent;",
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

.field private _onGestureStarted:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
            "-",
            "Landroid/view/MotionEvent;",
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

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "overlay"    # Landroid/gesture/GestureOverlayView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "event"    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 155
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->_onGesture:Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_0

    .line 156
    .local v0, "handler":Lkotlin/jvm/functions/Function4;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v2, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener$onGesture$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p2, v3}, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener$onGesture$1;-><init>(Lkotlin/jvm/functions/Function4;Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 159
    return-void

    .line 155
    .end local v0    # "handler":Lkotlin/jvm/functions/Function4;
    :cond_0
    return-void
.end method

.method public final onGesture(Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
            "-",
            "Landroid/view/MotionEvent;",
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

    .line 164
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->_onGesture:Lkotlin/jvm/functions/Function4;

    .line 165
    return-void
.end method

.method public onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "overlay"    # Landroid/gesture/GestureOverlayView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "event"    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 187
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->_onGestureCancelled:Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_0

    .line 188
    .local v0, "handler":Lkotlin/jvm/functions/Function4;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v2, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener$onGestureCancelled$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p2, v3}, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener$onGestureCancelled$1;-><init>(Lkotlin/jvm/functions/Function4;Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 191
    return-void

    .line 187
    .end local v0    # "handler":Lkotlin/jvm/functions/Function4;
    :cond_0
    return-void
.end method

.method public final onGestureCancelled(Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
            "-",
            "Landroid/view/MotionEvent;",
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

    .line 196
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->_onGestureCancelled:Lkotlin/jvm/functions/Function4;

    .line 197
    return-void
.end method

.method public onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "overlay"    # Landroid/gesture/GestureOverlayView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "event"    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 171
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->_onGestureEnded:Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_0

    .line 172
    .local v0, "handler":Lkotlin/jvm/functions/Function4;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v2, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener$onGestureEnded$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p2, v3}, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener$onGestureEnded$1;-><init>(Lkotlin/jvm/functions/Function4;Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 175
    return-void

    .line 171
    .end local v0    # "handler":Lkotlin/jvm/functions/Function4;
    :cond_0
    return-void
.end method

.method public final onGestureEnded(Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
            "-",
            "Landroid/view/MotionEvent;",
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

    .line 180
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->_onGestureEnded:Lkotlin/jvm/functions/Function4;

    .line 181
    return-void
.end method

.method public onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "overlay"    # Landroid/gesture/GestureOverlayView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "event"    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 139
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->_onGestureStarted:Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_0

    .line 140
    .local v0, "handler":Lkotlin/jvm/functions/Function4;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v2, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener$onGestureStarted$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p2, v3}, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener$onGestureStarted$1;-><init>(Lkotlin/jvm/functions/Function4;Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 143
    return-void

    .line 139
    .end local v0    # "handler":Lkotlin/jvm/functions/Function4;
    :cond_0
    return-void
.end method

.method public final onGestureStarted(Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/gesture/GestureOverlayView;",
            "-",
            "Landroid/view/MotionEvent;",
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

    .line 148
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__GestureOverlayView_OnGestureListener;->_onGestureStarted:Lkotlin/jvm/functions/Function4;

    .line 149
    return-void
.end method
