.class public Lcom/qihoo360/replugin/sdk/net/b;
.super Ljava/lang/Object;
.source "b.java"

# interfaces
.implements Lcom/qihoo360/replugin/sdk/net/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/qihoo360/replugin/sdk/net/e<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/qihoo360/replugin/sdk/net/Request;

.field private c:Lcom/qihoo360/replugin/sdk/net/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/sdk/net/f<",
            "Lcom/qihoo360/replugin/sdk/net/j;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/16 v0, 0x2000

    sput v0, Lcom/qihoo360/replugin/sdk/net/b;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/qihoo360/replugin/sdk/net/Request;Lcom/qihoo360/replugin/sdk/net/f;)V
    .locals 0
    .param p1, "var1"    # Lcom/qihoo360/replugin/sdk/net/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/replugin/sdk/net/Request;",
            "Lcom/qihoo360/replugin/sdk/net/f<",
            "Lcom/qihoo360/replugin/sdk/net/j;",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/b;, "Lcom/qihoo360/replugin/sdk/net/b<TT;>;"
    .local p2, "var2":Lcom/qihoo360/replugin/sdk/net/f;, "Lcom/qihoo360/replugin/sdk/net/f<Lcom/qihoo360/replugin/sdk/net/j;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/b;->b:Lcom/qihoo360/replugin/sdk/net/Request;

    .line 23
    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/net/b;->c:Lcom/qihoo360/replugin/sdk/net/f;

    .line 24
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/qihoo360/replugin/sdk/net/j;
    .locals 4
    .param p1, "var1"    # Ljava/net/HttpURLConnection;

    .line 43
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/b;, "Lcom/qihoo360/replugin/sdk/net/b<TT;>;"
    new-instance v0, Lcom/qihoo360/replugin/sdk/net/j;

    invoke-direct {v0}, Lcom/qihoo360/replugin/sdk/net/j;-><init>()V

    .line 47
    .local v0, "var2":Lcom/qihoo360/replugin/sdk/net/j;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v1, "var3":Ljava/io/InputStream;
    goto :goto_0

    .line 48
    .end local v1    # "var3":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "var5":Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 52
    .local v1, "var3":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/sdk/net/j;->a(Ljava/io/InputStream;)V

    .line 53
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/qihoo360/replugin/sdk/net/j;->a(J)V

    .line 54
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qihoo360/replugin/sdk/net/j;->a(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qihoo360/replugin/sdk/net/j;->b(Ljava/lang/String;)V

    .line 56
    return-object v0
.end method

.method private a(Ljava/net/URL;Lcom/qihoo360/replugin/sdk/net/Request;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "var1"    # Ljava/net/URL;
    .param p2, "var2"    # Lcom/qihoo360/replugin/sdk/net/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/b;, "Lcom/qihoo360/replugin/sdk/net/b<TT;>;"
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 61
    .local v0, "var3":Ljava/net/HttpURLConnection;
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 62
    iget v1, p2, Lcom/qihoo360/replugin/sdk/net/Request;->timeoutMs:I

    .line 63
    .local v1, "var4":I
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 64
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 65
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 67
    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/qihoo360/replugin/sdk/net/Request;)V
    .locals 3
    .param p0, "var0"    # Ljava/net/HttpURLConnection;
    .param p1, "var1"    # Lcom/qihoo360/replugin/sdk/net/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/net/Request;->getPostBody()[B

    move-result-object v0

    .line 72
    .local v0, "var2":[B
    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 74
    const-string v1, "Content-Type"

    iget-object v2, p1, Lcom/qihoo360/replugin/sdk/net/Request;->mContentType:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v1, "var3":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 77
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 80
    .end local v1    # "var3":Ljava/io/DataOutputStream;
    :cond_0
    return-void
.end method

.method public static varargs a([Ljava/io/Closeable;)V
    .locals 5
    .param p0, "var0"    # [Ljava/io/Closeable;

    .line 134
    if-eqz p0, :cond_1

    .line 135
    move-object v0, p0

    .line 136
    .local v0, "var1":[Ljava/io/Closeable;
    array-length v1, p0

    .line 138
    .local v1, "var2":I
    const/4 v2, 0x0

    .line 138
    .local v2, "var3":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 139
    aget-object v3, v0, v2

    .line 140
    .local v3, "var4":Ljava/io/Closeable;
    if-eqz v3, :cond_0

    .line 142
    :try_start_0
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_1

    .line 143
    :catch_0
    move-exception v4

    .line 144
    .local v4, "var6":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 138
    .end local v3    # "var4":Ljava/io/Closeable;
    .end local v4    # "var6":Ljava/io/IOException;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "var1":[Ljava/io/Closeable;
    .end local v1    # "var2":I
    .end local v2    # "var3":I
    :cond_1
    return-void
.end method

.method private b(Ljava/net/HttpURLConnection;)Lcom/qihoo360/replugin/sdk/net/Response;
    .locals 8
    .param p1, "var1"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/qihoo360/replugin/sdk/net/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/b;, "Lcom/qihoo360/replugin/sdk/net/b<TT;>;"
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 84
    .local v0, "var2":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 85
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/sdk/net/b;->a(Ljava/net/HttpURLConnection;)Lcom/qihoo360/replugin/sdk/net/j;

    move-result-object v1

    .line 88
    .local v1, "var3":Lcom/qihoo360/replugin/sdk/net/j;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v2, "var4":Ljava/util/HashMap;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 91
    .local v3, "var5":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 93
    .local v4, "var6":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 94
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v4    # "var6":Ljava/util/Map$Entry;
    :cond_1
    goto :goto_0

    .line 98
    :cond_2
    const/16 v4, 0xc8

    if-lt v0, v4, :cond_3

    const/16 v4, 0x12c

    if-ge v0, v4, :cond_3

    .line 99
    iget-object v4, p0, Lcom/qihoo360/replugin/sdk/net/b;->c:Lcom/qihoo360/replugin/sdk/net/f;

    invoke-interface {v4, v1}, Lcom/qihoo360/replugin/sdk/net/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 100
    .local v4, "var7":Ljava/lang/Object;
    invoke-static {v4, v2}, Lcom/qihoo360/replugin/sdk/net/Response;->success(Ljava/lang/Object;Ljava/util/Map;)Lcom/qihoo360/replugin/sdk/net/Response;

    move-result-object v5

    return-object v5

    .line 102
    .end local v4    # "var7":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/qihoo360/replugin/sdk/net/b;->a(Lcom/qihoo360/replugin/sdk/net/j;)[B

    move-result-object v4

    invoke-static {v4, v2}, Lcom/qihoo360/replugin/sdk/net/Response;->error([BLjava/util/Map;)Lcom/qihoo360/replugin/sdk/net/Response;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public a()Lcom/qihoo360/replugin/sdk/net/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qihoo360/replugin/sdk/net/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/b;, "Lcom/qihoo360/replugin/sdk/net/b<TT;>;"
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/net/b;->b:Lcom/qihoo360/replugin/sdk/net/Request;

    iget-object v1, v1, Lcom/qihoo360/replugin/sdk/net/Request;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "var1":Ljava/net/URL;
    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/net/b;->b:Lcom/qihoo360/replugin/sdk/net/Request;

    invoke-direct {p0, v0, v1}, Lcom/qihoo360/replugin/sdk/net/b;->a(Ljava/net/URL;Lcom/qihoo360/replugin/sdk/net/Request;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 29
    .local v1, "var2":Ljava/net/HttpURLConnection;
    iget-object v2, p0, Lcom/qihoo360/replugin/sdk/net/b;->b:Lcom/qihoo360/replugin/sdk/net/Request;

    iget-object v2, v2, Lcom/qihoo360/replugin/sdk/net/Request;->mMethod:Lcom/qihoo360/replugin/sdk/net/Request$Method;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/sdk/net/Request$Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/qihoo360/replugin/sdk/net/b;->b:Lcom/qihoo360/replugin/sdk/net/Request;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/sdk/net/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 31
    .local v2, "var3":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 33
    .local v3, "var4":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 35
    .local v4, "var5":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .end local v4    # "var5":Ljava/lang/String;
    goto :goto_0

    .line 38
    :cond_0
    iget-object v4, p0, Lcom/qihoo360/replugin/sdk/net/b;->b:Lcom/qihoo360/replugin/sdk/net/Request;

    invoke-static {v1, v4}, Lcom/qihoo360/replugin/sdk/net/b;->a(Ljava/net/HttpURLConnection;Lcom/qihoo360/replugin/sdk/net/Request;)V

    .line 39
    invoke-direct {p0, v1}, Lcom/qihoo360/replugin/sdk/net/b;->b(Ljava/net/HttpURLConnection;)Lcom/qihoo360/replugin/sdk/net/Response;

    move-result-object v4

    return-object v4
.end method

.method public a(Lcom/qihoo360/replugin/sdk/net/j;)[B
    .locals 7
    .param p1, "var1"    # Lcom/qihoo360/replugin/sdk/net/j;

    .line 108
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/b;, "Lcom/qihoo360/replugin/sdk/net/b<TT;>;"
    const/4 v0, 0x0

    .line 112
    .local v0, "var2":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v3

    .line 113
    sget v3, Lcom/qihoo360/replugin/sdk/net/b;->a:I

    new-array v3, v3, [B

    .line 116
    .local v3, "var3":[B
    :goto_0
    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/net/j;->a()Ljava/io/InputStream;

    move-result-object v4

    sget v5, Lcom/qihoo360/replugin/sdk/net/b;->a:I

    invoke-virtual {v4, v3, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v5, v4

    .line 116
    .local v5, "var11":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 117
    invoke-virtual {v0, v3, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .local v4, "var5":[B
    nop

    .line 126
    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/net/j;->b()V

    .line 127
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/qihoo360/replugin/sdk/net/b;->a([Ljava/io/Closeable;)V

    .line 121
    return-object v4

    .line 126
    .end local v3    # "var3":[B
    .end local v4    # "var5":[B
    .end local v5    # "var11":I
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 122
    :catch_0
    move-exception v3

    .line 123
    .local v3, "var9":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    const/4 v3, 0x0

    .line 126
    .local v3, "var4":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/net/j;->b()V

    .line 127
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/qihoo360/replugin/sdk/net/b;->a([Ljava/io/Closeable;)V

    .line 128
    nop

    .line 130
    move-object v1, v3

    check-cast v1, [B

    return-object v1

    .line 126
    .end local v3    # "var4":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/net/j;->b()V

    .line 127
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/qihoo360/replugin/sdk/net/b;->a([Ljava/io/Closeable;)V

    .line 128
    throw v3
.end method

.method public b()Lcom/qihoo360/replugin/sdk/net/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qihoo360/replugin/sdk/net/e<",
            "TT;>;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/b;, "Lcom/qihoo360/replugin/sdk/net/b<TT;>;"
    new-instance v0, Lcom/qihoo360/replugin/sdk/net/b;

    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/net/b;->b:Lcom/qihoo360/replugin/sdk/net/Request;

    iget-object v2, p0, Lcom/qihoo360/replugin/sdk/net/b;->c:Lcom/qihoo360/replugin/sdk/net/f;

    invoke-direct {v0, v1, v2}, Lcom/qihoo360/replugin/sdk/net/b;-><init>(Lcom/qihoo360/replugin/sdk/net/Request;Lcom/qihoo360/replugin/sdk/net/f;)V

    return-object v0
.end method
