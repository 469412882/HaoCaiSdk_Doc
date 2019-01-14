.class public final Lcn/jiguang/a/c/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x35

    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lcn/jiguang/d/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CtrlMessageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceInfo from sp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/d/g/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/a/a/c/b;->a(Landroid/content/Context;Lcn/jiguang/d/g/b;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "CtrlMessageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceInfo :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_1
    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    invoke-static {p0}, Lcn/jiguang/d/g/b;->c(Landroid/content/Context;)B

    move-result v1

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    invoke-static {p0}, Lcn/jiguang/d/g/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "rom_type"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v1, "regid"

    invoke-virtual {v2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "rom_info"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get rom_info :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v1, "cmd"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "content"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p0, "CtrlMessageProcessor"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "prepare device report:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    return-object v0

    :catch_0
    move-exception p0

    return-object v0

    :catch_1
    move-exception v1

    :try_start_1
    const-string v2, ""

    invoke-static {p0, v2}, Lcn/jiguang/d/g/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v2

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jsonObject:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "CtrlMessageProcessor"

    const-string v0, "processCtrlReportByCmd failed because JCore.mApplicationContext is null"

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string v0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected: unknown push msg type -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object p0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object p0

    invoke-virtual {p0}, Lcn/jiguang/d/b/d;->b()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/a/c/a;->a(Landroid/os/Handler;)V

    return-void

    :pswitch_1
    sget-object p0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {p0}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    sget-object p0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {p0}, Lcn/jiguang/a/a/c/k;->a(Landroid/content/Context;)V

    return-void

    :cond_2
    sget-object p0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {p0}, Lcn/jiguang/a/c/c;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processCtrlReport exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;JLcn/jiguang/api/JResponse;)V
    .locals 11

    const-string p2, "CtrlMessageProcessor"

    const-string p3, "action - parseCtrlResponse"

    invoke-static {p2, p3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p4, Lcn/jiguang/d/e/a/b;

    invoke-virtual {p4}, Lcn/jiguang/d/e/a/b;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CtrlMessageProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action - processLocation, msgContent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p3, :cond_0

    invoke-static {p2}, Lcn/jiguang/a/c/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "cmd"

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    goto :goto_0

    :cond_0
    move-object p2, v0

    :cond_1
    const/4 p3, -0x1

    :goto_0
    invoke-virtual {p4}, Lcn/jiguang/d/e/a/b;->a()J

    move-result-wide v2

    invoke-static {p0, p3}, Lcn/jiguang/a/c/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Lcn/jiguang/d/a/a;->h()J

    move-result-wide v6

    invoke-static {}, Lcn/jiguang/d/a/d;->a()I

    move-result p4

    new-instance v0, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v8, 0x5000

    invoke-direct {v0, v8}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    const/16 v10, 0x19

    invoke-virtual {v0, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v0, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    int-to-long v6, p4

    invoke-virtual {v0, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    invoke-virtual {v0, v4, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    invoke-virtual {v0, v8}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v0, p3}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    :cond_2
    invoke-virtual {v0}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result p3

    invoke-virtual {v0, p3, v8}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    invoke-virtual {v0}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object p3

    invoke-static {p3, v9}, Lcn/jiguang/d/e/a/a/b;->a([BI)[B

    move-result-object p3

    if-nez p3, :cond_3

    const-string p3, "CtrlMessageProcessor"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "reportCtrlReceived to report received failed - "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object p4

    invoke-virtual {p4}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcn/jiguang/d/f/a;->a([B)I

    move-result p3

    const-string p4, "CtrlMessageProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportCtrlReceived - ret:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    const-string p3, "CtrlMessageProcessor"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Failed to report received - "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p3, "CtrlMessageProcessor"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Succeed to report received - "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_7

    if-nez p2, :cond_5

    const-string p0, "CtrlMessageProcessor"

    const-string p1, "msgContent is null"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :try_start_0
    const-string p3, "cmd"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    const-string p4, "CtrlMessageProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ctrl - cmd:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0x9

    if-eq p3, p4, :cond_6

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    packed-switch p3, :pswitch_data_2

    packed-switch p3, :pswitch_data_3

    const-string p0, "CtrlMessageProcessor"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected: unknown push ctrl cmd: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-static {p0, p2}, Lcn/jiguang/a/c/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    :pswitch_1
    invoke-static {p0, p2}, Lcn/jiguang/a/c/a;->e(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    :pswitch_2
    invoke-static {p0, p2}, Lcn/jiguang/a/c/a;->d(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    :pswitch_3
    invoke-static {p0, p2}, Lcn/jiguang/a/c/a;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    :pswitch_4
    invoke-static {p0, p2}, Lcn/jiguang/a/c/a;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    :pswitch_5
    invoke-static {p0}, Lcn/jiguang/a/a/c/k;->a(Landroid/content/Context;)V

    return-void

    :pswitch_6
    invoke-static {p0, p1, p2}, Lcn/jiguang/a/c/a;->a(Landroid/content/Context;Landroid/os/Handler;Lorg/json/JSONObject;)V

    return-void

    :pswitch_7
    invoke-static {p0}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;)V

    return-void

    :cond_6
    invoke-static {p0}, Lcn/jiguang/a/c/c;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CtrlMessageProcessor"

    const-string p2, "unexpected!"

    invoke-static {p1, p2, p0}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :pswitch_8
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2c
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Landroid/os/Handler;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "content"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jsonContent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "disable"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "CtrlMessageProcessor"

    const-string p2, "lbs disabled..."

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/jiguang/a/b/a;->a(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const-string v0, "CtrlMessageProcessor"

    const-string v1, "lbs enabled..."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/jiguang/a/b/a;->a(Landroid/content/Context;Z)V

    invoke-static {p0, v0}, Lcn/jiguang/a/b/a;->b(Landroid/content/Context;Z)V

    const-string v0, "frequency"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-lez p2, :cond_1

    const-wide/16 v0, 0x3e8

    mul-long v3, v3, v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcn/jiguang/a/b/a;->a(Landroid/content/Context;)J

    move-result-wide v3

    :goto_0
    const-string p2, "report_location_frequency"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p1}, Lcn/jiguang/a/c/a;->a(Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CtrlMessageProcessor"

    const-string p2, "unexpected! has wrong with JSONException"

    invoke-static {p1, p2, p0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_0
    const-string v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_1

    const-string p1, "app_running_collect_enable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void

    :cond_1
    const-string v4, "app_type"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "process_type"

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    cmp-long v5, v0, v2

    if-lez v5, :cond_2

    new-instance v2, Lcn/jiguang/g/b/a;

    invoke-direct {v2}, Lcn/jiguang/g/b/a;-><init>()V

    const-string v3, "app_running_collect_enable"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "app_running_collect_interval"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v0

    const-string v1, "app_running_collect_app_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v0

    const-string v1, "app_running_collect_process_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Lcn/jiguang/g/b/a;)V

    return-void

    :cond_2
    invoke-static {p0, v4, p1}, Lcn/jiguang/g/d;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CtrlMessageProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configReportRunningApp exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "action - processLocation"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ea

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "action - processLocationCollect"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jsonContent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "interval"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_0

    invoke-static {p0}, Lcn/jiguang/a/b/a;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    cmp-long p1, v3, v0

    if-gtz p1, :cond_0

    mul-long v3, v3, v5

    const-string p1, "location_collect_frequency"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void

    :cond_0
    const-string p0, "JAnalyticsCommonConfigs"

    const-string p1, "unexpected!"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CtrlMessageProcessor"

    const-string v0, "unexpected! has wrong with JSONException"

    invoke-static {p1, v0, p0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "action - processStartThirdService"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jsonContent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/h/f;->a()Lcn/jiguang/d/h/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/d/h/f;->c()Lcn/jiguang/d/h/h;

    move-result-object v1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string p0, "CtrlMessageProcessor"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected: unknown type:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "pkgName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "serviceName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcn/jiguang/d/d/a;

    invoke-direct {v2}, Lcn/jiguang/d/d/a;-><init>()V

    iput-object v0, v2, Lcn/jiguang/d/d/a;->a:Ljava/lang/String;

    iput-object p1, v2, Lcn/jiguang/d/d/a;->b:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcn/jiguang/d/h/h;->b(Landroid/content/Context;Lcn/jiguang/d/d/a;)V

    const-string p0, "CtrlMessageProcessor"

    const-string p1, "bind remote service"

    :goto_0
    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string v0, "pkgName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "serviceName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcn/jiguang/d/d/a;

    invoke-direct {v2}, Lcn/jiguang/d/d/a;-><init>()V

    iput-object v0, v2, Lcn/jiguang/d/d/a;->a:Ljava/lang/String;

    iput-object p1, v2, Lcn/jiguang/d/d/a;->b:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcn/jiguang/d/h/h;->a(Landroid/content/Context;Lcn/jiguang/d/d/a;)V

    return-void

    :cond_0
    const-string p0, "CtrlMessageProcessor"

    const-string p1, "start push service..."
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CtrlMessageProcessor"

    const-string v0, "unexpected!"

    invoke-static {p1, v0, p0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p0

    const-string p1, "CtrlMessageProcessor"

    const-string v0, "unexpected! has wrong with JSONException"

    invoke-static {p1, v0, p0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception p0

    const-string p0, "CtrlMessageProcessor"

    const-string p1, "Can not start PushService due to SecurityException."

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "action - updateDetchPhoneNumberConfig"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jsonContent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uploadnumber"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "version"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_secret"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "carriers"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "carrier"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v5}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Lcn/jiguang/a/a/c/i;->a(Ljava/lang/String;)I

    move-result v7

    const-string v8, "http://"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    if-ltz v7, :cond_3

    const/4 v8, 0x3

    if-lt v7, v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "number_url"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v5}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v8, "CtrlMessageProcessor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "carrier:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " url:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " providerindex:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {v2}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "number_version"

    invoke-static {p0, p1, v2}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v3}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "number_appid"

    invoke-static {p0, p1, v3}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {v4}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "number_appsecret"

    invoke-static {p0, p1, v4}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string p1, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "version:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n appID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n appSecret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n reportnumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/jiguang/a/b/a;->c(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcn/jiguang/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {p0}, Lcn/jiguang/a/a/c/i;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p0

    const-string p1, "CtrlMessageProcessor"

    const-string v0, "unexpected!"

    invoke-static {p1, v0, p0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jsonContent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "disable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    const-string v3, "frequency"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "frequency"

    invoke-virtual {p1, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    const-string v3, "arpinfo_report_enable"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    const-string p1, "report_arpinfo_frequency"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {p0}, Lcn/jiguang/a/a/a/c;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "CtrlMessageProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportMacListInfo error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception p0

    const-string p1, "CtrlMessageProcessor"

    const-string v0, "unexpected! has wrong with JSONException"

    invoke-static {p1, v0, p0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
