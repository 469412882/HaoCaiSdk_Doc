.class public final Lcom/qihoo360/replugin/sdk/utils/ConfKt;
.super Ljava/lang/Object;
.source "Conf.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Conf.kt\ncom/qihoo360/replugin/sdk/utils/ConfKt\n*L\n1#1,103:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u001a\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u001a\u0010\u0010\t\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u001a\u0010\u0010\u000b\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u001a\u0010\u0010\u000c\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u001a\u0010\u0010\r\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u001a\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u001a\u001a\u0010\u000f\u001a\u00020\u0010*\u00020\u00042\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0012H\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Pu_isDev",
        "",
        "Var1List",
        "",
        "",
        "VarRandom",
        "",
        "startIndex",
        "count",
        "getAppKey",
        "key",
        "getVal2",
        "getVal3",
        "getVal4",
        "getVar1",
        "w2",
        "",
        "urls",
        "Ljava/util/ArrayList;",
        "host-sdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public static final Pu_isDev()Z
    .locals 9

    .line 86
    const/4 v0, 0x0

    move v1, v0

    .line 87
    .local v1, "flag":Z
    nop

    .line 88
    :try_start_0
    const-string v2, "content://a.b.c.d.e.dev.tool/config"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 89
    .local v4, "var0":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const-string v3, "code"

    aput-object v3, v5, v0

    .line 90
    .local v5, "var1":[Ljava/lang/String;
    const-string v6, "name=?"

    .line 91
    .local v6, "var2":Ljava/lang/String;
    new-array v7, v2, [Ljava/lang/String;

    const-string v2, "plugin_update_dev"

    aput-object v2, v7, v0

    .line 92
    .local v7, "var3":[Ljava/lang/String;
    sget-object v2, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v2, 0x0

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 93
    .local v2, "var5":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 94
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "true"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 96
    const/4 v1, 0x1

    .line 94
    :cond_0
    goto :goto_0

    .line 100
    .end local v2    # "var5":Landroid/database/Cursor;
    .end local v4    # "var0":Landroid/net/Uri;
    .end local v5    # "var1":[Ljava/lang/String;
    .end local v6    # "var2":Ljava/lang/String;
    .end local v7    # "var3":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 101
    :cond_1
    nop

    .line 102
    return v1
.end method

.method public static final Var1List()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 18
    .local v0, "$i$a$1$apply":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 19
    .local v2, "$receiver":Ljava/util/ArrayList;
    const-string v3, "http://plist.gotoguxiang.com"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    const-string v3, "http://plist.aotubangfen.com"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v3, "http://plist.aujingift.com"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-string v3, "http://plist.jifenos.com"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v3, "http://plist.xmfn14.com"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const-string v3, "http://plist.fd94.com"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .end local v0    # "$i$a$1$apply":I
    .end local v2    # "$receiver":Ljava/util/ArrayList;
    nop

    .line 18
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static final VarRandom(II)I
    .locals 1
    .param p0, "startIndex"    # I
    .param p1, "count"    # I

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static bridge synthetic VarRandom$default(IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 68
    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->Var1List()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :cond_1
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->VarRandom(II)I

    move-result p0

    return p0
.end method

.method public static final getAppKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 63
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "androidAppOne"

    goto :goto_0

    .line 65
    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 63
    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final getVal2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "/index.php/appApi/request"

    goto :goto_0

    .line 44
    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 42
    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final getVal3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "d20a1bf73c288b4ad4ddc8eb3fc59274704a0495"

    goto :goto_0

    .line 50
    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 48
    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final getVal4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 57
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "developer-default"

    goto :goto_0

    .line 59
    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 57
    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final getVar1(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, "val1":Ljava/util/ArrayList;
    if-eqz p0, :cond_0

    invoke-static {p0, v0}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->w2(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-static {}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->Var1List()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 35
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 32
    .end local v0    # "val1":Ljava/util/ArrayList;
    :goto_0
    goto :goto_1

    .line 37
    :cond_2
    invoke-static {}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->Var1List()Ljava/util/List;

    move-result-object v1

    .line 29
    :goto_1
    return-object v1
.end method

.method private static final w2(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "urls"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    nop

    .line 74
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 75
    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    new-array v4, v2, [Ljava/lang/String;

    const-string v0, ";"

    aput-object v0, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "urlList":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    .line 77
    .local v1, "index":I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 76
    .end local v1    # "index":I
    goto :goto_1

    .line 80
    .end local v0    # "urlList":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 82
    :cond_1
    nop

    .line 83
    return-void
.end method
