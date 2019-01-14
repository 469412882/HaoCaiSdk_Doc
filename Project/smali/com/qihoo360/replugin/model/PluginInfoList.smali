.class public Lcom/qihoo360/replugin/model/PluginInfoList;
.super Ljava/lang/Object;
.source "PluginInfoList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/qihoo360/replugin/model/PluginInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginInfoList"


# instance fields
.field private mJson:Lorg/json/JSONArray;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mList:Ljava/util/List;

    .line 52
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mJson:Lorg/json/JSONArray;

    return-void
.end method

.method private addToMap(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 2
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 65
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method private removeListElement(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "pn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 87
    .local v1, "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 90
    .end local v1    # "pluginInfo":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_0
    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 2
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 55
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/model/PluginInfoList;->get(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mJson:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/model/PluginInfoList;->addToMap(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 62
    return-void
.end method

.method public cloneList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 1
    .param p1, "pn"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/replugin/model/PluginInfo;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "p_a"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 105
    .local v1, "d":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "p.l"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 109
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_0

    .line 110
    const-string v3, "PluginInfoList"

    const-string v4, "load: Create error!"

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    return v0

    .line 114
    :cond_1
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_2

    .line 115
    const-string v3, "PluginInfoList"

    const-string v5, "load: Create a new list file"

    invoke-static {v3, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    return v4

    .line 122
    :cond_3
    sget-object v3, Lcom/qihoo360/replugin/utils/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/utils/FileUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 124
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_4

    .line 125
    const-string v4, "PluginInfoList"

    const-string v5, "load: Read Json error!"

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_4
    return v0

    .line 131
    :cond_5
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mJson:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "d":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "result":Ljava/lang/String;
    nop

    .line 145
    nop

    .line 145
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mJson:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 146
    iget-object v1, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mJson:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 147
    .local v1, "jo":Lorg/json/JSONObject;
    if-eqz v1, :cond_7

    .line 148
    invoke-static {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->createByJO(Lorg/json/JSONObject;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v2

    .line 149
    .local v2, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v2, :cond_6

    .line 150
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_7

    .line 151
    const-string v3, "PluginInfoList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load: PluginInfo Invalid. Ignore! jo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    :cond_6
    invoke-direct {p0, v2}, Lcom/qihoo360/replugin/model/PluginInfoList;->addToMap(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 145
    .end local v1    # "jo":Lorg/json/JSONObject;
    .end local v2    # "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_8
    return v4

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_9

    .line 140
    const-string v2, "PluginInfoList"

    const-string v3, "load: Parse Json Error!"

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_9
    return v0

    .line 133
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_a

    .line 135
    const-string v2, "PluginInfoList"

    const-string v3, "load: Load error!"

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :cond_a
    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "pn"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    .line 71
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mJson:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mJson:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    .local v1, "jo":Lorg/json/JSONObject;
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mJson:Lorg/json/JSONArray;

    invoke-static {v2, v0}, Lcom/qihoo360/replugin/helper/JSONHelper;->remove(Lorg/json/JSONArray;I)V

    .line 71
    .end local v1    # "jo":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/replugin/model/PluginInfoList;->removeListElement(Ljava/util/List;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "p_a"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 164
    .local v1, "d":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "p.l"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v2, "f":Ljava/io/File;
    iget-object v3, p0, Lcom/qihoo360/replugin/model/PluginInfoList;->mJson:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/qihoo360/replugin/utils/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v3, v4}, Lcom/qihoo360/replugin/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    const/4 v0, 0x1

    return v0

    .line 168
    .end local v1    # "d":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    :cond_0
    return v0
.end method
