.class public final Lco/bxvip/android/commonlib/db/DatabaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "DatabaseHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0003J\u001c\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J,\u0010\r\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0003J,\u0010\u0012\u001a\u0004\u0018\u0001H\u0013\"\u0004\u0008\u0000\u0010\u00132\u0017\u0010\u0014\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u00130\u0015\u00a2\u0006\u0002\u0008\u0016\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/db/DatabaseHelper;",
        "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
        "()V",
        "counter",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "db",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "closeDatabase",
        "",
        "onCreate",
        "database",
        "connectionSource",
        "Lcom/j256/ormlite/support/ConnectionSource;",
        "onUpgrade",
        "oldVersion",
        "",
        "newVersion",
        "openDatabase",
        "use",
        "T",
        "f",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "android-support"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 20
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getCtx()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getCtx()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget-object v3, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getCtx()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lco/bxvip/android/commonlib/utils/Storage;->getDataBaseCache(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Storage.getDataBaseCache(ctx, ctx.packageName)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getDB_NAME()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getDB_VERSION()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/DatabaseHelper;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private final declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/DatabaseHelper;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/DatabaseHelper;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    :cond_0
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 24
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 5
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "oldVersion"    # I
    .param p4, "newVersion"    # I

    .line 27
    nop

    .line 28
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "SELECT name FROM sqlite_master WHERE type=\'table\' ORDER BY name"

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    goto :goto_2

    .line 28
    :cond_0
    nop

    .line 29
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_3

    .line 30
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    :cond_1
    nop

    .line 32
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "tableName":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "keyvaluecache"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "android_metadata"

    aput-object v4, v3, v1

    invoke-static {v3, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 34
    nop

    .line 35
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 36
    :catch_1
    move-exception v1

    .line 38
    :cond_2
    :goto_1
    nop

    .line 40
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_4
    invoke-virtual {p0, p1, p2}, Lco/bxvip/android/commonlib/db/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    .end local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_3

    .line 45
    :goto_2
    nop

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 48
    return-void
.end method

.method public final use(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "f"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    nop

    .line 55
    :try_start_0
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/DatabaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/DatabaseHelper;->closeDatabase()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/DatabaseHelper;->closeDatabase()V

    throw v0
.end method
