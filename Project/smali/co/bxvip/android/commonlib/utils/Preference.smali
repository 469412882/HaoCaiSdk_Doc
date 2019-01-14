.class public final Lco/bxvip/android/commonlib/utils/Preference;
.super Ljava/lang/Object;
.source "Preference.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Preference.kt\nco/bxvip/android/commonlib/utils/Preference\n*L\n1#1,31:1\n14#1:32\n14#1:33\n14#1:34\n14#1:35\n14#1:36\n14#1:37\n14#1:38\n14#1:39\n*E\n*S KotlinDebug\n*F\n+ 1 Preference.kt\nco/bxvip/android/commonlib/utils/Preference\n*L\n16#1:32\n18#1:33\n20#1:34\n22#1:35\n24#1:36\n26#1:37\n28#1:38\n30#1:39\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\nJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000fJ\u0018\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\nJ\u0016\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000fJ\u0016\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000cR\u0015\u0010\u0003\u001a\u00020\u00048\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/utils/Preference;",
        "",
        "()V",
        "sp",
        "Landroid/content/SharedPreferences;",
        "getSp",
        "()Landroid/content/SharedPreferences;",
        "spClearAll",
        "",
        "spGetBoolean",
        "",
        "key",
        "",
        "defaultValue",
        "spGetInt",
        "",
        "spGetString",
        "spRemove",
        "spSetBoolean",
        "value",
        "spSetInt",
        "spSetString",
        "android-support"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lco/bxvip/android/commonlib/utils/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lco/bxvip/android/commonlib/utils/Preference;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/utils/Preference;-><init>()V

    sput-object v0, Lco/bxvip/android/commonlib/utils/Preference;->INSTANCE:Lco/bxvip/android/commonlib/utils/Preference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getSp()Landroid/content/SharedPreferences;
    .locals 3

    const/4 v0, 0x0

    .line 14
    .local v0, "$i$f$getSp":I
    sget-object v1, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "PreferenceManager.getDefaultSharedPreferences(ctx)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static bridge synthetic spGetBoolean$default(Lco/bxvip/android/commonlib/utils/Preference;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 22
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/bxvip/android/commonlib/utils/Preference;->spGetBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic spGetInt$default(Lco/bxvip/android/commonlib/utils/Preference;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 18
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/bxvip/android/commonlib/utils/Preference;->spGetInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic spGetString$default(Lco/bxvip/android/commonlib/utils/Preference;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 26
    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/bxvip/android/commonlib/utils/Preference;->spGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final spClearAll()V
    .locals 4

    const/4 v0, 0x0

    .line 30
    .local v0, "$i$f$getSp":I
    move-object v1, p0

    .line 39
    .local v1, "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    sget-object v2, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PreferenceManager.getDefaultSharedPreferences(ctx)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .end local v0    # "$i$f$getSp":I
    .end local v1    # "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final spGetBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Z

    const/4 v0, 0x0

    .line 22
    .local v0, "$i$f$getSp":I
    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v1, p0

    .line 35
    .local v1, "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    sget-object v2, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PreferenceManager.getDefaultSharedPreferences(ctx)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .end local v0    # "$i$f$getSp":I
    .end local v1    # "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final spGetInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # I

    const/4 v0, 0x0

    .line 18
    .local v0, "$i$f$getSp":I
    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v1, p0

    .line 33
    .local v1, "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    sget-object v2, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PreferenceManager.getDefaultSharedPreferences(ctx)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .end local v0    # "$i$f$getSp":I
    .end local v1    # "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final spGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 26
    .local v0, "$i$f$getSp":I
    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "defaultValue"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v1, p0

    .line 37
    .local v1, "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    sget-object v2, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PreferenceManager.getDefaultSharedPreferences(ctx)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .end local v0    # "$i$f$getSp":I
    .end local v1    # "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method

.method public final spRemove(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 28
    .local v0, "$i$f$getSp":I
    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v1, p0

    .line 38
    .local v1, "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    sget-object v2, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PreferenceManager.getDefaultSharedPreferences(ctx)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .end local v0    # "$i$f$getSp":I
    .end local v1    # "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final spSetBoolean(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "value"    # Z

    const/4 v0, 0x0

    .line 20
    .local v0, "$i$f$getSp":I
    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v1, p0

    .line 34
    .local v1, "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    sget-object v2, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PreferenceManager.getDefaultSharedPreferences(ctx)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .end local v0    # "$i$f$getSp":I
    .end local v1    # "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final spSetInt(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "value"    # I

    const/4 v0, 0x0

    .line 16
    .local v0, "$i$f$getSp":I
    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    move-object v1, p0

    .line 32
    .local v1, "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    sget-object v2, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PreferenceManager.getDefaultSharedPreferences(ctx)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .end local v0    # "$i$f$getSp":I
    .end local v1    # "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final spSetString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 24
    .local v0, "$i$f$getSp":I
    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v1, p0

    .line 36
    .local v1, "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    sget-object v2, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PreferenceManager.getDefaultSharedPreferences(ctx)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .end local v0    # "$i$f$getSp":I
    .end local v1    # "this_$iv":Lco/bxvip/android/commonlib/utils/Preference;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
