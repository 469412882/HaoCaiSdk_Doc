.class public final Lorg/jetbrains/anko/support/v4/SupportContextUtilsKt;
.super Ljava/lang/Object;
.source "SupportContextUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0016\u0010\u0005\u001a\u00020\u0006*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0016\u0010\t\u001a\u00020\n*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "act",
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/Fragment;",
        "getAct",
        "(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentActivity;",
        "ctx",
        "Landroid/content/Context;",
        "getCtx",
        "(Landroid/support/v4/app/Fragment;)Landroid/content/Context;",
        "defaultSharedPreferences",
        "Landroid/content/SharedPreferences;",
        "getDefaultSharedPreferences",
        "(Landroid/support/v4/app/Fragment;)Landroid/content/SharedPreferences;",
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
.method public static final getAct(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentActivity;
    .locals 3
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 30
    .local v0, "$i$f$getAct":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getCtx(Landroid/support/v4/app/Fragment;)Landroid/content/Context;
    .locals 3
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 33
    .local v0, "$i$f$getCtx":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    return-object v1
.end method

.method public static final getDefaultSharedPreferences(Landroid/support/v4/app/Fragment;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "$receiver"    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 27
    .local v0, "$i$f$getDefaultSharedPreferences":I
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "PreferenceManager.getDef\u2026aredPreferences(activity)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
