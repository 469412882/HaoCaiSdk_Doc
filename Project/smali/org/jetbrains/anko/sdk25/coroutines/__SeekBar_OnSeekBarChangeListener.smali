.class public final Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;
.super Ljava/lang/Object;
.source "ListenersWithCoroutines.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u0014\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\nH\u0016JK\u0010\u0014\u001a\u00020\u000c2;\u0010\u0018\u001a7\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0006\u00a2\u0006\u0002\u0008\u000e\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J\u0012\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0008H\u0016J?\u0010\u001a\u001a\u00020\u000c2/\u0010\u0018\u001a+\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0011\u00a2\u0006\u0002\u0008\u000e\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001bJ\u0012\u0010\u001c\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0008H\u0016J?\u0010\u001c\u001a\u00020\u000c2/\u0010\u0018\u001a+\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0011\u00a2\u0006\u0002\u0008\u000e\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001bRJ\u0010\u0005\u001a9\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u000eX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u000fR>\u0010\u0010\u001a-\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u000eX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0012R>\u0010\u0013\u001a-\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u000eX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;)V",
        "_onProgressChanged",
        "Lkotlin/Function5;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Landroid/widget/SeekBar;",
        "",
        "",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lkotlin/jvm/functions/Function5;",
        "_onStartTrackingTouch",
        "Lkotlin/Function3;",
        "Lkotlin/jvm/functions/Function3;",
        "_onStopTrackingTouch",
        "onProgressChanged",
        "seekBar",
        "progress",
        "fromUser",
        "listener",
        "(Lkotlin/jvm/functions/Function5;)V",
        "onStartTrackingTouch",
        "(Lkotlin/jvm/functions/Function3;)V",
        "onStopTrackingTouch",
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
.field private _onProgressChanged:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/widget/SeekBar;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
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

.field private _onStartTrackingTouch:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/widget/SeekBar;",
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

.field private _onStopTrackingTouch:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/widget/SeekBar;",
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

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 886
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;->_onProgressChanged:Lkotlin/jvm/functions/Function5;

    if-eqz v1, :cond_0

    .line 887
    .local v1, "handler":Lkotlin/jvm/functions/Function5;
    iget-object v6, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v7, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener$onProgressChanged$1;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener$onProgressChanged$1;-><init>(Lkotlin/jvm/functions/Function5;Landroid/widget/SeekBar;IZLkotlin/coroutines/experimental/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v6, v2, v7, v0, v2}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 890
    return-void

    .line 886
    .end local v1    # "handler":Lkotlin/jvm/functions/Function5;
    :cond_0
    return-void
.end method

.method public final onProgressChanged(Lkotlin/jvm/functions/Function5;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function5;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/widget/SeekBar;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
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

    .line 895
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;->_onProgressChanged:Lkotlin/jvm/functions/Function5;

    .line 896
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 902
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;->_onStartTrackingTouch:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    .line 903
    .local v0, "handler":Lkotlin/jvm/functions/Function3;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v2, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener$onStartTrackingTouch$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener$onStartTrackingTouch$1;-><init>(Lkotlin/jvm/functions/Function3;Landroid/widget/SeekBar;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 906
    return-void

    .line 902
    .end local v0    # "handler":Lkotlin/jvm/functions/Function3;
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Lkotlin/jvm/functions/Function3;)V
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
            "Landroid/widget/SeekBar;",
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

    .line 911
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;->_onStartTrackingTouch:Lkotlin/jvm/functions/Function3;

    .line 912
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 918
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;->_onStopTrackingTouch:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    .line 919
    .local v0, "handler":Lkotlin/jvm/functions/Function3;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v2, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener$onStopTrackingTouch$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener$onStopTrackingTouch$1;-><init>(Lkotlin/jvm/functions/Function3;Landroid/widget/SeekBar;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 922
    return-void

    .line 918
    .end local v0    # "handler":Lkotlin/jvm/functions/Function3;
    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Lkotlin/jvm/functions/Function3;)V
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
            "Landroid/widget/SeekBar;",
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

    .line 927
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__SeekBar_OnSeekBarChangeListener;->_onStopTrackingTouch:Lkotlin/jvm/functions/Function3;

    .line 928
    return-void
.end method
