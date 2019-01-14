.class public Lcom/qihoo360/replugin/utils/basic/ArrayMap;
.super Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field mCollections:Lcom/qihoo360/replugin/utils/basic/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 61
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;-><init>(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;)V
    .locals 0
    .param p1, "map"    # Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;

    .line 68
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;-><init>(Lcom/qihoo360/replugin/utils/basic/SimpleArrayMap;)V

    .line 69
    return-void
.end method

.method private getCollection()Lcom/qihoo360/replugin/utils/basic/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qihoo360/replugin/utils/basic/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->mCollections:Lcom/qihoo360/replugin/utils/basic/MapCollections;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap$1;

    invoke-direct {v0, p0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap$1;-><init>(Lcom/qihoo360/replugin/utils/basic/ArrayMap;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->mCollections:Lcom/qihoo360/replugin/utils/basic/MapCollections;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->mCollections:Lcom/qihoo360/replugin/utils/basic/MapCollections;

    return-object v0
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/basic/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->getCollection()Lcom/qihoo360/replugin/utils/basic/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->getCollection()Lcom/qihoo360/replugin/utils/basic/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->ensureCapacity(I)V

    .line 142
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 154
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/basic/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/basic/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArrayMap;, "Lcom/qihoo360/replugin/utils/basic/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->getCollection()Lcom/qihoo360/replugin/utils/basic/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
