.class Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;
.super Ljava/lang/Object;
.source "DefaultDatabaseImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;,
        Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;
    }
.end annotation


# static fields
.field public static final CONNECTION_TABLE_NAME:Ljava/lang/String; = "filedownloaderConnection"

.field public static final TABLE_NAME:Ljava/lang/String; = "filedownloader"


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final downloaderModelMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseOpenHelper;

    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "openHelper":Lcom/liulishuo/filedownloader/services/DefaultDatabaseOpenHelper;
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    .line 40
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    .line 40
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method private update(ILandroid/content/ContentValues;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 238
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filedownloader"

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 239
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 156
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filedownloader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filedownloaderConnection"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 1
    .param p1, "id"    # I

    .line 57
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    return-object v0
.end method

.method public findConnectionModel(I)Ljava/util/List;
    .locals 8
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/ConnectionModel;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    const/4 v1, 0x0

    .line 66
    .local v1, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM %s WHERE %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "filedownloaderConnection"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "id"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 66
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 69
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v2, Lcom/liulishuo/filedownloader/model/ConnectionModel;

    invoke-direct {v2}, Lcom/liulishuo/filedownloader/model/ConnectionModel;-><init>()V

    .line 71
    .local v2, "model":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    invoke-virtual {v2, p1}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setId(I)V

    .line 72
    const-string v3, "connectionIndex"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setIndex(I)V

    .line 73
    const-string v3, "startOffset"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setStartOffset(J)V

    .line 74
    const-string v3, "currentOffset"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setCurrentOffset(J)V

    .line 75
    const-string v3, "endOffset"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setEndOffset(J)V

    .line 77
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v2    # "model":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    goto :goto_0

    .line 80
    :cond_0
    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_1
    return-object v0

    .line 80
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public insert(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 4
    .param p1, "downloadModel"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 117
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filedownloader"

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 121
    return-void
.end method

.method public insertConnectionModel(Lcom/liulishuo/filedownloader/model/ConnectionModel;)V
    .locals 4
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/ConnectionModel;

    .line 95
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filedownloaderConnection"

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 96
    return-void
.end method

.method public maintainer()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;
    .locals 1

    .line 234
    new-instance v0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;-><init>(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)V

    return-object v0
.end method

.method public remove(I)Z
    .locals 7
    .param p1, "id"    # I

    .line 145
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 148
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filedownloader"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public removeConnections(I)V
    .locals 3
    .param p1, "id"    # I

    .line 89
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM filedownloaderConnection WHERE id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public update(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 7
    .param p1, "downloadModel"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 125
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 126
    const-string v1, "update but model == null!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 133
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 137
    .local v1, "cv":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "filedownloader"

    const-string v4, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    .end local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->insert(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 141
    :goto_0
    return-void
.end method

.method public updateCompleted(IJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "total"    # J

    .line 213
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->remove(I)Z

    .line 214
    return-void
.end method

.method public updateConnected(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "total"    # J
    .param p4, "etag"    # Ljava/lang/String;
    .param p5, "filename"    # Ljava/lang/String;

    .line 174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "status"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 176
    const-string v1, "total"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    const-string v1, "etag"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "filename"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1, v0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->update(ILandroid/content/ContentValues;)V

    .line 181
    return-void
.end method

.method public updateConnectionCount(II)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "count"    # I

    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "connectionCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "filedownloader"

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 111
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public updateConnectionModel(IIJ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "index"    # I
    .param p3, "currentOffset"    # J

    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "currentOffset"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "filedownloaderConnection"

    const-string v3, "id = ? AND connectionIndex = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 102
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public updateError(ILjava/lang/Throwable;J)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "sofar"    # J

    .line 194
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "errMsg"

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 197
    const-string v1, "sofar"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->update(ILandroid/content/ContentValues;)V

    .line 200
    return-void
.end method

.method public updateOldEtagOverdue(ILjava/lang/String;JJI)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "newEtag"    # Ljava/lang/String;
    .param p3, "sofar"    # J
    .param p5, "total"    # J
    .param p7, "connectionCount"    # I

    .line 162
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "sofar"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v1, "total"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v1, "etag"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "connectionCount"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->update(ILandroid/content/ContentValues;)V

    .line 170
    return-void
.end method

.method public updatePause(IJ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "sofar"    # J

    .line 218
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "status"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 220
    const-string v1, "sofar"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->update(ILandroid/content/ContentValues;)V

    .line 223
    return-void
.end method

.method public updatePending(I)V
    .locals 3
    .param p1, "id"    # I

    .line 227
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->update(ILandroid/content/ContentValues;)V

    .line 230
    return-void
.end method

.method public updateProgress(IJ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "sofarBytes"    # J

    .line 185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "status"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 187
    const-string v1, "sofar"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    invoke-direct {p0, p1, v0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->update(ILandroid/content/ContentValues;)V

    .line 190
    return-void
.end method

.method public updateRetry(ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 204
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "errMsg"

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "status"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 208
    invoke-direct {p0, p1, v0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->update(ILandroid/content/ContentValues;)V

    .line 209
    return-void
.end method
