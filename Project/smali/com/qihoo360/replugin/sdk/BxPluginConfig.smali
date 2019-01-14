.class public Lcom/qihoo360/replugin/sdk/BxPluginConfig;
.super Ljava/lang/Object;
.source "BxPluginConfig.java"


# static fields
.field private static APP_KEY:Ljava/lang/String; = null

.field private static final CONTENT_URL:Ljava/lang/String; = "content://com.qihoo360.replugin.dev.tool/config"

.field private static final VERSION_CODE:I = 0x3

.field private static download:Z

.field private static randomRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/16 v0, 0x270f

    sput v0, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->randomRange:I

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->download:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->APP_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static getDownloadIfNotExists()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->download:Z

    return v0
.end method

.method public static getRandomRange()I
    .locals 1

    .line 73
    sget v0, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->randomRange:I

    return v0
.end method

.method public static getVersionCode()I
    .locals 1

    .line 32
    const/4 v0, 0x3

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "109"

    return-object v0
.end method

.method public static isDev()Z
    .locals 10

    .line 49
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.qihoo360.replugin.dev.tool/config"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 50
    .local v3, "var0":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const-string v2, "code"

    aput-object v2, v4, v0

    .line 51
    .local v4, "var1":[Ljava/lang/String;
    const-string v5, "name=?"

    .line 52
    .local v5, "var2":Ljava/lang/String;
    new-array v6, v1, [Ljava/lang/String;

    const-string v2, "is_dev"

    aput-object v2, v6, v0

    .line 53
    .local v6, "var3":[Ljava/lang/String;
    invoke-static {}, Lcom/qihoo360/replugin/sdk/a;->a()Landroid/content/Context;

    move-result-object v2

    move-object v8, v2

    .line 54
    .local v8, "var4":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 55
    .local v2, "var5":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 56
    return v0

    .line 59
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 60
    return v0

    .line 62
    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "true"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    .line 64
    return v1

    .line 66
    .end local v2    # "var5":Landroid/database/Cursor;
    .end local v3    # "var0":Landroid/net/Uri;
    .end local v4    # "var1":[Ljava/lang/String;
    .end local v5    # "var2":Ljava/lang/String;
    .end local v6    # "var3":[Ljava/lang/String;
    .end local v8    # "var4":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "var6":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    return v0
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "var0"    # Ljava/lang/String;

    .line 28
    sput-object p0, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->APP_KEY:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static setDownloadIfNotExists(Z)V
    .locals 0
    .param p0, "var0"    # Z

    .line 40
    sput-boolean p0, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->download:Z

    .line 41
    return-void
.end method

.method public static setRandomRange(I)V
    .locals 0
    .param p0, "var0"    # I

    .line 77
    sput p0, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->randomRange:I

    .line 78
    return-void
.end method
