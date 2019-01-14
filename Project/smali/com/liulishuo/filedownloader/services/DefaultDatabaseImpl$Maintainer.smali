.class Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;
.super Ljava/lang/Object;
.source "DefaultDatabaseImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Maintainer"
.end annotation


# instance fields
.field private currentIterator:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;

.field private final needChangeIdList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    .line 241
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->needChangeIdList:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public changeFileDownloadModelId(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 1
    .param p1, "oldId"    # I
    .param p2, "modelWithNewId"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 296
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->needChangeIdList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;-><init>(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->currentIterator:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;

    return-object v0
.end method

.method public onFinishMaintain()V
    .locals 12

    .line 253
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->currentIterator:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->currentIterator:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$MaintainerIterator;->onFinishMaintain()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->needChangeIdList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 256
    .local v0, "length":I
    if-gez v0, :cond_1

    return-void

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-static {v1}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 260
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 260
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 261
    :try_start_0
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->needChangeIdList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 262
    .local v3, "oldId":I
    iget-object v4, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->needChangeIdList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 263
    .local v4, "modelWithNewId":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    iget-object v5, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-static {v5}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "filedownloader"

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {v5, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    iget-object v5, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-static {v5}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "filedownloader"

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 266
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v5

    if-le v5, v8, :cond_3

    .line 267
    iget-object v5, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-virtual {v5, v3}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->findConnectionModel(I)Ljava/util/List;

    move-result-object v5

    .line 268
    .local v5, "connectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 268
    .end local v3    # "oldId":I
    .end local v4    # "modelWithNewId":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .end local v5    # "connectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    goto :goto_2

    .line 270
    .restart local v3    # "oldId":I
    .restart local v4    # "modelWithNewId":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .restart local v5    # "connectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    :cond_2
    iget-object v6, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-static {v6}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "filedownloaderConnection"

    const-string v10, "id = ?"

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v1

    invoke-virtual {v6, v7, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liulishuo/filedownloader/model/ConnectionModel;

    .line 272
    .local v7, "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setId(I)V

    .line 273
    iget-object v8, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-static {v8}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v10, "filedownloaderConnection"

    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v11

    invoke-virtual {v8, v10, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 274
    .end local v7    # "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    goto :goto_1

    .line 260
    .end local v3    # "oldId":I
    .end local v4    # "modelWithNewId":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .end local v5    # "connectionModelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 280
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 278
    :cond_4
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-static {v1}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-static {v1}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 281
    nop

    .line 283
    return-void

    .line 280
    :goto_3
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-static {v2}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$000(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public onRefreshedValidData(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 2
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 291
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl$Maintainer;->this$0:Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;->access$100(Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    return-void
.end method

.method public onRemovedInvalidData(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 287
    return-void
.end method
