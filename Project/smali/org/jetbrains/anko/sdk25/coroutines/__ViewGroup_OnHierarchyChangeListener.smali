.class public final Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener;
.super Ljava/lang/Object;
.source "ListenersWithCoroutines.kt"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u000f\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0016JG\u0010\u000f\u001a\u00020\n27\u0010\u0012\u001a3\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u001c\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0016JG\u0010\u0014\u001a\u00020\n27\u0010\u0012\u001a3\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013RF\u0010\u0005\u001a5\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u000cX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\rRF\u0010\u000e\u001a5\u0008\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u000cX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener;",
        "Landroid/view/ViewGroup$OnHierarchyChangeListener;",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;)V",
        "_onChildViewAdded",
        "Lkotlin/Function4;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Landroid/view/View;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lkotlin/jvm/functions/Function4;",
        "_onChildViewRemoved",
        "onChildViewAdded",
        "parent",
        "child",
        "listener",
        "(Lkotlin/jvm/functions/Function4;)V",
        "onChildViewRemoved",
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
.field private _onChildViewAdded:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/view/View;",
            "-",
            "Landroid/view/View;",
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

.field private _onChildViewRemoved:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Landroid/view/View;",
            "-",
            "Landroid/view/View;",
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

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 440
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener;->_onChildViewAdded:Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_0

    .line 441
    .local v0, "handler":Lkotlin/jvm/functions/Function4;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v2, Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener$onChildViewAdded$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p2, v3}, Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener$onChildViewAdded$1;-><init>(Lkotlin/jvm/functions/Function4;Landroid/view/View;Landroid/view/View;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 444
    return-void

    .line 440
    .end local v0    # "handler":Lkotlin/jvm/functions/Function4;
    :cond_0
    return-void
.end method

.method public final onChildViewAdded(Lkotlin/jvm/functions/Function4;)V
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
            "Landroid/view/View;",
            "-",
            "Landroid/view/View;",
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

    .line 449
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener;->_onChildViewAdded:Lkotlin/jvm/functions/Function4;

    .line 450
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 456
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener;->_onChildViewRemoved:Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_0

    .line 457
    .local v0, "handler":Lkotlin/jvm/functions/Function4;
    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v2, Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener$onChildViewRemoved$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p2, v3}, Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener$onChildViewRemoved$1;-><init>(Lkotlin/jvm/functions/Function4;Landroid/view/View;Landroid/view/View;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 460
    return-void

    .line 456
    .end local v0    # "handler":Lkotlin/jvm/functions/Function4;
    :cond_0
    return-void
.end method

.method public final onChildViewRemoved(Lkotlin/jvm/functions/Function4;)V
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
            "Landroid/view/View;",
            "-",
            "Landroid/view/View;",
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

    .line 465
    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__ViewGroup_OnHierarchyChangeListener;->_onChildViewRemoved:Lkotlin/jvm/functions/Function4;

    .line 466
    return-void
.end method
