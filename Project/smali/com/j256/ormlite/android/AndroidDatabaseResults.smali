.class public Lcom/j256/ormlite/android/AndroidDatabaseResults;
.super Ljava/lang/Object;
.source "AndroidDatabaseResults.java"

# interfaces
.implements Lcom/j256/ormlite/support/DatabaseResults;


# static fields
.field private static final MIN_NUM_COLUMN_NAMES_MAP:I = 0x8

.field private static final databaseType:Lcom/j256/ormlite/db/DatabaseType;


# instance fields
.field private final cacheStore:Z

.field private final columnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final columnNames:[Ljava/lang/String;

.field private final cursor:Landroid/database/Cursor;

.field private final objectCache:Lcom/j256/ormlite/dao/ObjectCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v0}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;Z)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .param p3, "cacheStore"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    .line 37
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    array-length v0, v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    .line 40
    const/4 v0, 0x0

    .line 40
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    .line 47
    :cond_1
    iput-object p2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    .line 48
    iput-boolean p3, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cacheStore:Z

    .line 49
    return-void
.end method

.method private lookupColumn(Ljava/lang/String;)I
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 260
    const/4 v0, 0x0

    .line 260
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    return v0

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    :cond_1
    return v1

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 270
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 271
    return v1

    .line 273
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    return-void
.end method

.method public closeQuietly()V
    .locals 0

    .line 242
    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->close()V

    .line 243
    return-void
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->lookupColumn(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 114
    return v0

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/j256/ormlite/android/AndroidDatabaseResults;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v2, v1, p1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->lookupColumn(Ljava/lang/String;)I

    move-result v0

    .line 125
    if-ltz v0, :cond_1

    .line 126
    return v0

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "columnNames":[Ljava/lang/String;
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown field \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' from the Android sqlite cursor, not in:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public first()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Android does not support BigDecimal type.  Use BIG_DECIMAL or BIG_DECIMAL_STRING types"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlobStream(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "columnIndex"    # I

    .line 202
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .line 141
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "columnIndex"    # I

    .line 162
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getShort(I)S

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    .line 167
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getChar(I)C
    .locals 4
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 156
    :cond_1
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "More than 1 character stored in database column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_2
    :goto_0
    return v1
.end method

.method public getColumnCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .line 58
    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getColumnCount()I

    move-result v0

    .line 59
    .local v0, "colN":I
    new-array v1, v0, [Ljava/lang/String;

    .line 60
    .local v1, "columnNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 60
    .local v2, "colC":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 61
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "colC":I
    :cond_0
    return-object v1
.end method

.method public getCount()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    .line 192
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .line 187
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .line 177
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .line 182
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Android does not support Object type."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getObjectCacheForRetrieve()Lcom/j256/ormlite/dao/ObjectCache;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    return-object v0
.end method

.method public getObjectCacheForStore()Lcom/j256/ormlite/dao/ObjectCache;
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cacheStore:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    return-object v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getRawCursor()Landroid/database/Cursor;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "columnIndex"    # I

    .line 172
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .line 136
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Android does not support timestamp.  Use JAVA_DATE_LONG or JAVA_DATE_STRING types"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public last()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveAbsolute(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 93
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveRelative(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 88
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public next()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public previous()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 254
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

.method public wasNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .line 218
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method
