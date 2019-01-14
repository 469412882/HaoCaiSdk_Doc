.class public Lcom/j256/ormlite/android/AndroidDatabaseConnection;
.super Ljava/lang/Object;
.source "AndroidDatabaseConnection.java"

# interfaces
.implements Lcom/j256/ormlite/support/DatabaseConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint;
    }
.end annotation


# static fields
.field private static final ANDROID_VERSION:Ljava/lang/String; = "VERSION__5.1__"

.field private static final NO_STRING_ARGS:[Ljava/lang/String;

.field private static logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private final cancelQueriesEnabled:Z

.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final readWrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->NO_STRING_ARGS:[Ljava/lang/String;

    .line 42
    const-string v0, "VERSION__5.1__"

    invoke-static {v0}, Lcom/j256/ormlite/misc/VersionUtils;->checkCoreVersusAndroidVersions(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "readWrite"    # Z

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;-><init>(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "readWrite"    # Z
    .param p3, "cancelQueriesEnabled"    # Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    iput-boolean p2, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->readWrite:Z

    .line 52
    iput-boolean p3, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->cancelQueriesEnabled:Z

    .line 53
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: db {} opened, read-write = {}"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method private bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 6
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 338
    if-nez p2, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 341
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 342
    aget-object v1, p2, v0

    .line 343
    .local v1, "arg":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 344
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 346
    :cond_1
    aget-object v2, p3, v0

    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v2

    .line 347
    .local v2, "sqlType":Lcom/j256/ormlite/field/SqlType;
    sget-object v3, Lcom/j256/ormlite/android/AndroidDatabaseConnection$1;->$SwitchMap$com$j256$ormlite$field$SqlType:[I

    invoke-virtual {v2}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 377
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown sql argument type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    :pswitch_0
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Android type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :pswitch_1
    add-int/lit8 v3, v0, 0x1

    move-object v4, v1

    check-cast v4, [B

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 367
    goto :goto_1

    .line 362
    :pswitch_2
    add-int/lit8 v3, v0, 0x1

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 363
    goto :goto_1

    .line 358
    :pswitch_3
    add-int/lit8 v3, v0, 0x1

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 359
    goto :goto_1

    .line 351
    :pswitch_4
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 352
    nop

    .line 341
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "sqlType":Lcom/j256/ormlite/field/SqlType;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v0    # "i":I
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private closeQuietly(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 409
    if-eqz p1, :cond_0

    .line 410
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_0
    return-void
.end method

.method private closeQuietly(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteStatement;

    .line 418
    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 421
    :cond_0
    return-void
.end method

.method private toStrings([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .line 384
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    .line 387
    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 388
    .local v1, "strings":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 388
    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 389
    aget-object v3, p1, v2

    .line 390
    .local v3, "arg":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 391
    aput-object v0, v1, v2

    goto :goto_1

    .line 393
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 388
    .end local v3    # "arg":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 385
    .end local v1    # "strings":[Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v0
.end method

.method private update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)I
    .locals 5
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    move-object v0, v1

    .line 315
    invoke-direct {p0, v0, p2, p3}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)V

    .line 316
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 320
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/sqlite/SQLiteStatement;)V

    .line 321
    const/4 v0, 0x0

    .line 322
    nop

    .line 325
    :try_start_1
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT CHANGES()"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    move-object v0, v1

    .line 326
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v1, v1

    .line 326
    .local v1, "result":I
    goto :goto_0

    .line 331
    .end local v1    # "result":I
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/sqlite/SQLiteStatement;)V

    throw v1

    .line 327
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Landroid/database/SQLException;
    const/4 v1, 0x1

    .line 331
    .local v1, "result":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/sqlite/SQLiteStatement;)V

    .line 332
    nop

    .line 331
    nop

    .line 333
    sget-object v2, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "{} statement is compiled and executed, changed {}: {}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, p4, v4, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    return v1

    .line 320
    .end local v1    # "result":I
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 317
    :catch_1
    move-exception v1

    .line 318
    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating database failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 320
    .end local v1    # "e":Landroid/database/SQLException;
    :goto_1
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/sqlite/SQLiteStatement;)V

    .line 321
    const/4 v0, 0x0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 271
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: db {} closed"

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p0, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    nop

    .line 275
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "problems closing the database connection"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public closeQuietly()V
    .locals 0

    .line 279
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 280
    return-void
.end method

.method public commit(Ljava/sql/Savepoint;)V
    .locals 3
    .param p1, "savepoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 113
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 114
    if-nez p1, :cond_0

    .line 115
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: transaction is successfully ended"

    invoke-virtual {v0, v1, p0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_0
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: transaction {} is successfully ended"

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    nop

    .line 126
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/database/SQLException;
    if-nez p1, :cond_1

    .line 121
    const-string v1, "problems committing transaction"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 123
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problems committing transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 7
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "resultFlags"    # I
    .param p5, "cacheStore"    # Z

    .line 161
    new-instance v6, Lcom/j256/ormlite/android/AndroidCompiledStatement;

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v4, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->cancelQueriesEnabled:Z

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/android/AndroidCompiledStatement;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;ZZ)V

    .line 162
    .local v0, "stmt":Lcom/j256/ormlite/support/CompiledStatement;
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "{}: compiled statement got {}: {}"

    invoke-virtual {v1, v2, p0, v0, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    return-object v0
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 199
    const-string v0, "deleted"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public executeStatement(Ljava/lang/String;I)I
    .locals 2
    .param p1, "statementStr"    # Ljava/lang/String;
    .param p2, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->NO_STRING_ARGS:[Ljava/lang/String;

    invoke-static {v0, p1, p1, v1}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/GeneratedKeyHolder;)I
    .locals 7
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "keyHolder"    # Lcom/j256/ormlite/support/GeneratedKeyHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    move-object v0, v1

    .line 172
    invoke-direct {p0, v0, p2, p3}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)V

    .line 173
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1

    .line 174
    .local v1, "rowId":J
    if-eqz p4, :cond_0

    .line 175
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p4, v3}, Lcom/j256/ormlite/support/GeneratedKeyHolder;->addKey(Ljava/lang/Number;)V

    .line 181
    :cond_0
    const/4 v3, 0x1

    .line 182
    .local v3, "result":I
    sget-object v4, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v5, "{}: insert statement is compiled and executed, changed {}: {}"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, p0, v6, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    nop

    .line 187
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/sqlite/SQLiteStatement;)V

    .line 183
    return v3

    .line 187
    .end local v1    # "rowId":J
    .end local v3    # "result":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inserting to database failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .end local v1    # "e":Landroid/database/SQLException;
    :goto_0
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/sqlite/SQLiteStatement;)V

    throw v1
.end method

.method public isAutoCommit()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    .line 65
    .local v0, "inTransaction":Z
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "{}: in transaction is {}"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 68
    .end local v0    # "inTransaction":Z
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "problems getting auto-commit from database"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public isAutoCommitSupported()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public isClosed()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    .line 286
    .local v0, "isOpen":Z
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "{}: db {} isOpen returned {}"

    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 288
    .end local v0    # "isOpen":Z
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "problems detecting if the database is closed"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public isReadWrite()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->readWrite:Z

    return v0
.end method

.method public isTableExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "tableName"    # Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 299
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 300
    const/4 v3, 0x1

    .line 300
    .local v3, "result":Z
    goto :goto_0

    .line 302
    .end local v3    # "result":Z
    :cond_0
    nop

    .line 302
    .restart local v3    # "result":Z
    :goto_0
    move v1, v3

    .line 304
    .end local v3    # "result":Z
    .local v1, "result":Z
    sget-object v2, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "{}: isTableExists \'{}\' returned {}"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, p0, p1, v4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    nop

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 305
    return v1

    .line 307
    .end local v1    # "result":Z
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public queryForLong(Ljava/lang/String;)J
    .locals 6
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    move-object v0, v1

    .line 234
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v1

    .line 235
    .local v1, "result":J
    sget-object v3, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "{}: query for long simple query returned {}: {}"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, p0, v5, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    nop

    .line 240
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/sqlite/SQLiteStatement;)V

    .line 236
    return-wide v1

    .line 240
    .end local v1    # "result":J
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryForLong from database failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    .end local v1    # "e":Landroid/database/SQLException;
    :goto_0
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/sqlite/SQLiteStatement;)V

    throw v1
