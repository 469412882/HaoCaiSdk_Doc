.class public final Lorg/jetbrains/anko/support/v4/SupportAsyncKt;
.super Ljava/lang/Object;
.source "SupportAsync.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000e\u0008\u0004\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\u0008\u001a.\u0010\u0005\u001a\u00020\u0006\"\u0008\u0008\u0000\u0010\u0007*\u00020\u0002*\u0008\u0012\u0004\u0012\u0002H\u00070\u00082\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u00010\t\u001a\u001d\u0010\n\u001a\u00020\u0001*\u00020\u00022\u000e\u0008\u0004\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0004H\u0087\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "onUiThread",
        "",
        "Landroid/support/v4/app/Fragment;",
        "f",
        "Lkotlin/Function0;",
        "supportFragmentUiThread",
        "",
        "T",
        "Lorg/jetbrains/anko/AnkoAsyncContext;",
        "Lkotlin/Function1;",
        "uiThread",
        "supportV4_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# direct methods
.method public static final onUiThread(Landroid/support/v4/app/Fragment;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "f"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    .local v0, "$i$f$onUiThread":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "f"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lorg/jetbrains/anko/support/v4/SupportAsyncKt$onUiThread$1;

    invoke-direct {v2, p1}, Lorg/jetbrains/anko/support/v4/SupportAsyncKt$onUiThread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public static final supportFragmentUiThread(Lorg/jetbrains/anko/AnkoAsyncContext;Lkotlin/jvm/functions/Function1;)Z
    .locals 4
    .param p0, "$receiver"    # Lorg/jetbrains/anko/AnkoAsyncContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "f"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(",
            "Lorg/jetbrains/anko/AnkoAsyncContext<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lorg/jetbrains/anko/AnkoAsyncContext;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 25
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    .local v2, "activity":Landroid/support/v4/app/FragmentActivity;
    new-instance v3, Lorg/jetbrains/anko/support/v4/SupportAsyncKt$supportFragmentUiThread$1;

    invoke-direct {v3, p1, v0}, Lorg/jetbrains/anko/support/v4/SupportAsyncKt$supportFragmentUiThread$1;-><init>(Lkotlin/jvm/functions/Function1;Landroid/support/v4/app/Fragment;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 28
    return v1

    .line 26
    .end local v2    # "activity":Landroid/support/v4/app/FragmentActivity;
    :cond_1
    return v1

    .line 24
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    return v1
.end method

.method public static final uiThread(Landroid/support/v4/app/Fragment;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "f"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use onUiThread() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "onUiThread(f)"
            imports = {}
        .end subannotation
    .end annotation

    const/4 v0, 0x0

    .line 33
    .local v0, "$i$f$uiThread":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "f"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lorg/jetbrains/anko/support/v4/SupportAsyncKt$uiThread$1;

    invoke-direct {v2, p1}, Lorg/jetbrains/anko/support/v4/SupportAsyncKt$uiThread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method
