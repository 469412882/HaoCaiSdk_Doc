.class public final Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;
.super Ljava/lang/Object;
.source "ListenersWithCoroutines.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0008H\u0016J?\u0010\u0014\u001a\u00020\n2/\u0010\u0016\u001a+\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J*\u0010\u0018\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0011H\u0016JQ\u0010\u0018\u001a\u00020\n2A\u0010\u0016\u001a=\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u000f\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cJ*\u0010\u001d\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0011H\u0016JQ\u0010\u001d\u001a\u00020\n2A\u0010\u0016\u001a=\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u000f\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cR>\u0010\u0005\u001a-\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u000cX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\rRP\u0010\u000e\u001a?\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u000f\u00a2\u0006\u0002\u0008\u000cX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0012RP\u0010\u0013\u001a?\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u000f\u00a2\u0006\u0002\u0008\u000cX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;",
        "Landroid/text/TextWatcher;",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;)V",
        "_afterTextChanged",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Landroid/text/Editable;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lkotlin/jvm/functions/Function3;",
        "_beforeTextChanged",
        "Lkotlin/Function6;",
        "",
        "",
        "Lkotlin/jvm/functions/Function6;",
        "_onTextChanged",
        "afterTextChanged",
        "s",
        "listener",
        "(Lkotlin/jvm/functions/Function3;)V",
        "beforeTextChanged",
        "start",
        "count",
        "after",
        "(Lkotlin/jvm/functions/Function6;)V",
        "onTextChanged",
        "before",
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
.field private _afterTextChanged:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/text/Editable;",
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

.field private _beforeTextChanged:Lkotlin/jvm/functions/Function6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function6<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
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

.field private _onTextChanged:Lkotlin/jvm/functions/Function6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function6<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 112
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;->_afterTextChanged:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    .line 113
    .local v0, "handler":Lkotlin/jvm/functions/Function3;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v2, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher$afterTextChanged$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher$afterTextChanged$1;-><init>(Lkotlin/jvm/functions/Function3;Landroid/text/Editable;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 116
    return-void

    .line 112
    .end local v0    # "handler":Lkotlin/jvm/functions/Function3;
    :cond_0
    return-void
.end method

.method public final afterTextChanged(Lkotlin/jvm/functions/Function3;)V
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
            "Landroid/text/Editable;",
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

    .line 121
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;->_afterTextChanged:Lkotlin/jvm/functions/Function3;

    .line 122
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 80
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;->_beforeTextChanged:Lkotlin/jvm/functions/Function6;

    if-eqz v1, :cond_0

    .line 81
    .local v1, "handler":Lkotlin/jvm/functions/Function6;
    iget-object v7, p0, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v8, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher$beforeTextChanged$1;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher$beforeTextChanged$1;-><init>(Lkotlin/jvm/functions/Function6;Ljava/lang/CharSequence;IIILkotlin/coroutines/experimental/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v7, v2, v8, v0, v2}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 84
    return-void

    .line 80
    .end local v1    # "handler":Lkotlin/jvm/functions/Function6;
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Lkotlin/jvm/functions/Function6;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function6<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
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

    .line 89
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;->_beforeTextChanged:Lkotlin/jvm/functions/Function6;

    .line 90
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 96
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;->_onTextChanged:Lkotlin/jvm/functions/Function6;

    if-eqz v1, :cond_0

    .line 97
    .local v1, "handler":Lkotlin/jvm/functions/Function6;
    iget-object v7, p0, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v8, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher$onTextChanged$1;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher$onTextChanged$1;-><init>(Lkotlin/jvm/functions/Function6;Ljava/lang/CharSequence;IIILkotlin/coroutines/experimental/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v7, v2, v8, v0, v2}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 100
    return-void

    .line 96
    .end local v1    # "handler":Lkotlin/jvm/functions/Function6;
    :cond_0
    return-void
.end method

.method public final onTextChanged(Lkotlin/jvm/functions/Function6;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function6<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
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

    .line 105
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__TextWatcher;->_onTextChanged:Lkotlin/jvm/functions/Function6;

    .line 106
    return-void
.end method
