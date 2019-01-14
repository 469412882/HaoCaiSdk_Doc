.class public final Lcn/jiguang/d/c/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/jiguang/d/c/p;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcn/jiguang/d/c/o;->b()Lcn/jiguang/d/c/o;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/d/c/o;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/c/j;->a(Ljava/lang/String;)Lcn/jiguang/d/c/j;

    move-result-object v3

    sget-object v4, Lcn/jiguang/d/c/j;->a:Lcn/jiguang/d/c/j;

    invoke-static {v3, v4}, Lcn/jiguang/d/c/j;->a(Lcn/jiguang/d/c/j;Lcn/jiguang/d/c/j;)Lcn/jiguang/d/c/j;

    move-result-object v3

    const/16 v4, 0x21

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcn/jiguang/d/c/m;->a(Lcn/jiguang/d/c/j;II)Lcn/jiguang/d/c/m;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/d/c/h;->a(Lcn/jiguang/d/c/m;)Lcn/jiguang/d/c/h;

    move-result-object v3

    const v4, 0xffff

    invoke-virtual {v3, v4}, Lcn/jiguang/d/c/h;->b(I)[B

    move-result-object v3

    array-length v4, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_4

    aget-object v8, v2, v7
    :try_end_0
    .catch Lcn/jiguang/d/c/s; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcn/jiguang/d/c/k; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    new-instance v10, Ljava/net/InetSocketAddress;

    const/16 v11, 0x35

    invoke-direct {v10, v9, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcn/jiguang/d/c/s; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcn/jiguang/d/c/k; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const-wide/16 v13, 0x3e8

    move v15, v7

    add-long v6, v11, v13

    :try_start_2
    invoke-static {v9, v10, v3, v6, v7}, Lcn/jiguang/d/c/r;->a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B

    move-result-object v6

    new-instance v7, Lcn/jiguang/d/c/h;

    invoke-direct {v7, v6}, Lcn/jiguang/d/c/h;-><init>([B)V

    invoke-virtual {v7}, Lcn/jiguang/d/c/h;->a()Lcn/jiguang/d/c/m;

    move-result-object v6

    if-nez v6, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v7, v5}, Lcn/jiguang/d/c/h;->a(I)[Lcn/jiguang/d/c/l;

    move-result-object v7

    array-length v9, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_3

    aget-object v11, v7, v10

    invoke-virtual {v11}, Lcn/jiguang/d/c/l;->b()Lcn/jiguang/d/c/m;

    move-result-object v12

    invoke-virtual {v12}, Lcn/jiguang/d/c/m;->e()I

    move-result v12

    invoke-virtual {v6}, Lcn/jiguang/d/c/m;->e()I

    move-result v13

    if-ne v12, v13, :cond_2

    invoke-virtual {v11}, Lcn/jiguang/d/c/l;->b()Lcn/jiguang/d/c/m;

    move-result-object v12

    invoke-virtual {v12}, Lcn/jiguang/d/c/m;->d()I

    move-result v12

    invoke-virtual {v11}, Lcn/jiguang/d/c/l;->b()Lcn/jiguang/d/c/m;

    move-result-object v13

    invoke-virtual {v13}, Lcn/jiguang/d/c/m;->b()Lcn/jiguang/d/c/j;

    move-result-object v13

    invoke-virtual {v6}, Lcn/jiguang/d/c/m;->c()I

    move-result v14

    if-ne v12, v14, :cond_2

    invoke-virtual {v6}, Lcn/jiguang/d/c/m;->b()Lcn/jiguang/d/c/j;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcn/jiguang/d/c/j;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Lcn/jiguang/d/c/l;->a()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/jiguang/d/c/p;

    invoke-virtual {v12}, Lcn/jiguang/d/c/p;->h()I

    move-result v13

    if-lez v13, :cond_1

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v13, "DNSSrvUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v5, "srv:"

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcn/jiguang/d/c/p;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcn/jiguang/d/c/s; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcn/jiguang/d/c/k; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move v15, v7

    :goto_3
    move-object v5, v0

    :try_start_3
    const-string v6, "DNSSrvUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Get default ports error at "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", with IOException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-static {v6, v5}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move v15, v7

    :goto_5
    move-object v5, v0

    const-string v6, "DNSSrvUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Get default ports error at "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", with UnknownHostException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Lcn/jiguang/d/c/s; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcn/jiguang/d/c/k; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :cond_3
    :goto_6
    add-int/lit8 v7, v15, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v2, "DNSSrvUtils"

    const-string v3, "Get default ports error with Exception"

    goto :goto_7

    :catch_5
    move-exception v0

    const-string v2, "DNSSrvUtils"

    const-string v3, "Get default ports error with NameTooLongException"

    goto :goto_7

    :catch_6
    move-exception v0

    const-string v2, "DNSSrvUtils"

    const-string v3, "Get default ports error with TextParseException"

    :goto_7
    invoke-static {v2, v3}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method