.end method

.method public queryForLong(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)J
    .locals 7
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    move-object v2, v1

    .line 249
    .local v2, "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :try_start_0
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->toStrings([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 250
    new-instance v3, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/j256/ormlite/android/AndroidDatabaseResults;-><init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;Z)V

    move-object v2, v3

    .line 252
    invoke-virtual {v2}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->first()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v2, v4}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getLong(I)J

    move-result-wide v3

    .line 253
    .local v3, "result":J
    goto :goto_0

    .line 255
    .end local v3    # "result":J
    :cond_0
    const-wide/16 v3, 0x0

    .line 257
    .restart local v3    # "result":J
    :goto_0
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v5, "{}: query for long raw query returned {}: {}"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, p0, v6, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    nop

    .line 262
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/Cursor;)V

    .line 263
    invoke-static {v2}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 258
    return-wide v3

    .line 262
    .end local v3    # "result":J
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryForLong from database failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .end local v1    # "e":Landroid/database/SQLException;
    :goto_1
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/Cursor;)V

    .line 263
    invoke-static {v2}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public queryForOne(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 5
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p5, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 205
    .local p4, "rowMapper":Lcom/j256/ormlite/stmt/GenericRowMapper;, "Lcom/j256/ormlite/stmt/GenericRowMapper<TT;>;"
    const/4 v0, 0x0

    .line 206
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    move-object v2, v1

    .line 208
    .local v2, "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :try_start_0
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->toStrings([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 209
    new-instance v3, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    const/4 v4, 0x1

    invoke-direct {v3, v0, p5, v4}, Lcom/j256/ormlite/android/AndroidDatabaseResults;-><init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;Z)V

    move-object v2, v3

    .line 210
    sget-object v3, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "{}: queried for one result: {}"

    invoke-virtual {v3, v4, p0, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v2}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->first()Z

    move-result v3
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 212
    nop

    .line 224
    invoke-static {v2}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 225
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/Cursor;)V

    .line 212
    return-object v1

    .line 214
    :cond_0
    :try_start_1
    invoke-interface {p4, v2}, Lcom/j256/ormlite/stmt/GenericRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    .local v1, "first":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    sget-object v3, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->MORE_THAN_ONE:Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    invoke-static {v2}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 225
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/Cursor;)V

    .line 216
    return-object v3

    .line 218
    :cond_1
    nop

    .line 224
    invoke-static {v2}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 225
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/Cursor;)V

    .line 218
    return-object v1

    .line 224
    .end local v1    # "first":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryForOne from database failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .end local v1    # "e":Landroid/database/SQLException;
    :goto_0
    invoke-static {v2}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 225
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->closeQuietly(Landroid/database/Cursor;)V

    throw v1
.end method

.method public releaseSavePoint(Ljava/sql/Savepoint;)V
    .locals 0
    .param p1, "savePoint"    # Ljava/sql/Savepoint;

    .line 150
    return-void
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 3
    .param p1, "savepoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    if-nez p1, :cond_0

    .line 134
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: transaction is ended, unsuccessfully"

    invoke-virtual {v0, v1, p0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_0
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: transaction {} is ended, unsuccessfully"

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    nop

    .line 145
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/database/SQLException;
    if-nez p1, :cond_1

    .line 140
    const-string v1, "problems rolling back transaction"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 142
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problems rolling back transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public setAutoCommit(Z)V
    .locals 1
    .param p1, "autoCommit"    # Z

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 82
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 89
    :cond_1
    :goto_0
    return-void
.end method

.method public setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 95
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: save-point set with name {}"

    invoke-virtual {v0, v1, p0, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    new-instance v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint;

    invoke-direct {v0, p1}, Lcom/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problems beginning transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 193
    const-string v0, "updated"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
