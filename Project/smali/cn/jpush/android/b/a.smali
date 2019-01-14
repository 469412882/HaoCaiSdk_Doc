.class public final Lcn/jpush/android/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;IJ)Lcn/jiguang/net/HttpResponse;
    .locals 7

    .line 31
    const-string p1, "HttpManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action:httpSimpleGet - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-wide/16 v0, 0xc8

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const-wide/32 v0, 0xea60

    cmp-long p1, p2, v0

    if-lez p1, :cond_1

    .line 35
    :cond_0
    const-wide/16 p2, 0x7d0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 38
    nop

    .line 41
    const/4 v0, 0x0

    move-object p1, v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    new-instance v2, Lcn/jiguang/net/HttpRequest;

    invoke-direct {v2, p0}, Lcn/jiguang/net/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v3, "Connection"

    const-string v4, "Close"

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v3, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {v0, v2}, Lcn/jiguang/net/HttpUtils;->httpGet(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    :try_start_1
    invoke-virtual {v2}, Lcn/jiguang/net/HttpResponse;->getResponseCode()I

    move-result p1

    .line 46
    const-string v3, "HttpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "statusCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_2

    .line 48
    nop

    .line 65
    return-object v2

    .line 54
    :cond_2
    nop

    .line 56
    move-object p1, v2

    goto :goto_3

    .line 52
    :catch_0
    move-exception p1

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_1

    .line 50
    :catch_1
    move-exception p1

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_2

    .line 52
    :catch_2
    move-exception v2

    .line 53
    :goto_1
    const-string v3, "HttpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Catch AssertionError to avoid http close crash - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 50
    :catch_3
    move-exception v2

    .line 51
    :goto_2
    const-string v3, "HttpManager"

    const-string v4, "http client execute error"

    invoke-static {v3, v4, v2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    nop

    .line 56
    :goto_3
    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    .line 57
    return-object p1

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 61
    :try_start_2
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 63
    :goto_4
    goto :goto_0

    .line 62
    :catch_4
    move-exception v2

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;IJI)[B
    .locals 0

    .line 70
    nop

    .line 71
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_0

    .line 72
    const/4 p1, 0x5

    const-wide/16 p3, 0x1388

    invoke-static {p0, p1, p3, p4}, Lcn/jpush/android/b/a;->b(Ljava/lang/String;IJ)[B

    move-result-object p1

    .line 73
    if-nez p1, :cond_0

    .line 71
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object p1
.end method

.method private static b(Ljava/lang/String;IJ)[B
    .locals 11

    .line 81
    if-lez p1, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 82
    :cond_0
    nop

    .line 83
    const/4 p1, 0x1

    :cond_1
    const-wide/16 v0, 0xc8

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    const-wide/32 v0, 0xea60

    cmp-long v2, p2, v0

    if-lez v2, :cond_3

    .line 84
    :cond_2
    const-wide/16 p2, 0x7d0

    .line 85
    :cond_3
    const-string v0, "HttpManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:httpGet - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    nop

    .line 88
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    const/4 v0, -0x1

    .line 93
    nop

    .line 96
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v2

    move-object v3, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0xc8

    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 103
    :try_start_1
    const-string v3, "Accept-Encoding"

    const-string v8, "identity"

    invoke-virtual {v7, v3, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "Connection"

    const-string v8, "Close"

    invoke-virtual {v7, v3, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    :try_start_2
    const-string v4, "HttpManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "statusCode:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-ne v3, v6, :cond_6

    .line 109
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4
    :try_end_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    :try_start_3
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    if-eqz v5, :cond_4

    .line 112
    :try_start_4
    invoke-static {v5}, Lcn/jiguang/net/HttpUtils;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_4
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 125
    :catchall_0
    move-exception p0

    move-object v0, v5

    goto/16 :goto_16

    .line 122
    :catch_0
    move-exception v0

    move v6, v4

    move-object v4, v0

    move-object v0, v5

    goto :goto_6

    .line 118
    :catch_1
    move-exception p1

    move-object v0, v5

    goto :goto_3

    .line 116
    :catch_2
    move-exception v0

    move-object v0, v5

    goto :goto_4

    .line 125
    :cond_4
    move-object v0, v2

    :goto_1
    if-eqz v5, :cond_5

    .line 127
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 129
    goto :goto_2

    .line 128
    :catch_3
    move-exception p1

    .line 131
    :cond_5
    :goto_2
    if-eqz v7, :cond_d

    .line 132
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_10

    .line 122
    :catch_4
    move-exception v5

    move v6, v4

    move-object v4, v5

    goto :goto_6

    .line 118
    :catch_5
    move-exception p1

    :goto_3
    move v5, v4

    goto :goto_7

    .line 116
    :catch_6
    move-exception v5

    :goto_4
    move v5, v4

    goto :goto_8

    .line 125
    :cond_6
    if-eqz v0, :cond_7

    .line 127
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 129
    goto :goto_5

    .line 128
    :catch_7
    move-exception v4

    .line 131
    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    .line 132
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    :cond_8
    move v4, v3

    move-object v3, v7

    goto/16 :goto_14

    .line 122
    :catch_8
    move-exception v4

    move v6, v5

    :goto_6
    move v5, v3

    goto :goto_9

    .line 118
    :catch_9
    move-exception p1

    :goto_7
    move v4, v3

    goto :goto_a

    .line 116
    :catch_a
    move-exception v4

    :goto_8
    move v4, v3

    goto :goto_b

    .line 125
    :catchall_1
    move-exception p0

    goto/16 :goto_16

    .line 122
    :catch_b
    move-exception v3

    move v6, v5

    move v5, v4

    move-object v4, v3

    :goto_9
    move-object v3, v7

    goto :goto_c

    .line 118
    :catch_c
    move-exception p1

    :goto_a
    move-object v3, v7

    goto :goto_e

    .line 116
    :catch_d
    move-exception v3

    :goto_b
    move-object v3, v7

    goto/16 :goto_12

    .line 125
    :catchall_2
    move-exception p0

    move-object v7, v3

    goto/16 :goto_16

    .line 122
    :catch_e
    move-exception v6

    move v10, v5

    move v5, v4

    move-object v4, v6

    move v6, v10

    .line 123
    :goto_c
    :try_start_7
    const-string v7, "HttpManager"

    const-string v8, "http client execute error"

    invoke-static {v7, v8, v4}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 125
    if-eqz v0, :cond_9

    .line 127
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f

    .line 129
    goto :goto_d

    .line 128
    :catch_f
    move-exception v4

    .line 131
    :cond_9
    :goto_d
    if-eqz v3, :cond_a

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    :cond_a
    move v4, v5

    move v5, v6

    goto/16 :goto_14

    .line 118
    :catch_10
    move-exception p1

    .line 119
    :goto_e
    :try_start_9
    const-string p1, "HttpManager"

    const-string p2, "Catch SSLHandshakeException, http client execute error!"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 125
    if-eqz v0, :cond_b

    .line 127
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    .line 129
    goto :goto_f

    .line 128
    :catch_11
    move-exception p1

    .line 131
    :cond_b
    :goto_f
    if-eqz v3, :cond_c

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    :cond_c
    move-object v0, v2

    move v3, v4

    move v4, v5

    :cond_d
    :goto_10
    if-ne v6, v3, :cond_10

    .line 148
    if-nez v4, :cond_e

    .line 149
    :try_start_b
    const-string p0, "HttpManager"

    const-string p1, "Unexpected: downloaded bytes content length is 0"

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v2

    .line 160
    :catch_12
    move-exception p0

    goto :goto_11

    .line 153
    :cond_e
    array-length p0, v0

    if-ge p0, v4, :cond_f

    .line 154
    const-string p0, "HttpManager"

    const-string p1, "Download bytes failed. Got bytes len < header content length."

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_12

    .line 155
    return-object v2

    .line 158
    :cond_f
    return-object v0

    .line 160
    :goto_11
    nop

    .line 161
    const-string p1, "HttpManager"

    const-string p2, "parse response error"

    invoke-static {p1, p2, p0}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    return-object v2

    .line 164
    :cond_10
    const/16 p1, 0x190

    if-ne p1, v3, :cond_11

    .line 165
    const-string p1, "HttpManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "server response failure - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v2

    .line 167
    :cond_11
    const/16 p1, 0x194

    if-ne p1, v3, :cond_12

    .line 168
    const-string p1, "HttpManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Request path does not exist: 404 - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-object v2

    .line 171
    :cond_12
    const-string p1, "HttpManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Other wrong response status - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", url:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object v2

    .line 116
    :catch_13
    move-exception v6

    .line 117
    :goto_12
    :try_start_c
    const-string v6, "HttpManager"

    const-string v7, "Catch SSLPeerUnverifiedException, http client execute error!"

    invoke-static {v6, v7}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 125
    if-eqz v0, :cond_13

    .line 127
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_14

    .line 129
    goto :goto_13

    .line 128
    :catch_14
    move-exception v6

    .line 131
    :cond_13
    :goto_13
    if-eqz v3, :cond_14

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    :cond_14
    :goto_14
    if-lt v1, p1, :cond_15

    .line 137
    return-object v2

    .line 139
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 141
    int-to-long v6, v1

    mul-long v6, v6, p2

    :try_start_e
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_15

    .line 143
    :goto_15
    goto/16 :goto_0

    .line 142
    :catch_15
    move-exception v6

    goto :goto_15

    .line 125
    :goto_16
    if-eqz v0, :cond_16

    .line 127
    :try_start_f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16

    .line 129
    goto :goto_17

    .line 128
    :catch_16
    move-exception p1

    .line 131
    :cond_16
    :goto_17
    if-eqz v7, :cond_17

    .line 132
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    throw p0
.end method
