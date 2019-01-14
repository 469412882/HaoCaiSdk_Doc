.class public Lcom/qihoo360/loader2/FinderBuiltin;
.super Ljava/lang/Object;
.source "FinderBuiltin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final loadPlugins(Landroid/content/Context;Lcom/qihoo360/loader2/Builder$PxAll;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "all"    # Lcom/qihoo360/loader2/Builder$PxAll;

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "plugins-builtin.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 54
    invoke-static {v0, p1}, Lcom/qihoo360/loader2/FinderBuiltin;->readConfig(Ljava/io/InputStream;Lcom/qihoo360/loader2/Builder$PxAll;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1

    .line 61
    const-string v2, "ws001"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 55
    :catch_1
    move-exception v1

    .line 56
    .local v1, "e0":Ljava/io/FileNotFoundException;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "ws001"

    const-string v3, "plugins-builtin.json not found"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v1    # "e0":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_0
    nop

    .line 64
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    return-void
.end method

.method private static final readConfig(Ljava/io/InputStream;Lcom/qihoo360/loader2/Builder$PxAll;)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "all"    # Lcom/qihoo360/loader2/Builder$PxAll;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/qihoo360/replugin/utils/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/qihoo360/replugin/utils/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "ja":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 70
    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 71
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 72
    .local v3, "jo":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 73
    goto :goto_1

    .line 75
    :cond_0
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_4

    .line 78
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "built-in plugins config: invalid item: name is empty, json="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    :cond_1
    invoke-static {v3}, Lcom/qihoo360/replugin/model/PluginInfo;->buildFromBuiltInJson(Lorg/json/JSONObject;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v5

    .line 83
    .local v5, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {v5}, Lcom/qihoo360/replugin/model/PluginInfo;->match()Z

    move-result v6

    if-nez v6, :cond_2

    .line 84
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_4

    .line 85
    const-string v6, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "built-in plugins config: mismatch item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 89
    :cond_2
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_3

    .line 90
    const-string v6, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "built-in plugins config: item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_3
    invoke-virtual {p1, v5}, Lcom/qihoo360/loader2/Builder$PxAll;->addBuiltin(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 70
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "i":I
    :cond_5
    return-void
.end method
