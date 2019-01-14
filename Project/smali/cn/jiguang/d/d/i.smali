.class public final Lcn/jiguang/d/d/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcn/jiguang/net/SSLTrustManager;


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ZI)I
    .locals 9

    const/4 v0, -0x1

    if-gtz p4, :cond_0

    const-string p0, "HttpHelper"

    const-string p1, "sendLogs has retry but failed"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    new-instance v1, Lcn/jiguang/net/HttpRequest;

    invoke-direct {v1, p1}, Lcn/jiguang/net/HttpRequest;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lcn/jiguang/net/HttpRequest;->setConnectTimeout(I)V

    invoke-virtual {v1, v2}, Lcn/jiguang/net/HttpRequest;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/jiguang/net/HttpRequest;->setDoOutPut(Z)V

    invoke-virtual {v1, v2}, Lcn/jiguang/net/HttpRequest;->setDoInPut(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcn/jiguang/net/HttpRequest;->setUseCaches(Z)V

    :try_start_0
    const-string v4, ""

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-static {v4}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p0, "HttpHelper"

    const-string p1, "report content is null or empty,give up http report"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    :cond_2
    const-string v5, "Accept"

    const-string v6, "application/jason"

    invoke-virtual {v1, v5, v6}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v1, v5, v6}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v1, v5, v6}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "X-App-Key"

    invoke-static {p0}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_3

    invoke-static {}, Lcn/jiguang/d/d/o;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcn/jiguang/d/d/o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {v5}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v5, "HttpHelper"

    const-string v6, "generate report token failed"

    :goto_1
    invoke-static {v5, v6}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-static {v5}, Lcn/jiguang/d/d/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v5, "HttpHelper"

    const-string v6, "generate basic authorization failed"

    goto :goto_1

    :cond_5
    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Basic "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Charset"

    const-string v6, "UTF-8"

    invoke-virtual {v1, v5, v6}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_6

    const-string p0, "HttpHelper"

    const-string p1, "generate basic64 authorization token failed,give up http report"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x3

    return p0

    :cond_6
    if-eqz p3, :cond_7

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcn/jiguang/d/g/h;->a([B)[B

    move-result-object v4

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    :goto_3
    invoke-virtual {v1, v4}, Lcn/jiguang/net/HttpRequest;->setBody(Ljava/lang/Object;)V

    const-string v5, "Content-Length"

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcn/jiguang/net/HttpRequest;->setHaveRspData(Z)V

    invoke-virtual {v1, v2}, Lcn/jiguang/net/HttpRequest;->setNeedRetryIfHttpsFailed(Z)V

    sget-object v2, Lcn/jiguang/d/d/i;->a:Lcn/jiguang/net/SSLTrustManager;

    if-nez v2, :cond_8

    const-string v2, ""
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcn/jiguang/service/Protocol;->getCerTificate()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_4

    :catch_0
    move-exception v3

    :goto_4
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Lcn/jiguang/net/SSLTrustManager;

    invoke-direct {v3, v2}, Lcn/jiguang/net/SSLTrustManager;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcn/jiguang/d/d/i;->a:Lcn/jiguang/net/SSLTrustManager;

    :cond_8
    sget-object v2, Lcn/jiguang/d/d/i;->a:Lcn/jiguang/net/SSLTrustManager;

    if-eqz v2, :cond_9

    sget-object v2, Lcn/jiguang/d/d/i;->a:Lcn/jiguang/net/SSLTrustManager;

    invoke-virtual {v1, v2}, Lcn/jiguang/net/HttpRequest;->setSslTrustManager(Lcn/jiguang/net/SSLTrustManager;)V

    :cond_9
    invoke-static {p0, v1}, Lcn/jiguang/net/HttpUtils;->httpPost(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/net/HttpResponse;->getResponseCode()I

    move-result v1

    const-string v2, "HttpHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "status code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_e

    const/16 v2, 0x191

    if-eq v1, v2, :cond_d

    const/16 v2, 0x194

    if-eq v1, v2, :cond_c

    const/16 v2, 0x1ad

    if-eq v1, v2, :cond_c

    const/16 v2, 0xbbd

    if-eq v1, v2, :cond_b

    div-int/lit8 v1, v1, 0x64

    const/4 p0, 0x5

    if-ne v1, p0, :cond_a

    const/16 p0, 0x1f4

    return p0

    :cond_a
    const/4 p0, -0x5

    return p0

    :cond_b
    add-int/2addr p4, v0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/jiguang/d/d/i;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ZI)I

    move-result p0

    return p0

    :cond_c
    return v2

    :cond_d
    const-string p0, "HttpHelper"

    const-string p1, "401:authorization failed."

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_e
    return v2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "HttpHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "HttpHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :catch_2
    move-exception p0

    const-string p1, "HttpHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Catch AssertionError to avoid http close crash - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :catch_3
    move-exception p0

    const-string p1, "HttpHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "IOException:debug"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :catch_4
    move-exception p0

    const-string p1, "HttpHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ProtocolException:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Z)I
    .locals 5

    const/4 p2, 0x2

    invoke-static {p2}, Lcn/jiguang/d/d/o;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendLogs url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HttpHelper"

    const-string v2, "Action - checkURLisValide"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcn/jiguang/d/d/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HttpHelper"

    const-string v4, "The report Url is invalid, give up this http report"

    :goto_0
    invoke-static {v1, v4}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HttpHelper"

    const-string v4, "The report Url is invalid, give up this https report"

    goto :goto_0

    :goto_1
    if-nez v3, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    invoke-static {p0, v0, p1, v2, p2}, Lcn/jiguang/d/d/i;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ZI)I

    move-result p0

    return p0
.end method
