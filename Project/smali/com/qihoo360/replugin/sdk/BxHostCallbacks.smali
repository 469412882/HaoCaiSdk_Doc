.class public final Lcom/qihoo360/replugin/sdk/BxHostCallbacks;
.super Lcom/qihoo360/replugin/RePluginCallbacks;
.source "BxHostCallbacks.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J,\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J.\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\u0010H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/qihoo360/replugin/sdk/BxHostCallbacks;",
        "Lcom/qihoo360/replugin/RePluginCallbacks;",
        "var1",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "downloadThenStartActivity",
        "",
        "var2",
        "Landroid/content/Intent;",
        "var3",
        "Lcom/qihoo360/replugin/sdk/model/P;",
        "var4",
        "Landroid/app/Dialog;",
        "onPluginNotExistsForActivity",
        "",
        "",
        "",
        "Companion",
        "host-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->Companion:Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;

    .line 133
    const-class v0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "var1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/RePluginCallbacks;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$downloadThenStartActivity(Lcom/qihoo360/replugin/sdk/BxHostCallbacks;Landroid/content/Context;Landroid/content/Intent;Lcom/qihoo360/replugin/sdk/model/P;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "$this"    # Lcom/qihoo360/replugin/sdk/BxHostCallbacks;
    .param p1, "var1"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "var2"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "var3"    # Lcom/qihoo360/replugin/sdk/model/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "var4"    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->downloadThenStartActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/qihoo360/replugin/sdk/model/P;Landroid/app/Dialog;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final downloadThenStartActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/qihoo360/replugin/sdk/model/P;Landroid/app/Dialog;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/content/Intent;
    .param p3, "var3"    # Lcom/qihoo360/replugin/sdk/model/P;
    .param p4, "var4"    # Landroid/app/Dialog;

    .line 120
    invoke-static {}, Lcom/qihoo360/replugin/sdk/b/a;->a()Lcom/qihoo360/replugin/sdk/b/a;

    move-result-object v0

    new-instance v1, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$downloadThenStartActivity$1;

    invoke-direct {v1, p4, p1, p2}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$downloadThenStartActivity$1;-><init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/content/Intent;)V

    check-cast v1, Lcom/qihoo360/replugin/sdk/b/Dback;

    invoke-virtual {v0, p3, v1}, Lcom/qihoo360/replugin/sdk/b/a;->a(Lcom/qihoo360/replugin/sdk/model/P;Lcom/qihoo360/replugin/sdk/b/Dback;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onPluginNotExistsForActivity(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 19
    .param p1, "var1"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "var2"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "var3"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "var4"    # I

    move-object/from16 v7, p2

    .line 42
    sget-object v1, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    if-nez v7, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "onPluginNotExistsForActivity"

    invoke-virtual {v1, v7, v2}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v1, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v1

    const/4 v8, 0x0

    if-nez v1, :cond_1

    return v8

    .line 44
    :cond_1
    sget-object v1, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lco/bxvip/tools/ACache;->get(Landroid/content/Context;)Lco/bxvip/tools/ACache;

    move-result-object v9

    .line 46
    .local v9, "aCache":Lco/bxvip/tools/ACache;
    const-string v1, "plugin-update-url"

    invoke-virtual {v9, v1}, Lco/bxvip/tools/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 47
    .local v10, "value1":Ljava/lang/String;
    const-string v1, "plugin-update-sub"

    invoke-virtual {v9, v1}, Lco/bxvip/tools/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->getVal2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 48
    .local v11, "value2":Ljava/lang/String;
    const-string v1, "plugin-update-key"

    invoke-virtual {v9, v1}, Lco/bxvip/tools/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->getVal3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 49
    .local v12, "value3":Ljava/lang/String;
    invoke-static {v10}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->getVar1(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 50
    .local v13, "val1":Ljava/util/List;
    invoke-static {}, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->getDownloadIfNotExists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    new-instance v1, Landroid/app/ProgressDialog;

    move-object/from16 v14, p1

    invoke-direct {v1, v14}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object v15, v1

    .line 52
    .local v15, "var5":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v15, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    const-string v1, "\u52a0\u8f7d\u4e2d,\u8bf7\u7a0d\u540e"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v15, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v15, v8}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 55
    invoke-virtual {v15}, Landroid/app/ProgressDialog;->show()V

    .line 56
    nop

    .line 57
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v6, v1

    .line 58
    .local v6, "var6":Ljava/util/HashMap;
    const-string v1, "ac"

    const-string v2, "getPluginData"

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "key"

    invoke-virtual {v6, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "all"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "random"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-static {}, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->getRandomRange()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "sdkcode"

    invoke-static {}, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "appkey"

    invoke-static {}, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "env"

    invoke-static {}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->Pu_isDev()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_2

    :try_start_1
    const-string v2, "3"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    .end local v6    # "var6":Ljava/util/HashMap;
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto/16 :goto_1

    .line 64
    .restart local v6    # "var6":Ljava/util/HashMap;
    :cond_2
    :try_start_2
    const-string v2, "1"

    :goto_0
    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%5B%7B%22packagename%22%3A%22"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%22%2C%22version%22%3A%22100%22%7D%5D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/qihoo360/replugin/sdk/net/EasyNet;->newInstance()Lcom/qihoo360/replugin/sdk/net/EasyNet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/sdk/net/EasyNet;->async()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/qihoo360/replugin/sdk/net/IRequest;

    sget-object v4, Lcom/qihoo360/replugin/sdk/net/Request$Method;->GET:Lcom/qihoo360/replugin/sdk/net/Request$Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v8, v2}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->VarRandom(II)I

    move-result v2

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v16, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v8, v3

    move-object v3, v7

    move-object v7, v4

    move-object v4, v14

    move-object/from16 v17, v9

    move-object v9, v5

    move-object/from16 v5, p3

    .line 66
    .end local v9    # "aCache":Lco/bxvip/tools/ACache;
    .local v17, "aCache":Lco/bxvip/tools/ACache;
    move-object/from16 v18, v10

    move-object v10, v6

    move-object v6, v15

    .line 66
    .end local v6    # "var6":Ljava/util/HashMap;
    .local v10, "var6":Ljava/util/HashMap;
    .local v18, "value1":Ljava/lang/String;
    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$onPluginNotExistsForActivity$1;-><init>(Lcom/qihoo360/replugin/sdk/BxHostCallbacks;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/app/ProgressDialog;)V

    move-object/from16 v1, v16

    check-cast v1, Lcom/qihoo360/replugin/sdk/net/IResponseListener;

    invoke-interface {v9, v7, v8, v10, v1}, Lcom/qihoo360/replugin/sdk/net/IRequest;->request(Lcom/qihoo360/replugin/sdk/net/Request$Method;Ljava/lang/String;Ljava/lang/Object;Lcom/qihoo360/replugin/sdk/net/IResponseListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 66
    .end local v10    # "var6":Ljava/util/HashMap;
    goto :goto_2

    .line 112
    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    .line 112
    .end local v17    # "aCache":Lco/bxvip/tools/ACache;
    .end local v18    # "value1":Ljava/lang/String;
    .restart local v9    # "aCache":Lco/bxvip/tools/ACache;
    .local v10, "value1":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object v1, v0

    .line 113
    .end local v9    # "aCache":Lco/bxvip/tools/ACache;
    .end local v10    # "value1":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v17    # "aCache":Lco/bxvip/tools/ACache;
    .restart local v18    # "value1":Ljava/lang/String;
    :goto_1
    invoke-virtual {v15}, Landroid/app/ProgressDialog;->dismiss()V

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v15    # "var5":Landroid/app/ProgressDialog;
    goto :goto_2

    .line 114
    .end local v17    # "aCache":Lco/bxvip/tools/ACache;
    .end local v18    # "value1":Ljava/lang/String;
    .restart local v9    # "aCache":Lco/bxvip/tools/ACache;
    .restart local v10    # "value1":Ljava/lang/String;
    :cond_3
    move-object/from16 v14, p1

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    .line 116
    .end local v9    # "aCache":Lco/bxvip/tools/ACache;
    .end local v10    # "value1":Ljava/lang/String;
    .restart local v17    # "aCache":Lco/bxvip/tools/ACache;
    .restart local v18    # "value1":Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    return v1
.end method
