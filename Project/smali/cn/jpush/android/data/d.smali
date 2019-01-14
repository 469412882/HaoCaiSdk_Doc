.class public final Lcn/jpush/android/data/d;
.super Lcn/jpush/android/data/f;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static volatile b:Lcn/jpush/android/data/d;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ln_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ln_count"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ln_remove"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ln_type"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ln_extra"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ln_trigger_time"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ln_add_time"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcn/jpush/android/data/d;->a:[Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/data/d;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 43
    const-string v0, "jpush_local_notification.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/jpush/android/data/f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/jpush/android/data/d;
    .locals 2

    .line 50
    sget-object v0, Lcn/jpush/android/data/d;->b:Lcn/jpush/android/data/d;

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcn/jpush/android/data/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcn/jpush/android/data/d;->b:Lcn/jpush/android/data/d;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcn/jpush/android/data/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/jpush/android/data/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/jpush/android/data/d;->b:Lcn/jpush/android/data/d;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 57
    :cond_1
    :goto_0
    sget-object p0, Lcn/jpush/android/data/d;->b:Lcn/jpush/android/data/d;

    return-object p0
.end method

.method public static a(Landroid/database/Cursor;)Lcn/jpush/android/data/e;
    .locals 4

    .line 77
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    :try_start_0
    new-instance v1, Lcn/jpush/android/data/e;

    invoke-direct {v1}, Lcn/jpush/android/data/e;-><init>()V

    .line 83
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/jpush/android/data/e;->a(J)V

    .line 84
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/jpush/android/data/e;->a(I)V

    .line 85
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/jpush/android/data/e;->b(I)V

    .line 86
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/jpush/android/data/e;->c(I)V

    .line 87
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/jpush/android/data/e;->a(Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/jpush/android/data/e;->c(J)V

    .line 89
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/jpush/android/data/e;->b(J)V

    .line 90
    const-string p0, "LocalNotificationDb"

    invoke-virtual {v1}, Lcn/jpush/android/data/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-object v1

    .line 92
    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 94
    const-string v1, "LocalNotificationDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initLocalNotificationDBData exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v0

    .line 78
    :cond_1
    :goto_0
    const-string p0, "LocalNotificationDb"

    const-string v1, "cursor is null"

    invoke-static {p0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ln_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v1, "t_localnotification"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {p0, v0}, Lcn/jpush/android/data/d;->b(Z)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 199
    :catch_0
    move-exception p1

    .line 200
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    invoke-virtual {p0, v0}, Lcn/jpush/android/data/d;->b(Z)V

    .line 203
    goto :goto_1

    .line 202
    :goto_0
    invoke-virtual {p0, v0}, Lcn/jpush/android/data/d;->b(Z)V

    throw p1

    .line 205
    :cond_0
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(JIIILjava/lang/String;JJ)J
    .locals 0

    .line 101
    nop

    .line 103
    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 105
    :try_start_0
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 106
    const-string p5, "ln_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string p1, "ln_count"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string p1, "ln_remove"

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string p1, "ln_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string p1, "ln_extra"

    invoke-virtual {p4, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string p1, "ln_trigger_time"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string p1, "ln_add_time"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "t_localnotification"

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p5, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {p0, p3}, Lcn/jpush/android/data/d;->b(Z)V

    .line 118
    goto :goto_2

    .line 117
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 114
    :catch_0
    move-exception p1

    .line 115
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-virtual {p0, p3}, Lcn/jpush/android/data/d;->b(Z)V

    .line 118
    goto :goto_1

    .line 117
    :goto_0
    invoke-virtual {p0, p3}, Lcn/jpush/android/data/d;->b(Z)V

    throw p1

    .line 120
    :cond_0
    :goto_1
    const-wide/16 p1, 0x0

    :goto_2
    return-wide p1
.end method

.method public final a(IJ)Landroid/database/Cursor;
    .locals 11

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ln_count="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and ln_trigger_time"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "t_localnotification"

    sget-object v4, Lcn/jpush/android/data/d;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 166
    :catch_0
    move-exception p1

    .line 167
    const-string p2, "LocalNotificationDb"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "getOutDatas exception:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(JJ)Landroid/database/Cursor;
    .locals 10

    .line 150
    const-wide/32 p3, 0x493e0

    add-long v0, p1, p3

    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ln_count>0 and ln_trigger_time<"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " and ln_trigger_time"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ">"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "t_localnotification"

    sget-object v3, Lcn/jpush/android/data/d;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 155
    :catch_0
    move-exception p1

    .line 156
    const-string p2, "LocalNotificationDb"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "getRtcDatas exception:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(JI)Lcn/jpush/android/data/e;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    const/4 v0, 0x0

    .line 176
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ln_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " and ln_type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "t_localnotification"

    sget-object v5, Lcn/jpush/android/data/d;->a:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    if-eqz p1, :cond_0

    .line 180
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0

    .line 184
    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    .line 182
    :cond_0
    :goto_0
    invoke-static {p1}, Lcn/jpush/android/data/d;->a(Landroid/database/Cursor;)Lcn/jpush/android/data/e;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    if-eqz p1, :cond_1

    .line 185
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_1
    invoke-virtual {p0, p3}, Lcn/jpush/android/data/d;->b(Z)V

    return-object p2

    .line 184
    :catchall_1
    move-exception p2

    :goto_1
    if-eqz v0, :cond_2

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_2
    invoke-virtual {p0, p3}, Lcn/jpush/android/data/d;->b(Z)V

    throw p2

    .line 190
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "open database failed"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()[I
    .locals 13

    .line 210
    const-string v4, "1"

    .line 211
    nop

    .line 212
    nop

    .line 213
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_8

    .line 214
    nop

    .line 216
    const/4 v12, 0x1

    :try_start_0
    new-array v3, v12, [Ljava/lang/String;

    const-string v0, "ln_id"

    aput-object v0, v3, v10

    .line 217
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "t_localnotification"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 218
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 219
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    nop

    .line 223
    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v1, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    .line 225
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_0

    .line 228
    move-object v11, v1

    goto :goto_1

    .line 239
    :catch_0
    move-exception v2

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 239
    :catch_1
    move-exception v2

    move-object v1, v11

    :goto_0
    move-object v11, v0

    goto :goto_4

    .line 228
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {p0, v12}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 229
    nop

    .line 230
    :try_start_4
    const-string v1, "delete from t_localnotification"

    .line 231
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 242
    const/4 v1, 0x1

    goto :goto_2

    :catchall_1
    move-exception v1

    const/4 v2, 0x1

    goto :goto_6

    .line 239
    :catch_2
    move-exception v2

    move-object v1, v11

    move-object v11, v0

    const/4 v0, 0x1

    goto :goto_5

    .line 242
    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 243
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_3
    invoke-virtual {p0, v10}, Lcn/jpush/android/data/d;->b(Z)V

    .line 246
    if-eqz v1, :cond_8

    .line 247
    invoke-virtual {p0, v12}, Lcn/jpush/android/data/d;->b(Z)V

    goto :goto_7

    .line 242
    :catchall_2
    move-exception v1

    move-object v0, v11

    :goto_3
    const/4 v2, 0x0

    goto :goto_6

    .line 239
    :catch_3
    move-exception v2

    move-object v1, v11

    :goto_4
    const/4 v0, 0x0

    .line 240
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 242
    if-eqz v11, :cond_4

    .line 243
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_4
    invoke-virtual {p0, v10}, Lcn/jpush/android/data/d;->b(Z)V

    .line 246
    if-eqz v0, :cond_5

    .line 247
    invoke-virtual {p0, v12}, Lcn/jpush/android/data/d;->b(Z)V

    .line 251
    :cond_5
    move-object v11, v1

    goto :goto_7

    .line 242
    :catchall_3
    move-exception v1

    move v2, v0

    move-object v0, v11

    :goto_6
    if-eqz v0, :cond_6

    .line 243
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_6
    invoke-virtual {p0, v10}, Lcn/jpush/android/data/d;->b(Z)V

    .line 246
    if-eqz v2, :cond_7

    .line 247
    invoke-virtual {p0, v12}, Lcn/jpush/android/data/d;->b(Z)V

    :cond_7
    throw v1

    .line 251
    :cond_8
    :goto_7
    return-object v11
.end method

.method public final b(JIIILjava/lang/String;JJ)J
    .locals 3

    .line 125
    nop

    .line 127
    const/4 p5, 0x1

    invoke-virtual {p0, p5}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ln_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 132
    const-string v2, "ln_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string p1, "ln_count"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string p1, "ln_remove"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string p1, "ln_type"

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string p1, "ln_extra"

    invoke-virtual {v1, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string p1, "ln_trigger_time"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 138
    const-string p1, "ln_add_time"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "t_localnotification"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long p1, p1

    .line 143
    invoke-virtual {p0, p5}, Lcn/jpush/android/data/d;->b(Z)V

    .line 144
    goto :goto_2

    .line 143
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 140
    :catch_0
    move-exception p1

    .line 141
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-virtual {p0, p5}, Lcn/jpush/android/data/d;->b(Z)V

    .line 144
    goto :goto_1

    .line 143
    :goto_0
    invoke-virtual {p0, p5}, Lcn/jpush/android/data/d;->b(Z)V

    throw p1

    .line 146
    :cond_0
    :goto_1
    const-wide/16 p1, 0x0

    :goto_2
    return-wide p1
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 63
    :try_start_0
    const-string v0, "CREATE TABLE t_localnotification (_id INTEGER PRIMARY KEY AUTOINCREMENT ,ln_id long not null,ln_count integer not null,ln_remove integer not null,ln_type integer not null,ln_extra text ,ln_trigger_time long ,ln_add_time long );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 64
    :catch_0
    move-exception p1

    .line 65
    const-string p1, "LocalNotificationDb"

    const-string v0, "\u8868\u5df2\u7ecf\u5b58\u5728"

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 71
    const-string p2, "DROP TABLE IF EXISTS t_localnotification"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcn/jpush/android/data/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    return-void
.end method
