.class public final Lorg/jetbrains/anko/ThemeKt;
.super Ljava/lang/Object;
.source "Theme.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u00060\u0006R\u00020\u00072\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00082\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\t2\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u001a\u001a\u0010\n\u001a\u00020\u0004*\u00060\u0006R\u00020\u00072\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0017\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0016\u0010\u000b\u001a\u00020\u0004*\u00020\u00052\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0017\u0010\u000b\u001a\u00020\u0004*\u00020\u00082\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u001b\u0010\u000b\u001a\u00020\u0004*\u0006\u0012\u0002\u0008\u00030\t2\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0017\u0010\u000c\u001a\u00020\u0004*\u00020\u00022\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0016\u0010\u000c\u001a\u00020\u0004*\u00020\u00052\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0017\u0010\u000c\u001a\u00020\u0004*\u00020\u00082\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u001b\u0010\u000c\u001a\u00020\u0004*\u0006\u0012\u0002\u0008\u00030\t2\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u00a8\u0006\r"
    }
    d2 = {
        "attr",
        "Landroid/util/TypedValue;",
        "Landroid/app/Fragment;",
        "attribute",
        "",
        "Landroid/content/Context;",
        "Landroid/content/res/Resources$Theme;",
        "Landroid/content/res/Resources;",
        "Landroid/view/View;",
        "Lorg/jetbrains/anko/AnkoContext;",
        "color",
        "colorAttr",
        "dimenAttr",
        "commons_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# direct methods
.method public static final attr(Landroid/app/Fragment;I)Landroid/util/TypedValue;
    .locals 2
    .param p0, "$receiver"    # Landroid/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 66
    .local v0, "$i$f$attr":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/jetbrains/anko/ThemeKt;->attr(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    return-object v1
.end method

.method public static final attr(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 1
    .param p0, "$receiver"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jetbrains/anko/ThemeKt;->attr(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    move-result-object v0

    return-object v0
.end method

.method public static final attr(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;
    .locals 4
    .param p0, "$receiver"    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 15
    .local v0, "typedValue":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 19
    :cond_0
    return-object v0
.end method

.method public static final attr(Landroid/view/View;I)Landroid/util/TypedValue;
    .locals 2
    .param p0, "$receiver"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 57
    .local v0, "$i$f$attr":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/jetbrains/anko/ThemeKt;->attr(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    return-object v1
.end method

.method public static final attr(Lorg/jetbrains/anko/AnkoContext;I)Landroid/util/TypedValue;
    .locals 2
    .param p0, "$receiver"    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "*>;I)",
            "Landroid/util/TypedValue;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 48
    .local v0, "$i$f$attr":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p0}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/jetbrains/anko/ThemeKt;->attr(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    return-object v1
.end method

.method public static final color(Landroid/content/res/Resources$Theme;I)I
    .locals 4
    .param p0, "$receiver"    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p0, p1}, Lorg/jetbrains/anko/ThemeKt;->attr(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    move-result-object v0

    .line 25
    .local v0, "attr":Landroid/util/TypedValue;
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1

    .line 26
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute value type is not color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final colorAttr(Landroid/app/Fragment;I)I
    .locals 2
    .param p0, "$receiver"    # Landroid/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x0

    .line 64
    .local v0, "$i$f$colorAttr":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/jetbrains/anko/ThemeKt;->colorAttr(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static final colorAttr(Landroid/content/Context;I)I
    .locals 1
    .param p0, "$receiver"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jetbrains/anko/ThemeKt;->color(Landroid/content/res/Resources$Theme;I)I

    move-result v0

    return v0
.end method

.method public static final colorAttr(Landroid/view/View;I)I
    .locals 2
    .param p0, "$receiver"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x0

    .line 55
    .local v0, "$i$f$colorAttr":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/jetbrains/anko/ThemeKt;->colorAttr(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static final colorAttr(Lorg/jetbrains/anko/AnkoContext;I)I
    .locals 2
    .param p0, "$receiver"    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "*>;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    .local v0, "$i$f$colorAttr":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p0}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/jetbrains/anko/ThemeKt;->colorAttr(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static final dimenAttr(Landroid/app/Fragment;I)I
    .locals 2
    .param p0, "$receiver"    # Landroid/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x1
    .end annotation

    const/4 v0, 0x0

    .line 61
    .local v0, "$i$f$dimenAttr":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/jetbrains/anko/ThemeKt;->dimenAttr(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static final dimenAttr(Landroid/content/Context;I)I
    .locals 2
    .param p0, "$receiver"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x1
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p0, p1}, Lorg/jetbrains/anko/ThemeKt;->attr(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    return v0
.end method

.method public static final dimenAttr(Landroid/view/View;I)I
    .locals 2
    .param p0, "$receiver"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x1
    .end annotation

    const/4 v0, 0x0

    .line 52
    .local v0, "$i$f$dimenAttr":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/jetbrains/anko/ThemeKt;->dimenAttr(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static final dimenAttr(Lorg/jetbrains/anko/AnkoContext;I)I
    .locals 2
    .param p0, "$receiver"    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "attribute"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "*>;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$dimenAttr":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p0}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/jetbrains/anko/ThemeKt;->dimenAttr(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method
