.class Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;
.super Ljava/lang/Object;
.source "DefaultDatabaseImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MaintainerIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Landroid/database/Cursor;

.field private currentId:I

.field private final needRemoveId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)V
    .locals 3
    .param p1, "this$0"    # Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    .line 306
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->needRemoveId:Ljava/util/List;

    .line 307
    invoke-static {p1}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT * FROM filedownloader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    .line 308
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 5

    .line 317
    new-instance v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;-><init>()V

    .line 318
    .local v0, "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setId(I)V

    .line 319
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    const-string v3, "url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setUrl(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    const-string v3, "path"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    const-string v4, "pathAsDirectory"

    .line 321
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 320
    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setPath(Ljava/lang/String;Z)V

    .line 322
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 323
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    const-string v3, "sofar"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setSoFar(J)V

    .line 324
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    const-string v3, "total"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setTotal(J)V

    .line 325
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    const-string v3, "errMsg"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setErrMsg(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    const-string v3, "etag"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setETag(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    const-string v3, "filename"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setFilename(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    const-string v3, "connectionCount"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setConnectionCount(I)V

    .line 330
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    iput v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->currentId:I

    .line 332
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->next()Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    return-object v0
.end method

.method onFinishMaintain()V
    .locals 8

    .line 341
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 343
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->needRemoveId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    const-string v0, ", "

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->needRemoveId:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "args":Ljava/lang/String;
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 346
    const-string v1, "delete %s"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {p0, v1, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-static {v1}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "DELETE FROM %s WHERE %s IN (%s);"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "filedownloader"

    aput-object v7, v6, v2

    const-string v7, "_id"

    aput-object v7, v6, v3

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-static {v4, v6}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-static {v1}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "DELETE FROM %s WHERE %s IN (%s);"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "filedownloaderConnection"

    aput-object v6, v5, v2

    const-string v2, "id"

    aput-object v2, v5, v3

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    .end local v0    # "args":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public remove()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->needRemoveId:Ljava/util/List;

    iget v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->currentId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method
