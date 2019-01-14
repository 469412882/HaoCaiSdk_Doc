.class public final enum Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;
.super Ljava/lang/Enum;
.source "ManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

.field public static final enum INS:Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

.field public static final TAG:Ljava/lang/String; = "ms-parser"


# instance fields
.field private mActivityActionPluginsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPluginActivityInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPluginReceiverInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPluginServiceInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mServiceActionPluginsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

    const-string v1, "INS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->INS:Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

    sget-object v1, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->INS:Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

    aput-object v1, v0, v2

    sput-object v0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->$VALUES:[Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mPluginActivityInfoMap:Ljava/util/Map;

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mPluginServiceInfoMap:Ljava/util/Map;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mPluginReceiverInfoMap:Ljava/util/Map;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mActivityActionPluginsMap:Ljava/util/Map;

    .line 66
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mServiceActionPluginsMap:Ljava/util/Map;

    return-void
.end method

.method private doFillActionPlugins(Ljava/lang/String;Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;Ljava/util/Map;)V
    .locals 6
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "componentBean"    # Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 137
    .local p3, "actionPluginsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz p3, :cond_4

    iget-object v0, p2, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;->intentFilters:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    .line 141
    :cond_0
    iget-object v0, p2, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;->intentFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 142
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 143
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    .local v3, "action":Ljava/lang/String;
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 146
    .local v4, "plugins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 147
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v4, v5

    .line 148
    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_1
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "plugins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 152
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 153
    :cond_3
    return-void

    .line 138
    :cond_4
    :goto_2
    return-void
.end method

.method private doFillFilters(Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;Ljava/util/Map;)V
    .locals 3
    .param p1, "b"    # Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;)V"
        }
    .end annotation

    .line 121
    .local p2, "filterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    iget-object v0, p1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;->name:Ljava/lang/String;

    .line 122
    .local v0, "cn":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 123
    .local v1, "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-nez v1, :cond_0

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 125
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    iget-object v2, p1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;->intentFilters:Ljava/util/List;

    .line 128
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-eqz v2, :cond_1

    .line 129
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_1
    return-void
.end method

.method private intentFilterStr(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 263
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 266
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    .line 269
    .local v3, "c":I
    if-lez v3, :cond_0

    .line 270
    const-string v4, "action:{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_0
    :goto_1
    if-lez v3, :cond_1

    .line 273
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    add-int/lit8 v3, v3, -0x1

    .line 275
    if-nez v3, :cond_0

    .line 276
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 281
    :cond_1
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v3

    .line 282
    if-lez v3, :cond_2

    .line 283
    const-string v4, ", category:{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_2
    :goto_2
    if-lez v3, :cond_3

    .line 286
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 v3, v3, -0x1

    .line 288
    if-nez v3, :cond_2

    .line 289
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 294
    :cond_3
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    .line 295
    if-lez v3, :cond_4

    .line 296
    const-string v4, ", data-scheme:{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_4
    :goto_3
    if-lez v3, :cond_5

    .line 299
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v3, v3, -0x1

    .line 301
    if-nez v3, :cond_4

    .line 302
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 307
    :cond_5
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v3

    .line 308
    if-lez v3, :cond_6

    .line 309
    const-string v4, ", data-path:{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_6
    :goto_4
    if-lez v3, :cond_8

    .line 312
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v4

    .line 313
    .local v4, "matcher":Landroid/os/PatternMatcher;
    invoke-virtual {v4}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    add-int/lit8 v3, v3, -0x1

    .line 315
    if-nez v3, :cond_7

    .line 316
    const-string v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .end local v4    # "matcher":Landroid/os/PatternMatcher;
    :cond_7
    goto :goto_4

    .line 321
    :cond_8
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    .line 322
    if-lez v3, :cond_9

    .line 323
    const-string v4, ", data-type:{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_9
    :goto_5
    if-lez v3, :cond_a

    .line 326
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    add-int/lit8 v3, v3, -0x1

    .line 328
    if-nez v3, :cond_9

    .line 329
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 333
    :cond_a
    const-string v4, "}, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "c":I
    goto/16 :goto_0

    .line 335
    :cond_b
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseComponent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p1, "plugin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 112
    .local p2, "filterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    .local p3, "componentBeans":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;>;"
    .local p4, "actionPluginsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz p3, :cond_0

    .line 113
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;

    .line 114
    .local v1, "componentBean":Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;
    invoke-direct {p0, v1, p2}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->doFillFilters(Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;Ljava/util/Map;)V

    .line 115
    invoke-direct {p0, p1, v1, p4}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->doFillActionPlugins(Ljava/lang/String;Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;Ljava/util/Map;)V

    .line 116
    .end local v1    # "componentBean":Lcom/qihoo360/mobilesafe/parser/manifest/bean/ComponentBean;
    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method private parseManifest(Ljava/lang/String;)Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;
    .locals 4
    .param p1, "manifestStr"    # Ljava/lang/String;

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;

    invoke-direct {v1}, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;-><init>()V

    .line 201
    .local v1, "handler":Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 202
    .local v2, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    move-object v0, v3

    .line 203
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v2    # "parser":Ljavax/xml/parsers/SAXParser;
    goto :goto_0

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 208
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_1

    .line 209
    const/4 v2, 0x0

    .line 212
    .local v2, "strReader":Ljava/io/StringReader;
    :try_start_1
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 213
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    if-eqz v2, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    .line 214
    :catch_1
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .end local v3    # "e":Ljava/lang/Throwable;
    if-eqz v2, :cond_1

    .line 218
    :goto_1
    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    goto :goto_3

    .line 217
    :goto_2
    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    :cond_0
    throw v3

    .line 222
    .end local v2    # "strReader":Ljava/io/StringReader;
    :cond_1
    :goto_3
    return-object v1
.end method

.method private printFilters(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;)V"
        }
    .end annotation

    .line 231
    .local p1, "actFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    .local p2, "svcFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    .local p3, "rcvFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const-string v0, "ms-parser"

    const-string v1, "\n\u6253\u5370 Activity - IntentFilter"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 236
    .local v2, "filter":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    const-string v3, "ms-parser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; val:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->intentFilterStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    .end local v2    # "filter":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    goto :goto_0

    .line 239
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    const-string v0, "ms-parser"

    const-string v1, "\n\u6253\u5370 Service - IntentFilter"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 243
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 244
    .restart local v2    # "filter":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    const-string v3, "ms-parser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; val:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->intentFilterStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    .end local v2    # "filter":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    goto :goto_1

    .line 247
    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 248
    const-string v0, "ms-parser"

    const-string v1, "\n\u6253\u5370 Receiver - IntentFilter"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_4
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 251
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 252
    .restart local v2    # "filter":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    const-string v3, "ms-parser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; val:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->intentFilterStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    .end local v2    # "filter":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    goto :goto_2

    .line 254
    :cond_5
    return-void
