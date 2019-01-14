.class public Lcom/qihoo360/replugin/component/utils/IntentMatcherHelper;
.super Ljava/lang/Object;
.source "IntentMatcherHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doMatchIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)Ljava/lang/String;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 73
    .local p2, "filtersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    if-nez p2, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v8, p1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 80
    .local v10, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v12

    .line 83
    .local v12, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/Map$Entry;

    .line 84
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 85
    .local v15, "pluginName":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 86
    .local v7, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-nez v7, :cond_1

    .line 87
    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/content/IntentFilter;

    .line 91
    .local v16, "filter":Landroid/content/IntentFilter;
    const-string v17, "ComponentList"

    move-object/from16 v1, v16

    move-object v2, v0

    move-object v3, v9

    move-object v4, v11

    move-object v5, v10

    move-object/from16 v18, v6

    move-object v6, v12

    move-object/from16 v19, v7

    move-object/from16 v7, v17

    .line 91
    .end local v7    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local v19, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 92
    .local v1, "match":I
    if-ltz v1, :cond_3

    .line 93
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 94
    const-string v2, "ms-parser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IntentFilter \u5339\u914d\u6210\u529f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    return-object v15

    .line 98
    :cond_3
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_4

    .line 100
    packed-switch v1, :pswitch_data_0

    .line 114
    const-string v2, "unknown reason"

    goto :goto_2

    .line 111
    :pswitch_0
    const-string v2, "type"

    .line 112
    .local v2, "reason":Ljava/lang/String;
    goto :goto_2

    .line 108
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string v2, "data"

    .line 109
    .restart local v2    # "reason":Ljava/lang/String;
    goto :goto_2

    .line 102
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string v2, "action"

    .line 103
    .restart local v2    # "reason":Ljava/lang/String;
    goto :goto_2

    .line 105
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string v2, "category"

    .line 106
    .restart local v2    # "reason":Ljava/lang/String;
    nop

    .line 114
    :goto_2
    nop

    .line 117
    const-string v3, "ms-parser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter did not match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v1    # "match":I
    .end local v2    # "reason":Ljava/lang/String;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    :cond_4
    nop

    .line 90
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_1

    .line 121
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    .end local v15    # "pluginName":Ljava/lang/String;
    .end local v19    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :cond_5
    goto/16 :goto_0

    .line 122
    :cond_6
    const-string v1, ""

    return-object v1

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getActivityInfo(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 56
    if-nez p1, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->INS:Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

    invoke-virtual {v0, p1}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->getActivityFilterMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/qihoo360/replugin/component/utils/IntentMatcherHelper;->doMatchIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "activity":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/qihoo360/i/Factory;->queryActivityInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method
