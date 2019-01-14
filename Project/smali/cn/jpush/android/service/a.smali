.class public final Lcn/jpush/android/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcn/jpush/android/service/a;

.field private static b:Ljava/util/concurrent/ExecutorService;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/service/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/service/a;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/service/a;->c:Landroid/os/Handler;

    .line 31
    iput-object v0, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/service/a;->e:Ljava/lang/String;

    .line 40
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "Constructor : JPushLocalNotificationCenter"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/jpush/android/service/a;->c:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    .line 43
    iget-object p1, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jpush/android/service/a;->e:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/a;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcn/jpush/android/service/a;
    .locals 2

    .line 47
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    if-nez v0, :cond_1

    .line 49
    sget-object v0, Lcn/jpush/android/service/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcn/jpush/android/service/a;

    invoke-direct {v1, p0}, Lcn/jpush/android/service/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 55
    :cond_1
    :goto_0
    sget-object p0, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    return-object p0
.end method

.method private declared-synchronized a(JJ)V
    .locals 2

    monitor-enter p0

    .line 207
    :try_start_0
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "LocalNotification scheduleReadiedLN"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcn/jpush/android/service/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 214
    new-instance v0, Lcn/jpush/android/service/a$2;

    invoke-direct {v0, p0, p1, p2}, Lcn/jpush/android/service/a$2;-><init>(Lcn/jpush/android/service/a;J)V

    .line 249
    const-wide/16 p1, 0x0

    cmp-long v1, p3, p1

    if-gtz v1, :cond_0

    .line 250
    const-string p1, "JPushLocalNotificationCenter"

    const-string p2, "post right now "

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcn/jpush/android/service/a;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 253
    :cond_0
    :try_start_1
    const-string p1, "JPushLocalNotificationCenter"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "post delayed : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcn/jpush/android/service/a;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :cond_1
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 260
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "start LocalNotification broadCastToPushReceiver"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    nop

    .line 1268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.jpush.android.intent.NOTIFICATION_RECEIVED_PROXY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    const-string v1, "senderId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    const-string p4, "appId"

    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    const-string p4, "message"

    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    const-string p2, "notificaion_type"

    const/4 p4, 0x1

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1273
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    nop

    .line 261
    nop

    .line 262
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".permission.JPUSH_MESSAGE"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 264
    const-string p1, "JPushLocalNotificationCenter"

    const-string p2, "end LocalNotification broadCastToPushReceiver"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/a;Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcn/jpush/android/service/a;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)Z
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 103
    :try_start_0
    const-string v2, "JPushLocalNotificationCenter"

    const-string v3, "add LocalNotification"

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->getBroadcastTime()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long v11, v2, v13

    .line 107
    invoke-static/range {p1 .. p1}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "JPushLocalNotificationCenter"

    const-string v3, "push has stopped"

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->getNotificationId()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;)Lcn/jpush/android/data/d;

    move-result-object v4

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v4, v5, v6, v2}, Lcn/jpush/android/data/d;->a(JI)Lcn/jpush/android/data/e;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_1

    .line 116
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->toJSON()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->getBroadcastTime()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v15, v11

    move-wide v11, v2

    :try_start_2
    invoke-virtual/range {v4 .. v14}, Lcn/jpush/android/data/d;->b(JIIILjava/lang/String;JJ)J

    goto :goto_1

    .line 118
    :cond_1
    move-wide v15, v11

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->toJSON()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->getBroadcastTime()J

    move-result-wide v11

    invoke-virtual/range {v4 .. v14}, Lcn/jpush/android/data/d;->a(JIIILjava/lang/String;JJ)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v15, v11

    :goto_0
    move-object v2, v0

    .line 121
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    const-string v3, "JPushLocalNotificationCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_1
    const-wide/32 v2, 0x493e0

    move-wide v4, v15

    cmp-long v6, v4, v2

    const/4 v2, 0x1

    if-gez v6, :cond_2

    .line 126
    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->getNotificationId()J

    move-result-wide v6

    invoke-direct {v1, v6, v7, v4, v5}, Lcn/jpush/android/service/a;->a(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    monitor-exit p0

    return v2

    .line 131
    :cond_2
    monitor-exit p0

    return v2

    .line 102
    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method static synthetic b(Lcn/jpush/android/service/a;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/jpush/android/service/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized e(Landroid/content/Context;)V
    .locals 14

    monitor-enter p0

    .line 176
    :try_start_0
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "triggerLNKillProcess"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {p1}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;)Lcn/jpush/android/data/d;

    move-result-object v0

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_5

    .line 179
    const/4 v2, 0x0

    .line 181
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 182
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v4}, Lcn/jpush/android/data/d;->a(IJ)Landroid/database/Cursor;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    :cond_0
    invoke-static {v13}, Lcn/jpush/android/data/d;->a(Landroid/database/Cursor;)Lcn/jpush/android/data/e;

    move-result-object v2

    .line 186
    if-eqz v2, :cond_1

    .line 187
    invoke-virtual {v2}, Lcn/jpush/android/data/e;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/jpush/android/service/a;->e:Ljava/lang/String;

    const-string v5, ""

    invoke-direct {p0, p1, v3, v4, v5}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2}, Lcn/jpush/android/data/e;->a()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcn/jpush/android/data/e;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcn/jpush/android/data/e;->f()J

    move-result-wide v9

    invoke-virtual {v2}, Lcn/jpush/android/data/e;->e()J

    move-result-wide v11

    move-object v2, v0

    invoke-virtual/range {v2 .. v12}, Lcn/jpush/android/data/d;->b(JIIILjava/lang/String;JJ)J

    .line 190
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_0

    .line 195
    :cond_2
    if-eqz v13, :cond_3

    .line 196
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcn/jpush/android/data/d;->b(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 199
    goto :goto_3

    .line 195
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 192
    :catch_0
    move-exception p1

    move-object v2, v13

    goto :goto_1

    .line 195
    :catchall_1
    move-exception p1

    move-object v13, v2

    goto :goto_2

    .line 192
    :catch_1
    move-exception p1

    .line 193
    :goto_1
    :try_start_4
    const-string v3, "JPushLocalNotificationCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "triggerLNKillProcess: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    if-eqz v2, :cond_3

    .line 196
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 195
    :goto_2
    if-eqz v13, :cond_4

    .line 196
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_4
    invoke-virtual {v0, v1}, Lcn/jpush/android/data/d;->b(Z)V

    throw p1

    .line 201
    :cond_5
    const-string p1, "JPushLocalNotificationCenter"

    const-string v0, "init LocalNotification cast expt: db open failed"

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 204
    :goto_3
    monitor-exit p0

    return-void

    .line 175
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;J)Z
    .locals 5

    monitor-enter p0

    .line 71
    :try_start_0
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "remove LocalNotification "

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;)Lcn/jpush/android/data/d;

    move-result-object p1

    .line 74
    invoke-virtual {p1, p2, p3, v0}, Lcn/jpush/android/data/d;->a(JI)Lcn/jpush/android/data/e;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    const-string v2, "JPushLocalNotificationCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "remove local count : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/jpush/android/data/e;->b()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, p2, p3}, Lcn/jpush/android/data/d;->a(J)I

    .line 79
    iget-object p1, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    long-to-int p2, p2

    invoke-static {p1, p2}, Lcn/jpush/android/api/JPushInterface;->clearNotificationById(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 82
    :cond_0
    monitor-exit p0

    return v0

    .line 84
    :catch_0
    move-exception p1

    .line 85
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const-string p2, "JPushLocalNotificationCenter"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "exception:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    monitor-exit p0

    return v0

    .line 70
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;Z)Z
    .locals 2

    monitor-enter p0

    .line 91
    if-eqz p3, :cond_0

    .line 92
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)Z

    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 94
    :cond_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string v0, "intent.MULTI_PROCESS"

    invoke-static {p1, p3, v0}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 96
    const-string v0, "multi_type"

    const/4 v1, 0x6

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v0, "local_notification"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 98
    sget-object p2, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 90
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 60
    :try_start_0
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "clear all local notification "

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;)Lcn/jpush/android/data/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jpush/android/data/d;->a()[I

    move-result-object p1

    .line 62
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 63
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, " success"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 65
    iget-object v3, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    invoke-static {v3, v2}, Lcn/jpush/android/api/JPushInterface;->clearNotificationById(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 11

    monitor-enter p0

    .line 135
    :try_start_0
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "init LocalNotification"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;)Lcn/jpush/android/data/d;

    move-result-object p1

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_5

    .line 138
    const/4 v1, 0x0

    .line 140
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 141
    const-wide/32 v4, 0x493e0

    invoke-virtual {p1, v2, v3, v4, v5}, Lcn/jpush/android/data/d;->a(JJ)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    :cond_0
    invoke-static {v4}, Lcn/jpush/android/data/d;->a(Landroid/database/Cursor;)Lcn/jpush/android/data/e;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v1}, Lcn/jpush/android/data/e;->a()J

    move-result-wide v5

    invoke-virtual {v1}, Lcn/jpush/android/data/e;->f()J

    move-result-wide v7

    const/4 v1, 0x0

    sub-long v9, v7, v2

    invoke-direct {p0, v5, v6, v9, v10}, Lcn/jpush/android/service/a;->a(JJ)V

    .line 148
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_0

    .line 153
    :cond_2
    if-eqz v4, :cond_3

    .line 154
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_3
    :goto_0
    invoke-virtual {p1, v0}, Lcn/jpush/android/data/d;->b(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 157
    goto :goto_3

    .line 150
    :catch_0
    move-exception v1

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto :goto_2

    .line 150
    :catch_1
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    .line 151
    :goto_1
    :try_start_4
    const-string v2, "JPushLocalNotificationCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "init LocalNotification cast expt:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    if-eqz v4, :cond_3

    .line 154
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 153
    :catchall_1
    move-exception v1

    :goto_2
    if-eqz v4, :cond_4

    .line 154
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_4
    invoke-virtual {p1, v0}, Lcn/jpush/android/data/d;->b(Z)V

    throw v1

    .line 159
    :cond_5
    const-string p1, "JPushLocalNotificationCenter"

    const-string v0, "init LocalNotification cast expt: db open failed"

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 161
    :goto_3
    monitor-exit p0

    return-void

    .line 134
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    .line 164
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "LocalNotification onHeartBeat"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcn/jpush/android/service/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jpush/android/service/a$1;

    invoke-direct {v1, p0, p1}, Lcn/jpush/android/service/a$1;-><init>(Lcn/jpush/android/service/a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method
