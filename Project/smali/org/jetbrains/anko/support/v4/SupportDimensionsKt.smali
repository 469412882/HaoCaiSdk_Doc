.class public final Lorg/jetbrains/anko/support/v4/SupportDimensionsKt;
.super Ljava/lang/Object;
.source "SupportDimensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0086\u0008\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0008\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0086\u0008\u001a\u0015\u0010\u0007\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0001H\u0086\u0008\u001a\u0015\u0010\t\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0001H\u0086\u0008\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0008\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0086\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "dimen",
        "",
        "Landroid/support/v4/app/Fragment;",
        "resource",
        "dip",
        "value",
        "",
        "px2dip",
        "px",
        "px2sp",
        "sp",
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
.method public static final dimen(Landroid/support/v4/app/Fragment;I)I
    .locals 2
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "resource"    # I

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$f$dimen":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/jetbrains/anko/DimensionsKt;->dimen(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static final dip(Landroid/support/v4/app/Fragment;F)I
    .locals 2
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "value"    # F

    const/4 v0, 0x0

    .line 25
    .local v0, "$i$f$dip":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;F)I

    move-result v1

    return v1
.end method

.method public static final dip(Landroid/support/v4/app/Fragment;I)I
    .locals 2
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "value"    # I

    const/4 v0, 0x0

    .line 23
    .local v0, "$i$f$dip":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static final px2dip(Landroid/support/v4/app/Fragment;I)F
    .locals 2
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "px"    # I

    const/4 v0, 0x0

    .line 31
    .local v0, "$i$f$px2dip":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/jetbrains/anko/DimensionsKt;->px2dip(Landroid/content/Context;I)F

    move-result v1

    return v1
.end method

.method public static final px2sp(Landroid/support/v4/app/Fragment;I)F
    .locals 2
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "px"    # I

    const/4 v0, 0x0

    .line 33
    .local v0, "$i$f$px2sp":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/jetbrains/anko/DimensionsKt;->px2sp(Landroid/content/Context;I)F

    move-result v1

    return v1
.end method

.method public static final sp(Landroid/support/v4/app/Fragment;F)I
    .locals 2
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "value"    # F

    const/4 v0, 0x0

    .line 29
    .local v0, "$i$f$sp":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/jetbrains/anko/DimensionsKt;->sp(Landroid/content/Context;F)I

    move-result v1

    return v1
.end method

.method public static final sp(Landroid/support/v4/app/Fragment;I)I
    .locals 2
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "value"    # I

    const/4 v0, 0x0

    .line 27
    .local v0, "$i$f$sp":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/jetbrains/anko/DimensionsKt;->sp(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method
