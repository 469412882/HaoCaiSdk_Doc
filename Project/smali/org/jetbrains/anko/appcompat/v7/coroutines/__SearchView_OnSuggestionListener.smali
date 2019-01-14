.class public final Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;
.super Ljava/lang/Object;
.source "ListenersWithCoroutines.kt"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnSuggestionListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004JG\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\n2-\u0010\u0014\u001a)\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0008H\u0016JG\u0010\u0017\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\n2-\u0010\u0014\u001a)\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0008H\u0016R<\u0010\u0005\u001a+\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u000cX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R<\u0010\u000f\u001a+\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u000cX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;",
        "Landroid/support/v7/widget/SearchView$OnSuggestionListener;",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;)V",
        "_onSuggestionClick",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lkotlin/jvm/functions/Function3;",
        "_onSuggestionClick_returnValue",
        "_onSuggestionSelect",
        "_onSuggestionSelect_returnValue",
        "onSuggestionClick",
        "",
        "returnValue",
        "listener",
        "(ZLkotlin/jvm/functions/Function3;)V",
        "position",
        "onSuggestionSelect",
        "anko-appcompat-v7-coroutines_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field private _onSuggestionClick:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _onSuggestionClick_returnValue:Z

.field private _onSuggestionSelect:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _onSuggestionSelect_returnValue:Z

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

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method

.method public static bridge synthetic onSuggestionClick$default(Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 171
    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->onSuggestionClick(ZLkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static bridge synthetic onSuggestionSelect$default(Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 151
    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->onSuggestionSelect(ZLkotlin/jvm/functions/Function3;)V

    return-void
.end method


# virtual methods
.method public final onSuggestionClick(ZLkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1, "returnValue"    # Z
    .param p2, "listener"    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iput-object p2, p0, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->_onSuggestionClick:Lkotlin/jvm/functions/Function3;

    .line 175
    iput-boolean p1, p0, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->_onSuggestionClick_returnValue:Z

    .line 176
    return-void
.end method

.method public onSuggestionClick(I)Z
    .locals 6
    .param p1, "position"    # I

    .line 162
    iget-boolean v0, p0, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->_onSuggestionClick_returnValue:Z

    .line 163
    .local v0, "returnValue":Z
    iget-object v1, p0, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->_onSuggestionClick:Lkotlin/jvm/functions/Function3;

    if-eqz v1, :cond_0

    .line 164
    .local v1, "handler":Lkotlin/jvm/functions/Function3;
    iget-object v2, p0, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v3, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener$onSuggestionClick$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, p1, v4}, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener$onSuggestionClick$1;-><init>(Lkotlin/jvm/functions/Function3;ILkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    invoke-static {v2, v4, v3, v5, v4}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 167
    return v0

    .line 163
    .end local v1    # "handler":Lkotlin/jvm/functions/Function3;
    :cond_0
    return v0
.end method

.method public final onSuggestionSelect(ZLkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1, "returnValue"    # Z
    .param p2, "listener"    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iput-object p2, p0, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->_onSuggestionSelect:Lkotlin/jvm/functions/Function3;

    .line 155
    iput-boolean p1, p0, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->_onSuggestionSelect_returnValue:Z

    .line 156
    return-void
.end method

.method public onSuggestionSelect(I)Z
    .locals 6
    .param p1, "position"    # I

    .line 142
    iget-boolean v0, p0, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->_onSuggestionSelect_returnValue:Z

    .line 143
    .local v0, "returnValue":Z
    iget-object v1, p0, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->_onSuggestionSelect:Lkotlin/jvm/functions/Function3;

    if-eqz v1, :cond_0

    .line 144
    .local v1, "handler":Lkotlin/jvm/functions/Function3;
    iget-object v2, p0, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v3, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener$onSuggestionSelect$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, p1, v4}, Lorg/jetbrains/anko/appcompat/v7/coroutines/__SearchView_OnSuggestionListener$onSuggestionSelect$1;-><init>(Lkotlin/jvm/functions/Function3;ILkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    invoke-static {v2, v4, v3, v5, v4}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 147
    return v0

    .line 143
    .end local v1    # "handler":Lkotlin/jvm/functions/Function3;
    :cond_0
    return v0
.end method