.end method

.method private putToMap(Ljava/util/Map;Ljava/util/Map;Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 1
    .param p3, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ")V"
        }
    .end annotation

    .line 96
    .local p1, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;>;"
    .local p2, "filterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    invoke-virtual {p3}, Lcom/qihoo360/replugin/model/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p3}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

    return-object v0
.end method

.method public static values()[Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;
    .locals 1

    .line 46
    sget-object v0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->$VALUES:[Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

    invoke-virtual {v0}, [Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

    return-object v0
.end method


# virtual methods
.method public getActivityFilterMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mPluginActivityInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getPluginsByActionWhenStartActivity(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mActivityActionPluginsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getPluginsByActionWhenStartService(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mServiceActionPluginsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getReceiverFilterMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mPluginReceiverInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getServiceFilterMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mPluginServiceInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public parse(Lcom/qihoo360/replugin/model/PluginInfo;Ljava/lang/String;)V
    .locals 7
    .param p1, "pli"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "manifestStr"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p2}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->parseManifest(Ljava/lang/String;)Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;

    move-result-object v0

    .line 77
    .local v0, "handler":Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v1, "activityFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mPluginActivityInfoMap:Ljava/util/Map;

    invoke-direct {p0, v2, v1, p1}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->putToMap(Ljava/util/Map;Ljava/util/Map;Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 79
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->getActivities()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mActivityActionPluginsMap:Ljava/util/Map;

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->parseComponent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V

    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v2, "serviceFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    iget-object v3, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mPluginServiceInfoMap:Ljava/util/Map;

    invoke-direct {p0, v3, v2, p1}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->putToMap(Ljava/util/Map;Ljava/util/Map;Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 83
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->getServices()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mServiceActionPluginsMap:Ljava/util/Map;

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->parseComponent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V

    .line 85
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v3, "receiverFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    iget-object v4, p0, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->mPluginReceiverInfoMap:Ljava/util/Map;

    invoke-direct {p0, v4, v3, p1}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->putToMap(Ljava/util/Map;Ljava/util/Map;Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 87
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/parser/manifest/XmlHandler;->getReceivers()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->parseComponent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V

    .line 90
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_0

    .line 91
    invoke-direct {p0, v1, v2, v3}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->printFilters(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 93
    :cond_0
    return-void
.end method
