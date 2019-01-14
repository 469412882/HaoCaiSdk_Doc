.class public Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;
.super Ljava/lang/Object;
.source "NoDatabaseImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$Maker;,
        Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$MaintainerIterator;,
        Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$Maintainer;
    }
.end annotation


# instance fields
.field private final connectionModelListMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/ConnectionModel;",
            ">;>;"
        }
    .end annotation
.end field

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
.method protected constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    .line 63
    return-void
.end method

.method public static createMaker()Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$Maker;
    .locals 1

    .line 66
    new-instance v0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$Maker;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$Maker;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 147
    return-void
.end method

.method public find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 1
    .param p1, "id"    # I

    .line 71
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    return-object v0
.end method

.method public findConnectionModel(I)Ljava/util/List;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/ConnectionModel;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    .local v1, "processList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_0
    return-object v0
.end method

.method public insert(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 2
    .param p1, "downloadModel"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 119
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public insertConnectionModel(Lcom/liulishuo/filedownloader/model/ConnectionModel;)V
    .locals 3
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/ConnectionModel;

    .line 90
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getId()I

    move-result v0

    .line 91
    .local v0, "id":I
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 92
    .local v1, "processList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    if-nez v1, :cond_0

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 94
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public maintainer()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;
    .locals 1

    .line 184
    new-instance v0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$Maintainer;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl$Maintainer;-><init>(Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;)V

    return-object v0
.end method

.method public remove(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 140
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public removeConnections(I)V
    .locals 1
    .param p1, "id"    # I

    .line 85
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 86
    return-void
.end method

.method public update(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 2
    .param p1, "downloadModel"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 124
    if-nez p1, :cond_0

    .line 125
    const-string v0, "update but model == null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 132
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->insert(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 136
    :goto_0
    return-void
.end method

.method public updateCompleted(IJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "total"    # J

    .line 171
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->remove(I)Z

    .line 172
    return-void
.end method

.method public updateConnected(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "total"    # J
    .param p4, "etag"    # Ljava/lang/String;
    .param p5, "filename"    # Ljava/lang/String;

    .line 155
    return-void
.end method

.method public updateConnectionCount(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "count"    # I

    .line 115
    return-void
.end method

.method public updateConnectionModel(IIJ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "index"    # I
    .param p3, "currentOffset"    # J

    .line 102
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 103
    .local v0, "processList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/model/ConnectionModel;

    .line 106
    .local v2, "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getIndex()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 107
    invoke-virtual {v2, p3, p4}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setCurrentOffset(J)V

    .line 108
    return-void

    .line 110
    .end local v2    # "connectionModel":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    :cond_1
    goto :goto_0

    .line 111
    :cond_2
    return-void
.end method

.method public updateError(ILjava/lang/Throwable;J)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "sofar"    # J

    .line 163
    return-void
.end method

.method public updateOldEtagOverdue(ILjava/lang/String;JJI)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "newEtag"    # Ljava/lang/String;
    .param p3, "sofar"    # J
    .param p5, "total"    # J
    .param p7, "connectionCount"    # I

    .line 151
    return-void
.end method

.method public updatePause(IJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "sofar"    # J

    .line 176
    return-void
.end method

.method public updatePending(I)V
    .locals 0
    .param p1, "id"    # I

    .line 180
    return-void
.end method

.method public updateProgress(IJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "sofarBytes"    # J

    .line 159
    return-void
.end method

.method public updateRetry(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 167
    return-void
.end method
