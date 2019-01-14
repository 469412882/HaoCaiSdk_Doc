.class public Lcom/qihoo360/replugin/sdk/net/d;
.super Ljava/lang/Object;
.source "d.java"

# interfaces
.implements Lcom/qihoo360/replugin/sdk/net/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Lcom/qihoo360/replugin/sdk/net/Request$Method;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Lcom/qihoo360/replugin/sdk/net/Request;
    .locals 2
    .param p1, "var1"    # Lcom/qihoo360/replugin/sdk/net/Request$Method;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/replugin/sdk/net/Request$Method;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/qihoo360/replugin/sdk/net/Request;"
        }
    .end annotation

    .line 16
    .local p4, "var4":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/qihoo360/replugin/sdk/net/Request;

    invoke-direct {v0}, Lcom/qihoo360/replugin/sdk/net/Request;-><init>()V

    .line 17
    .local v0, "var5":Lcom/qihoo360/replugin/sdk/net/Request;
    iput-object p1, v0, Lcom/qihoo360/replugin/sdk/net/Request;->mMethod:Lcom/qihoo360/replugin/sdk/net/Request$Method;

    .line 18
    iput-object p2, v0, Lcom/qihoo360/replugin/sdk/net/Request;->mUrl:Ljava/lang/String;

    .line 19
    sget-object v1, Lcom/qihoo360/replugin/sdk/net/Request$Method;->GET:Lcom/qihoo360/replugin/sdk/net/Request$Method;

    if-ne p1, v1, :cond_0

    .line 20
    move-object v1, p3

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, p2, v1}, Lcom/qihoo360/replugin/sdk/net/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qihoo360/replugin/sdk/net/Request;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_0
    iput-object p3, v0, Lcom/qihoo360/replugin/sdk/net/Request;->mParams:Ljava/lang/Object;

    .line 25
    :goto_0
    iput-object p4, v0, Lcom/qihoo360/replugin/sdk/net/Request;->mHeaders:Ljava/util/Map;

    .line 26
    const-string v1, "application/json"

    iput-object v1, v0, Lcom/qihoo360/replugin/sdk/net/Request;->mContentType:Ljava/lang/String;

    .line 27
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/util/Map;

    .line 31
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 32
    return-object v0

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    .local v1, "var3":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    if-eqz p2, :cond_1

    .line 37
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 40
    .local v2, "var4":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 42
    .local v3, "var5":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 43
    .local v4, "var6":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 44
    .local v5, "var7":Ljava/lang/Object;
    const-string v6, "&"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 45
    .end local v3    # "var5":Ljava/util/Map$Entry;
    .end local v4    # "var6":Ljava/lang/Object;
    .end local v5    # "var7":Ljava/lang/Object;
    goto :goto_0

    .line 48
    .end local v2    # "var4":Ljava/util/Iterator;
    :cond_1
    nop

    .line 51
    .local v0, "var9":Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 54
    goto :goto_1

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "var8":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 56
    .end local v2    # "var8":Ljava/net/MalformedURLException;
    :goto_1
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
