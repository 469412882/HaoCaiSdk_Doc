.class public final Lcn/jpush/android/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private static a(J)I
    .locals 7

    .line 174
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 175
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 176
    return v1

    .line 179
    :cond_0
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 180
    sub-long v5, p0, v3

    .line 181
    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    .line 182
    sget-object p0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 183
    const/4 p0, 0x2

    return p0

    .line 185
    :cond_1
    const-wide/16 v3, 0x2710

    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    .line 187
    :goto_0
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lt v0, v2, :cond_2

    .line 188
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 190
    :cond_2
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 191
    return v1

    .line 193
    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;IJ)J
    .locals 9

    .line 536
    const-string v0, "TagAliasHelper"

    const-string v1, "action - onRecvTagAliasCallBack"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 539
    const-string v0, "code"

    sget v1, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 540
    if-nez p2, :cond_0

    .line 541
    const-string p3, "sequence"

    invoke-virtual {v7, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p3

    .line 543
    :cond_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 544
    sget-object v0, Lcn/jpush/android/a;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v0, "proto_type"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    if-nez p2, :cond_1

    .line 552
    const-string p2, "cn.jpush.android.intent.TAG_ALIAS_CALLBACK"

    invoke-virtual {v8, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 554
    :cond_1
    const-string v0, "cn.jpush.android.intent.RECEIVE_MESSAGE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 556
    const-string p2, "message_type"

    invoke-virtual {v8, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 559
    :cond_2
    const-string p2, "message_type"

    const/4 v0, 0x2

    invoke-virtual {v8, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    :goto_0
    const-string p2, "tagalias_errorcode"

    invoke-virtual {v8, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    const-string p2, "tagalias_seqid"

    invoke-virtual {v8, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 566
    invoke-static {}, Lcn/jpush/android/a/l;->a()Lcn/jpush/android/a/l;

    move-result-object v2

    move-object v3, p0

    move-wide v4, p3

    invoke-virtual/range {v2 .. v8}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;JILorg/json/JSONObject;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 567
    if-eqz p2, :cond_3

    .line 568
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :cond_3
    return-wide p3

    .line 571
    :catch_0
    move-exception p0

    .line 572
    const-string p0, "TagAliasHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "tagalias msgContent:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;JI)Lcn/jpush/a/c;
    .locals 14

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v9, p2

    .line 445
    move/from16 v3, p4

    .line 1526
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x2

    if-eq v3, v11, :cond_1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    const/4 v6, 0x5

    if-ne v3, v6, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 1526
    :cond_1
    :goto_0
    nop

    .line 445
    const/4 v6, 0x1

    :goto_1
    const/4 v12, 0x0

    if-eqz v6, :cond_7

    .line 447
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcn/jpush/android/a/k;->a(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 448
    nop

    .line 2520
    if-ne v3, v11, :cond_2

    goto :goto_2

    .line 448
    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    .line 449
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 450
    const-string v2, "TagAliasHelper"

    const-string v3, "alias was empty. Give up action."

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget v2, Lcn/jpush/android/api/JPushInterface$a;->b:I

    invoke-static {v1, v11, v2, v9, v10}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 452
    return-object v12

    .line 455
    :cond_3
    invoke-static {v1, v11, v2, v9, v10}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_4

    .line 456
    return-object v12

    .line 458
    :cond_4
    const-string v3, "alias"

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    :cond_5
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 461
    const-string v2, "TagAliasHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "alias str:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 463
    new-instance v13, Lcn/jpush/a/c;

    const/4 v3, 0x1

    const/16 v4, 0x1d

    .line 464
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object v7

    move-object v2, v13

    move-wide v5, v9

    invoke-direct/range {v2 .. v8}, Lcn/jpush/a/c;-><init>(IIJLjava/lang/String;Ljava/lang/String;)V

    return-object v13

    .line 466
    :cond_6
    const-string v2, "TagAliasHelper"

    const-string v3, "alias request action was empty"

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 468
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 469
    const-string v3, "TagAliasHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "alias exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    sget v2, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {v1, v11, v2, v9, v10}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 471
    :goto_3
    goto :goto_4

    .line 473
    :cond_7
    const-string v2, "TagAliasHelper"

    const-string v3, "unsupport alias action type"

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sget v2, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {v1, v11, v2, v9, v10}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 476
    :goto_4
    return-object v12
.end method

.method protected static a(Landroid/content/Context;Ljava/util/List;JII)Lcn/jpush/a/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JII)",
            "Lcn/jpush/a/c;"
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_d

    .line 386
    :try_start_0
    invoke-static {p4}, Lcn/jpush/android/a/k;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 387
    nop

    .line 1510
    const/4 v3, 0x6

    if-eq p4, v1, :cond_1

    const/4 v4, 0x2

    if-eq p4, v4, :cond_1

    const/4 v4, 0x3

    if-eq p4, v4, :cond_1

    if-ne p4, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 387
    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_9

    .line 388
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 393
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 395
    invoke-static {p0, v1, v4, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/util/Set;J)Z

    move-result v5

    if-nez v5, :cond_3

    .line 396
    return-object v0

    .line 399
    :cond_3
    invoke-static {v4}, Lcn/jpush/android/a/k;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    .line 401
    invoke-static {p0, v4, p2, p3, v1}, Lcn/jpush/android/a/k;->b(Landroid/content/Context;Ljava/lang/String;JI)Z

    move-result v5

    if-nez v5, :cond_4

    .line 402
    return-object v0

    .line 404
    :cond_4
    if-ne p4, v3, :cond_6

    .line 405
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 406
    const-string p1, "TagAliasHelper"

    const-string p4, "stags was empty. Give up action."

    invoke-static {p1, p4}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget p1, Lcn/jpush/android/api/JPushInterface$a;->b:I

    invoke-static {p0, v1, p1, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 408
    return-object v0

    .line 410
    :cond_5
    const-string p1, "tags"

    invoke-virtual {v2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 413
    :cond_6
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 414
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 415
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 416
    goto :goto_2

    .line 417
    :cond_7
    const-string p1, "tags"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 389
    :cond_8
    :goto_3
    const-string p1, "TagAliasHelper"

    const-string p4, "tags was empty. Give up action."

    invoke-static {p1, p4}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sget p1, Lcn/jpush/android/api/JPushInterface$a;->b:I

    invoke-static {p0, v1, p1, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 391
    return-object v0

    .line 420
    :cond_9
    :goto_4
    const/4 p1, 0x5

    if-ne p4, p1, :cond_b

    .line 421
    const-string p1, "curr"

    const/4 p4, -0x1

    if-ne p5, p4, :cond_a

    const/4 p5, 0x1

    :cond_a
    invoke-virtual {v2, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 423
    :cond_b
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 424
    const-string p1, "TagAliasHelper"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "tag str:"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 426
    new-instance p1, Lcn/jpush/a/c;

    const/4 v3, 0x1

    const/16 v4, 0x1c

    .line 427
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v8}, Lcn/jpush/a/c;-><init>(IIJLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 429
    :cond_c
    const-string p1, "TagAliasHelper"

    const-string p4, "tag request action was empty"

    invoke-static {p1, p4}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 431
    :catch_0
    move-exception p1

    .line 432
    const-string p4, "TagAliasHelper"

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v2, "tag exception:"

    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget p1, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, v1, p1, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 434
    :goto_5
    goto :goto_6

    .line 436
    :cond_d
    const-string p1, "TagAliasHelper"

    const-string p4, "unsupport tag action type"

    invoke-static {p1, p4}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget p1, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, v1, p1, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 439
    :goto_6
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;J)Lcn/jpush/a/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcn/jpush/a/c;"
        }
    .end annotation

    .line 336
    nop

    .line 337
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 338
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 340
    :cond_0
    move-object v1, v0

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-static {p0, p1, p2, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    return-object v0

    .line 343
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {p0, p1, v1, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/util/Set;J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 344
    return-object v0

    .line 347
    :cond_2
    invoke-static {v1}, Lcn/jpush/android/a/k;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-static {p0, v2, p3, p4, p1}, Lcn/jpush/android/a/k;->b(Landroid/content/Context;Ljava/lang/String;JI)Z

    move-result v3

    if-nez v3, :cond_3

    .line 349
    return-object v0

    .line 351
    :cond_3
    if-nez v2, :cond_4

    if-nez p2, :cond_4

    .line 352
    const-string p2, "TagAliasHelper"

    const-string v1, "NULL alias and tags. Give up action."

    invoke-static {p2, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget p2, Lcn/jpush/android/api/JPushInterface$a;->b:I

    invoke-static {p0, p1, p2, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 354
    return-object v0

    .line 356
    :cond_4
    const-string v3, "TagAliasHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action:setAliasAndTags - alias:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tags:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 359
    const-string v4, "platform"

    const-string v5, "a"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    if-eqz p2, :cond_5

    .line 361
    const-string v4, "alias"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    :cond_5
    if-eqz v1, :cond_6

    .line 364
    const-string p2, "tags"

    invoke-virtual {v3, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 367
    const-string p2, "TagAliasHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tagalias str:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 369
    new-instance p2, Lcn/jpush/a/c;

    const/4 v2, 0x4

    const/16 v3, 0xa

    .line 370
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcn/jpush/a/c;-><init>(IIJLjava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 372
    :cond_7
    const-string p2, "TagAliasHelper"

    const-string v1, "tagalias request action was empty"

    invoke-static {p2, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    goto :goto_1

    .line 374
    :catch_0
    move-exception p2

    .line 375
    const-string v1, "TagAliasHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tagalias exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget p2, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, p1, p2, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 378
    :goto_1
    return-object v0
.end method

.method public static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 101
    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcn/jpush/android/d/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_3

    .line 108
    const-string p0, "TagAliasHelper"

    const-string v1, "The lenght of tags maybe more than 1000."

    invoke-static {p0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-object v0

    .line 112
    :cond_2
    const-string v3, "TagAliasHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid tag : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_3
    goto :goto_0

    .line 115
    :cond_4
    return-object v0
.end method

.method private static a(I)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 479
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 480
    const-string v1, "platform"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string v1, "op"

    .line 3488
    packed-switch p0, :pswitch_data_0

    .line 3502
    const/4 p0, 0x0

    goto :goto_0

    .line 3500
    :pswitch_0
    const-string p0, "valid"

    goto :goto_0

    .line 3498
    :pswitch_1
    const-string p0, "get"

    goto :goto_0

    .line 3496
    :pswitch_2
    const-string p0, "clean"

    goto :goto_0

    .line 3494
    :pswitch_3
    const-string p0, "del"

    goto :goto_0

    .line 3492
    :pswitch_4
    const-string p0, "set"

    goto :goto_0

    .line 3490
    :pswitch_5
    const-string p0, "add"

    .line 481
    :goto_0
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static a(Landroid/content/Context;IIJ)V
    .locals 2

    .line 275
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    if-nez p1, :cond_0

    .line 279
    const-string p1, "cn.jpush.android.intent.TAG_ALIAS_CALLBACK"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 281
    :cond_0
    const-string v1, "cn.jpush.android.intent.RECEIVE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 283
    const-string p1, "message_type"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 286
    :cond_1
    const-string p1, "message_type"

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    :goto_0
    const-string p1, "tagalias_errorcode"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string p1, "tagalias_seqid"

    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    return-void

    .line 293
    :catch_0
    move-exception p0

    .line 294
    const-string p1, "TagAliasHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "NotifyTagAliasError:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 8

    .line 149
    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_0
    const/4 p3, 0x0

    new-instance v7, Lcn/jpush/android/api/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcn/jpush/android/api/a;-><init>(ILjava/lang/String;JII)V

    invoke-static {p0, p2, p3, v7}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/a;)V

    .line 151
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/util/Set;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 153
    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_0
    const/4 p3, 0x0

    new-instance v7, Lcn/jpush/android/api/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcn/jpush/android/api/a;-><init>(ILjava/util/Set;JII)V

    invoke-static {p0, p3, p2, v7}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/a;)V

    .line 155
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 14

    .line 204
    const-string v0, "alias"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 205
    const-string v0, "tags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    const-string v1, "seq_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 207
    nop

    .line 208
    nop

    .line 210
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "proto_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    nop

    .line 216
    move v10, v2

    goto :goto_0

    .line 211
    :catch_0
    move-exception v2

    .line 212
    const-string v3, "TagAliasHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "load tag/alias proto type failed - error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget v2, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, v1, v2, v8, v9}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 216
    const/4 v10, 0x0

    :goto_0
    :try_start_1
    const-string v2, "protoaction_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    goto :goto_1

    .line 217
    :catch_1
    move-exception p1

    .line 218
    const-string v2, "TagAliasHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load tag/alias action type failed - error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget p1, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, v10, p1, v8, v9}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 221
    const/4 p1, 0x0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/jpush/android/a/k;->a(J)I

    move-result v1

    .line 222
    const/4 v11, 0x1

    if-eqz v1, :cond_2

    .line 223
    if-ne v1, v11, :cond_0

    .line 224
    const-string p1, "TagAliasHelper"

    const-string v0, "set tags/alias too soon,over 10 times in 10s"

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 226
    :cond_0
    const-string p1, "TagAliasHelper"

    const-string v0, "set tags/alias failed,time shaft error\uff0cplease try again"

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_2
    if-ne v1, v11, :cond_1

    sget p1, Lcn/jpush/android/api/JPushInterface$a;->l:I

    goto :goto_3

    :cond_1
    sget p1, Lcn/jpush/android/api/JPushInterface$a;->n:I

    :goto_3
    invoke-static {p0, v10, p1, v8, v9}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 231
    return-void

    .line 233
    :cond_2
    invoke-static {}, Lcn/jpush/android/a/l;->a()Lcn/jpush/android/a/l;

    invoke-static {p0, v10, v8, v9}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;IJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    sget p1, Lcn/jpush/android/api/JPushInterface$a;->u:I

    invoke-static {p0, v10, p1, v8, v9}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 235
    return-void

    .line 237
    :cond_3
    const/4 v1, 0x0

    .line 238
    const/4 v12, 0x2

    if-nez v10, :cond_5

    .line 239
    const-string v1, "TagAliasHelper"

    const-string v2, "old tag/alias proto"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {p0, v0, v7, v8, v9}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;J)Lcn/jpush/a/c;

    move-result-object v1

    .line 247
    :cond_4
    :goto_4
    move-object v13, v1

    goto :goto_5

    .line 241
    :cond_5
    if-ne v10, v11, :cond_6

    .line 242
    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, v0

    move-wide v3, v8

    move v5, p1

    invoke-static/range {v1 .. v6}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/util/List;JII)Lcn/jpush/a/c;

    move-result-object v1

    goto :goto_4

    .line 243
    :cond_6
    if-ne v10, v12, :cond_4

    .line 244
    invoke-static {p0, v7, v8, v9, p1}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;JI)Lcn/jpush/a/c;

    move-result-object v1

    goto :goto_4

    .line 247
    :goto_5
    if-eqz v13, :cond_b

    if-eq v10, v11, :cond_7

    if-ne v10, v12, :cond_b

    .line 248
    :cond_7
    invoke-static {}, Lcn/jpush/android/a/l;->a()Lcn/jpush/android/a/l;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcn/jpush/android/a/l;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 249
    invoke-static {}, Lcn/jpush/android/a/l;->a()Lcn/jpush/android/a/l;

    move-result-object v1

    move v2, v10

    move v3, p1

    move-wide v4, v8

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcn/jpush/android/a/l;->a(IIJLjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_8

    .line 252
    :cond_8
    const-string p1, "TagAliasHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v10, v11, :cond_9

    const-string v1, "tag"

    goto :goto_6

    :cond_9
    const-string v1, "alias"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is operatoring, please wait last operator complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    if-ne v10, v11, :cond_a

    sget p1, Lcn/jpush/android/api/JPushInterface$a;->v:I

    goto :goto_7

    :cond_a
    sget p1, Lcn/jpush/android/api/JPushInterface$a;->w:I

    :goto_7
    invoke-static {p0, v10, p1, v8, v9}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 257
    return-void

    .line 260
    :cond_b
    :goto_8
    invoke-static {p0, v13}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Lcn/jpush/a/c;)V

    .line 261
    return-void
.end method

.method protected static a(Landroid/content/Context;Lcn/jpush/a/c;)V
    .locals 3

    .line 266
    const-string v0, "TagAliasHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tagalias:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz p1, :cond_0

    .line 268
    invoke-static {p0}, Lcn/jpush/android/a/e;->a(Landroid/content/Context;)Lcn/jpush/android/a/e;

    move-result-object p0

    const/16 v0, 0x4e20

    invoke-virtual {p0, p1, v0}, Lcn/jpush/android/a/e;->a(Lcn/jiguang/api/JRequest;I)V

    return-void

    .line 270
    :cond_0
    const-string p0, "TagAliasHelper"

    const-string p1, "tagaliasRequest was null"

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            "II)V"
        }
    .end annotation

    .line 144
    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_0
    new-instance p4, Lcn/jpush/android/api/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcn/jpush/android/api/a;-><init>(Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;JII)V

    invoke-static {p0, p1, p2, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/a;)V

    .line 146
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/a;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getNextRid()J

    move-result-wide v3

    .line 69
    if-eqz p3, :cond_0

    .line 70
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p3}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;Ljava/lang/Long;Lcn/jpush/android/api/a;)V

    .line 72
    :cond_0
    const-string v0, "TagAliasHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag alias rid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v0

    sget v2, Lcn/jpush/android/api/JPushInterface$a;->m:I

    move-object v1, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;IJLcn/jpush/android/api/a;)V

    .line 77
    return-void

    .line 79
    :cond_1
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 83
    :cond_2
    invoke-static {p0}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v0

    sget v2, Lcn/jpush/android/api/JPushInterface$a;->j:I

    move-object v1, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;IJLcn/jpush/android/api/a;)V

    .line 86
    return-void

    .line 88
    :cond_3
    iget v0, p3, Lcn/jpush/android/api/a;->e:I

    if-nez v0, :cond_4

    .line 89
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;)V

    .line 91
    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;JLcn/jpush/android/api/a;)V

    .line 92
    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;J)Z
    .locals 4

    .line 301
    invoke-static {p2}, Lcn/jpush/android/d/g;->b(Ljava/lang/String;)I

    move-result v0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    const-string v1, "TagAliasHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid alias: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", will not set alias this time."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {p0, p1, v0, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 305
    const/4 p0, 0x0

    return p0

    .line 307
    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/content/Context;ILjava/util/Set;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    .line 313
    invoke-static {p2}, Lcn/jpush/android/d/g;->a(Ljava/util/Set;)I

    move-result p2

    .line 314
    if-eqz p2, :cond_0

    .line 315
    const-string v0, "TagAliasHelper"

    const-string v1, "Invalid tags, will not set tags this time."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p0, p1, p2, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 317
    const/4 p0, 0x0

    return p0

    .line 319
    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 120
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, ""

    return-object p0

    .line 121
    :cond_1
    nop

    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lcn/jpush/android/d/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    if-nez v0, :cond_2

    .line 126
    goto :goto_1

    .line 128
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 131
    const/16 v0, 0x3e8

    if-lt v1, v0, :cond_3

    .line 132
    return-object v2

    .line 136
    :cond_3
    move-object v0, v2

    goto :goto_2

    .line 134
    :cond_4
    const-string v3, "TagAliasHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid tag: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_2
    goto :goto_0

    .line 140
    :cond_5
    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;JI)Z
    .locals 6

    .line 325
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 1161
    const/4 v2, 0x1

    goto :goto_0

    .line 325
    :cond_0
    nop

    .line 1161
    const/4 v2, 0x0

    .line 1162
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    add-int/2addr p1, v1

    goto :goto_1

    .line 1163
    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v3, "TagAliasHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tags length:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const/16 v3, 0x1b58

    const/16 v4, 0x1388

    if-eqz v2, :cond_3

    if-gt p1, v4, :cond_2

    .line 325
    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    .line 1164
    :cond_2
    nop

    .line 325
    const/4 p1, 0x0

    goto :goto_3

    .line 1164
    :cond_3
    if-gt p1, v3, :cond_2

    goto :goto_2

    .line 325
    :goto_3
    if-nez p1, :cond_5

    .line 326
    sget p1, Lcn/jpush/android/api/JPushInterface$a;->i:I

    invoke-static {p0, p4, p1, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 327
    const-string p0, "TagAliasHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The length of tags should be less than "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_4

    const/16 v3, 0x1388

    nop

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return v1

    .line 330
    :cond_5
    return v0
.end method
