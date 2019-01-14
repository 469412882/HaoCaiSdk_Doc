.class public final Lcn/jiguang/d/g/e;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcn/jiguang/d/a/h;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "net"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "conn_ip"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "local_dns"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "times"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "count_0_1"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->h()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "count_1_3"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->i()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "count_3_"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->j()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "success_details"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcn/jiguang/d/g/e;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/d/g/e;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;IJI)V
    .locals 27

    move/from16 v1, p1

    move-wide/from16 v2, p2

    const-class v13, Lcn/jiguang/d/g/e;

    monitor-enter v13

    :try_start_0
    const-string v4, "IndexStats"

    const-string v5, "insertData"

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcn/jiguang/g/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcn/jiguang/d/a/a;->d()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jiguang/g/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v6, "IndexStats"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sort_key : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    login_costime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    if-nez p4, :cond_4

    const-wide/16 v9, 0x3e8

    cmp-long v11, v2, v9

    if-gtz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    cmp-long v12, v2, v9

    const-wide/16 v9, 0xbb8

    if-lez v12, :cond_2

    cmp-long v12, v2, v9

    if-gtz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    cmp-long v14, v2, v9

    if-lez v14, :cond_3

    move v9, v11

    move v10, v12

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    move v9, v11

    move v10, v12

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x0

    :goto_3
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a/g;->a(Landroid/content/Context;)Lcn/jiguang/d/a/g;

    move-result-object v14

    invoke-virtual {v14, v15}, Lcn/jiguang/d/a/g;->a(Ljava/lang/String;)Lcn/jiguang/d/a/h;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "IndexStats"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v8, "sort_key:"

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is exists : update"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/g/a;->b()Ljava/lang/String;

    move-result-object v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lcn/jiguang/d/a/h;->f()I

    move-result v1

    add-int v20, v1, p4

    invoke-virtual {v2}, Lcn/jiguang/d/a/h;->g()I

    move-result v1

    add-int/lit8 v21, v1, 0x1

    invoke-virtual {v2}, Lcn/jiguang/d/a/h;->h()I

    move-result v1

    add-int v22, v1, v9

    invoke-virtual {v2}, Lcn/jiguang/d/a/h;->i()I

    move-result v1

    add-int v23, v1, v10

    invoke-virtual {v2}, Lcn/jiguang/d/a/h;->j()I

    move-result v1

    add-int v24, v1, v11

    invoke-virtual {v2}, Lcn/jiguang/d/a/h;->k()I

    move-result v1

    const/4 v2, 0x0

    add-int/lit8 v25, v1, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-virtual/range {v14 .. v25}, Lcn/jiguang/d/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)J

    goto :goto_4

    :cond_5
    const-string v2, "IndexStats"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "sort_key:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not exists : insert"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/g/a;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    const/16 v16, 0x0

    move-object v1, v14

    move-object v2, v15

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move/from16 v7, p4

    move v8, v12

    move/from16 v12, v16

    invoke-virtual/range {v1 .. v12}, Lcn/jiguang/d/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v13

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    const-string v2, "IndexStats"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insertData exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    monitor-exit v13

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v13

    throw v1
.end method

.method private static b(Lcn/jiguang/d/a/h;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "net"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "conn_ip"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "local_dns"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "times"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->g()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 10

    const-class v0, Lcn/jiguang/d/g/e;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcn/jiguang/d/a/g;->a(Landroid/content/Context;)Lcn/jiguang/d/a/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/jiguang/d/a/g;->a(Z)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "IndexStats"

    const-string v1, "buildStatisticsAndReport exception: db open failed"

    invoke-static {p0, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit v0

    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "sdk_index"

    invoke-static {p0, v4, v5}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v5, "date"

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Lcn/jiguang/d/a/a;->b()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "login_total"

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcn/jiguang/d/a/g;->c(Z)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "login_failed"

    invoke-virtual {v1, v2}, Lcn/jiguang/d/a/g;->c(Z)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lcn/jiguang/d/a/g;->a()Landroid/database/Cursor;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_5

    :cond_2
    :try_start_3
    invoke-static {v6}, Lcn/jiguang/d/a/g;->a(Landroid/database/Cursor;)Lcn/jiguang/d/a/h;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcn/jiguang/d/a/h;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcn/jiguang/d/g/e;->b(Lcn/jiguang/d/a/h;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_4
    :goto_0
    const-string v3, "IndexStats"

    const-string v7, "FailedTop3 is null "

    invoke-static {v3, v7}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v6

    goto/16 :goto_7

    :catch_0
    move-exception p0

    move-object v3, v6

    goto :goto_6

    :cond_5
    :goto_2
    const-string v3, "failed_top"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lcn/jiguang/d/a/g;->b()Landroid/database/Cursor;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_9

    :cond_6
    :try_start_4
    invoke-static {v5}, Lcn/jiguang/d/a/g;->a(Landroid/database/Cursor;)Lcn/jiguang/d/a/h;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcn/jiguang/d/a/h;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v6}, Lcn/jiguang/d/g/e;->a(Lcn/jiguang/d/a/h;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_8
    :goto_3
    const-string v6, "IndexStats"

    const-string v7, "SucceedTop3 is null "

    invoke-static {v6, v7}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v3, v5

    goto :goto_7

    :catch_1
    move-exception p0

    move-object v3, v5

    goto :goto_6

    :cond_9
    :goto_5
    const-string v6, "succeed_top"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0, v4}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_a

    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_a
    invoke-virtual {v1, v2}, Lcn/jiguang/d/a/g;->b(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception p0

    :goto_6
    :try_start_6
    const-string v4, "IndexStats"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildStatisticsAndReport exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_b

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    invoke-virtual {v1, v2}, Lcn/jiguang/d/a/g;->b(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v0

    return-void

    :goto_7
    if-eqz v3, :cond_c

    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c
    invoke-virtual {v1, v2}, Lcn/jiguang/d/a/g;->b(Z)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcn/jiguang/d/g/e;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/d/a/g;->a(Landroid/content/Context;)Lcn/jiguang/d/a/g;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/jiguang/d/a/g;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "delete from jpush_statistics"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcn/jiguang/d/a/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Lcn/jiguang/d/a/g;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "StatisticsDB"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deleteTable exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_4
    invoke-virtual {p0, v1}, Lcn/jiguang/d/a/g;->b(Z)V

    throw v2

    :cond_0
    const-string p0, "StatisticsDB"

    const-string v1, "deleteTable exception: db open failed"

    invoke-static {p0, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
