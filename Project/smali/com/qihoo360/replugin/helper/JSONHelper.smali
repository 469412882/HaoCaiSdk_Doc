.class public Lcom/qihoo360/replugin/helper/JSONHelper;
.super Ljava/lang/Object;
.source "JSONHelper.java"


# static fields
.field private static final LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/qihoo360/replugin/RePluginInternal;->FOR_DEV:Z

    sput-boolean v0, Lcom/qihoo360/replugin/helper/JSONHelper;->LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneNoThrows(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "from"    # Lorg/json/JSONObject;

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/qihoo360/replugin/helper/JSONHelper;->LOG:Z

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "jo"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 49
    .local p2, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/qihoo360/replugin/helper/JSONHelper;->LOG:Z

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static remove(Lorg/json/JSONArray;I)V
    .locals 2
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "index"    # I

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/helper/JSONHelper;->removeBelowAPI19(Lorg/json/JSONArray;I)V

    .line 85
    :goto_0
    return-void
.end method

.method private static removeBelowAPI19(Lorg/json/JSONArray;I)V
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "index"    # I

    .line 88
    if-gez p1, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    :try_start_0
    const-class v0, Lorg/json/JSONArray;

    const-string v1, "values"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 93
    .local v0, "valuesField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 96
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 97
    return-void

    .line 99
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "valuesField":Ljava/lang/reflect/Field;
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
