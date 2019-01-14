.class public Lcom/qihoo360/replugin/sdk/net/EasyNet;
.super Lcom/qihoo360/replugin/sdk/net/a;
.source "EasyNet.java"

# interfaces
.implements Lcom/qihoo360/replugin/sdk/net/IRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qihoo360/replugin/sdk/net/a<",
        "Lcom/qihoo360/replugin/sdk/net/IRequest;",
        ">;",
        "Lcom/qihoo360/replugin/sdk/net/IRequest;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/qihoo360/replugin/sdk/net/a;-><init>()V

    .line 14
    return-void
.end method

.method private getGenericType([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 8
    .param p1, "var1"    # [Ljava/lang/reflect/Type;

    .line 73
    move-object v0, p1

    .line 74
    .local v0, "var2":[Ljava/lang/reflect/Type;
    array-length v1, p1

    .line 76
    .local v1, "var3":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 76
    .local v3, "var4":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 77
    aget-object v4, v0, v3

    .line 78
    .local v4, "var5":Ljava/lang/reflect/Type;
    move-object v5, v4

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 79
    .local v5, "var6":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/qihoo360/replugin/sdk/net/IResponseListener;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v2, v6, v2

    return-object v2

    .line 76
    .end local v4    # "var5":Ljava/lang/reflect/Type;
    .end local v5    # "var6":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v3    # "var4":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getReturnType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .param p1, "var1"    # Ljava/lang/Class;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/sdk/net/EasyNet;->getGenericType([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 65
    .local v0, "var2":Ljava/lang/reflect/Type;
    :goto_0
    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 65
    .local v1, "var3":Ljava/lang/reflect/Type;
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qihoo360/replugin/sdk/net/EasyNet;->getGenericType([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 69
    .end local v1    # "var3":Ljava/lang/reflect/Type;
    :cond_0
    return-object v0
.end method

.method public static newInstance()Lcom/qihoo360/replugin/sdk/net/EasyNet;
    .locals 1

    .line 17
    new-instance v0, Lcom/qihoo360/replugin/sdk/net/EasyNet;

    invoke-direct {v0}, Lcom/qihoo360/replugin/sdk/net/EasyNet;-><init>()V

    return-object v0
.end method


# virtual methods
.method public request(Lcom/qihoo360/replugin/sdk/net/Request$Method;Ljava/lang/String;Ljava/lang/Object;Lcom/qihoo360/replugin/sdk/net/IResponseListener;)V
    .locals 7
    .param p1, "var1"    # Lcom/qihoo360/replugin/sdk/net/Request$Method;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/qihoo360/replugin/sdk/net/Request$Method;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/qihoo360/replugin/sdk/net/IResponseListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    .local p4, "var4":Lcom/qihoo360/replugin/sdk/net/IResponseListener;, "Lcom/qihoo360/replugin/sdk/net/IResponseListener<TT;>;"
    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/qihoo360/replugin/sdk/net/EasyNet;->request(Lcom/qihoo360/replugin/sdk/net/Request$Method;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/qihoo360/replugin/sdk/net/IResponseListener;)V

    .line 26
    return-void
.end method

.method public request(Lcom/qihoo360/replugin/sdk/net/Request$Method;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/qihoo360/replugin/sdk/net/IResponseListener;)V
    .locals 9
    .param p1, "var1"    # Lcom/qihoo360/replugin/sdk/net/Request$Method;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/qihoo360/replugin/sdk/net/Request$Method;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qihoo360/replugin/sdk/net/IResponseListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    .local p4, "var4":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "var5":Lcom/qihoo360/replugin/sdk/net/IResponseListener;, "Lcom/qihoo360/replugin/sdk/net/IResponseListener<TT;>;"
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/sdk/net/EasyNet;->getReturnType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 30
    .local v0, "var6":Ljava/lang/reflect/Type;
    new-instance v1, Lcom/qihoo360/replugin/sdk/net/d;

    invoke-direct {v1}, Lcom/qihoo360/replugin/sdk/net/d;-><init>()V

    .line 31
    .local v1, "var7":Lcom/qihoo360/replugin/sdk/net/d;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/qihoo360/replugin/sdk/net/d;->a(Lcom/qihoo360/replugin/sdk/net/Request$Method;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Lcom/qihoo360/replugin/sdk/net/Request;

    move-result-object v2

    .line 32
    .local v2, "var8":Lcom/qihoo360/replugin/sdk/net/Request;
    new-instance v3, Lcom/qihoo360/replugin/sdk/net/c;

    invoke-direct {v3, v0}, Lcom/qihoo360/replugin/sdk/net/c;-><init>(Ljava/lang/reflect/Type;)V

    .line 33
    .local v3, "var9":Lcom/qihoo360/replugin/sdk/net/c;
    invoke-static {}, Lcom/qihoo360/replugin/sdk/net/h;->a()Lcom/qihoo360/replugin/sdk/net/h;

    move-result-object v4

    .line 34
    .local v4, "var10":Lcom/qihoo360/replugin/sdk/net/h;
    new-instance v5, Lcom/qihoo360/replugin/sdk/net/b;

    invoke-virtual {v4, v0}, Lcom/qihoo360/replugin/sdk/net/h;->a(Ljava/lang/reflect/Type;)Lcom/qihoo360/replugin/sdk/net/f;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/qihoo360/replugin/sdk/net/b;-><init>(Lcom/qihoo360/replugin/sdk/net/Request;Lcom/qihoo360/replugin/sdk/net/f;)V

    .line 35
    .local v5, "var11":Lcom/qihoo360/replugin/sdk/net/b;
    invoke-virtual {v3, v5}, Lcom/qihoo360/replugin/sdk/net/c;->a(Lcom/qihoo360/replugin/sdk/net/e;)Lcom/qihoo360/replugin/sdk/net/e;

    move-result-object v6

    .line 38
    .local v6, "var12":Lcom/qihoo360/replugin/sdk/net/e;
    :try_start_0
    invoke-interface {v6}, Lcom/qihoo360/replugin/sdk/net/e;->a()Lcom/qihoo360/replugin/sdk/net/Response;

    move-result-object v7

    .line 39
    .local v7, "var13":Lcom/qihoo360/replugin/sdk/net/Response;
    iget-boolean v8, v7, Lcom/qihoo360/replugin/sdk/net/Response;->mSuccess:Z

    if-eqz v8, :cond_0

    .line 40
    new-instance v8, Lcom/qihoo360/replugin/sdk/net/EasyNet$1;

    invoke-direct {v8, p0, p5, v7}, Lcom/qihoo360/replugin/sdk/net/EasyNet$1;-><init>(Lcom/qihoo360/replugin/sdk/net/EasyNet;Lcom/qihoo360/replugin/sdk/net/IResponseListener;Lcom/qihoo360/replugin/sdk/net/Response;)V

    invoke-static {v8}, Lcom/qihoo360/replugin/sdk/net/i;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 46
    :cond_0
    new-instance v8, Lcom/qihoo360/replugin/sdk/net/EasyNet$2;

    invoke-direct {v8, p0, p5}, Lcom/qihoo360/replugin/sdk/net/EasyNet$2;-><init>(Lcom/qihoo360/replugin/sdk/net/EasyNet;Lcom/qihoo360/replugin/sdk/net/IResponseListener;)V

    invoke-static {v8}, Lcom/qihoo360/replugin/sdk/net/i;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v7    # "var13":Lcom/qihoo360/replugin/sdk/net/Response;
    :goto_0
    goto :goto_1

    .line 52
    :catch_0
    move-exception v7

    .line 53
    .local v7, "var14":Ljava/io/IOException;
    new-instance v8, Lcom/qihoo360/replugin/sdk/net/EasyNet$3;

    invoke-direct {v8, p0, p5, v7}, Lcom/qihoo360/replugin/sdk/net/EasyNet$3;-><init>(Lcom/qihoo360/replugin/sdk/net/EasyNet;Lcom/qihoo360/replugin/sdk/net/IResponseListener;Ljava/io/IOException;)V

    invoke-static {v8}, Lcom/qihoo360/replugin/sdk/net/i;->a(Ljava/lang/Runnable;)V

    .line 60
    .end local v7    # "var14":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public request(Ljava/lang/String;Ljava/lang/Object;Lcom/qihoo360/replugin/sdk/net/IResponseListener;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/qihoo360/replugin/sdk/net/IResponseListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    .local p3, "var3":Lcom/qihoo360/replugin/sdk/net/IResponseListener;, "Lcom/qihoo360/replugin/sdk/net/IResponseListener<TT;>;"
    sget-object v0, Lcom/qihoo360/replugin/sdk/net/Request$Method;->POST:Lcom/qihoo360/replugin/sdk/net/Request$Method;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/qihoo360/replugin/sdk/net/EasyNet;->request(Lcom/qihoo360/replugin/sdk/net/Request$Method;Ljava/lang/String;Ljava/lang/Object;Lcom/qihoo360/replugin/sdk/net/IResponseListener;)V

    .line 22
    return-void
.end method
