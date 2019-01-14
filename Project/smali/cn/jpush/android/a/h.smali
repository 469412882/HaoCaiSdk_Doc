.class public final Lcn/jpush/android/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;JLcn/jiguang/api/JResponse;)J
    .locals 21

    .line 37
    move-object/from16 v2, p3

    check-cast v2, Lcn/jpush/a/b;

    .line 38
    invoke-virtual {v2}, Lcn/jpush/a/b;->a()I

    move-result v3

    invoke-virtual {v2}, Lcn/jpush/a/b;->b()J

    move-result-wide v4

    invoke-virtual {v2}, Lcn/jpush/a/b;->getRid()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1203
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getUid()J

    move-result-wide v8

    int-to-byte v3, v3

    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getSid()I

    move-result v10

    .line 2052
    new-instance v11, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v12, 0x5000

    invoke-direct {v11, v12}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    .line 2053
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    .line 2054
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    .line 2055
    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    .line 2056
    invoke-virtual {v11, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    .line 2057
    int-to-long v6, v10

    invoke-virtual {v11, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    .line 2058
    invoke-virtual {v11, v8, v9}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    .line 2060
    invoke-virtual {v11, v12}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    .line 2061
    invoke-virtual {v11, v3}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    .line 2062
    invoke-virtual {v11, v4, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    .line 2064
    invoke-virtual {v11}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result v3

    invoke-virtual {v11, v3, v12}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    .line 2065
    invoke-virtual {v11}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object v3

    .line 1203
    nop

    .line 1204
    sget-object v4, Lcn/jpush/android/a;->e:Landroid/content/Context;

    sget-object v5, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {v4, v5, v13, v3}, Lcn/jiguang/api/JCoreInterface;->sendData(Landroid/content/Context;Ljava/lang/String;I[B)V

    .line 40
    invoke-virtual {v2}, Lcn/jpush/a/b;->b()J

    move-result-wide v3

    .line 41
    invoke-virtual {v2}, Lcn/jpush/a/b;->a()I

    move-result v5

    .line 42
    invoke-virtual {v2}, Lcn/jpush/a/b;->c()Ljava/lang/String;

    move-result-object v2

    .line 43
    const-string v6, "PushMessageProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "msgType = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", msgId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v6, "PushMessageProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "msgContent: \n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v6, Ljava/io/LineNumberReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 56
    const-wide/16 v7, -0x1

    :try_start_0
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 57
    if-nez v15, :cond_0

    .line 58
    const-string v1, "PushMessageProcessor"

    const-string v2, "NO appId"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-wide v7

    .line 61
    :cond_0
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 62
    if-nez v6, :cond_1

    .line 63
    const-string v1, "PushMessageProcessor"

    const-string v2, "NO senderId"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-wide v7

    .line 67
    :cond_1
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x2

    add-int/2addr v9, v10

    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v13, v9, 0x1

    if-le v11, v13, :cond_2

    .line 69
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 71
    :cond_2
    const-string v2, "PushMessageProcessor"

    const-string v9, "No msgContent"

    invoke-static {v2, v9}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    nop

    .line 79
    :goto_0
    const-string v9, "PushMessageProcessor"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Message Fields - appId:"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", senderId:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", msgContent:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-eqz v5, :cond_4

    if-eq v5, v10, :cond_4

    const/16 v3, 0x14

    if-eq v5, v3, :cond_3

    .line 95
    invoke-static {v5}, Lcn/jiguang/api/JCoreInterface;->processCtrlReport(I)V

    goto :goto_2

    .line 93
    :cond_3
    move-object/from16 v5, p0

    invoke-static {v5, v2, v12, v7, v8}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;IJ)J

    move-result-wide v1

    return-wide v1

    .line 87
    :cond_4
    move-object/from16 v5, p0

    .line 2114
    :try_start_1
    const-string v7, "PushMessageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "parseNormal -  msgId:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    new-instance v7, Lcn/jpush/android/d/j;

    const-string v8, "PushMessageProcessor"

    const-string v9, "Time to process received msg."

    invoke-direct {v7, v8, v9}, Lcn/jpush/android/d/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2123
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2124
    const/16 v20, 0x0

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    invoke-static/range {v14 .. v20}, Lcn/jpush/android/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JB)V

    goto :goto_1

    .line 2126
    :cond_5
    const-string v2, "PushMessageProcessor"

    const-string v3, "Empty msg. Give up parser."

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2129
    :cond_6
    const-string v2, "PushMessageProcessor"

    const-string v3, "Empty senderid or appid. Give up parser."

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    :goto_1
    invoke-virtual {v7}, Lcn/jpush/android/d/j;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    goto :goto_2

    .line 88
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 89
    const-string v3, "PushMessageProcessor"

    const-string v4, "Unknown error"

    invoke-static {v3, v4, v2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    nop

    .line 97
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 74
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 75
    const-string v2, "PushMessageProcessor"

    const-string v3, "Parse msgContent failed"

    invoke-static {v2, v3, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    return-wide v7
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JB)V
    .locals 3

    .line 136
    const-string v0, "PushMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:receivedPushMessage msgId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, p1, p2, v0}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/a;

    move-result-object p1

    .line 140
    if-nez p1, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    nop

    .line 2410
    new-instance p3, Lcn/jpush/android/data/c;

    invoke-direct {p3, p1}, Lcn/jpush/android/data/c;-><init>(Lcn/jpush/android/data/b;)V

    .line 144
    invoke-static {p0, p3}, Lcn/jpush/android/d/f;->a(Landroid/content/Context;Lcn/jpush/android/data/c;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 145
    return-void

    .line 147
    :cond_1
    iput-byte p6, p1, Lcn/jpush/android/data/a;->e:B

    .line 149
    const/4 p3, 0x0

    .line 151
    const-string p6, "7fef6a7d76c782b1f0eda446b2c6c40a"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p6, 0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 153
    invoke-static {p0, p1}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Lcn/jpush/android/data/a;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-boolean p2, p1, Lcn/jpush/android/data/a;->f:Z

    if-eqz p2, :cond_4

    .line 156
    nop

    .line 157
    iget p2, p1, Lcn/jpush/android/data/a;->b:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    .line 158
    const/4 p3, 0x3

    goto :goto_0

    .line 164
    :cond_3
    const/4 p3, 0x1

    goto :goto_0

    .line 161
    :cond_4
    nop

    .line 164
    const/4 p3, 0x2

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3173
    const-string p2, "PushMessageProcessor"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "processBasicEntity type:"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_7

    .line 3177
    const-string p2, "PushMessageProcessor"

    const-string p4, "processBasicEntity notification"

    invoke-static {p2, p4}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3178
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3179
    const-string p0, "PushMessageProcessor"

    const-string p1, "Service is stoped, give up all the message"

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    return-void

    .line 3183
    :cond_5
    invoke-static {p0}, Lcn/jpush/android/d/a;->c(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 3184
    const-string p0, "PushMessageProcessor"

    const-string p1, "push is closed\uff0cIntercept the message"

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    return-void

    .line 3187
    :cond_6
    iput-boolean v0, p1, Lcn/jpush/android/data/a;->i:Z

    .line 3188
    invoke-static {p0, p1}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Lcn/jpush/android/data/a;)V

    .line 3191
    :cond_7
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_9

    .line 3193
    const-string p2, "PushMessageProcessor"

    const-string p3, "processBasicEntity user-defined message."

    invoke-static {p2, p3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3194
    iget-object p2, p1, Lcn/jpush/android/data/a;->j:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p1, Lcn/jpush/android/data/a;->n:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 3195
    :cond_8
    invoke-static {p0, p1}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    .line 165
    :cond_9
    return-void
.end method
