.class public final Lcom/qihoo360/replugin/sdk/net/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/sdk/net/Request$Method;
    }
.end annotation


# instance fields
.field mContentType:Ljava/lang/String;

.field mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMethod:Lcom/qihoo360/replugin/sdk/net/Request$Method;

.field mParams:Ljava/lang/Object;

.field mUrl:Ljava/lang/String;

.field timeoutMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/qihoo360/replugin/sdk/net/Request$Method;->GET:Lcom/qihoo360/replugin/sdk/net/Request$Method;

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/net/Request;->mMethod:Lcom/qihoo360/replugin/sdk/net/Request$Method;

    .line 25
    const/16 v0, 0x7530

    iput v0, p0, Lcom/qihoo360/replugin/sdk/net/Request;->timeoutMs:I

    .line 26
    return-void
.end method

.method private encodeParameters(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "var1"    # Ljava/lang/Object;

    .line 38
    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 39
    .local v0, "var2":Lcom/google/gson/GsonBuilder;
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 40
    .local v1, "var3":Lcom/google/gson/Gson;
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "var4":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 42
    .end local v0    # "var2":Lcom/google/gson/GsonBuilder;
    .end local v1    # "var3":Lcom/google/gson/Gson;
    .end local v2    # "var4":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "var5":Ljava/lang/Exception;
    throw v0
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/Request;->mHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/Request;->mHeaders:Ljava/util/Map;

    :goto_0
    return-object v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/Request;->mMethod:Lcom/qihoo360/replugin/sdk/net/Request$Method;

    sget-object v1, Lcom/qihoo360/replugin/sdk/net/Request$Method;->POST:Lcom/qihoo360/replugin/sdk/net/Request$Method;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/Request;->mParams:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/Request;->mParams:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/sdk/net/Request;->encodeParameters(Ljava/lang/Object;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
