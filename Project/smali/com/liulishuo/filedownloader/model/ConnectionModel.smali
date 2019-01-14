.class public Lcom/liulishuo/filedownloader/model/ConnectionModel;
.super Ljava/lang/Object;
.source "ConnectionModel.java"


# static fields
.field public static final CURRENT_OFFSET:Ljava/lang/String; = "currentOffset"

.field public static final END_OFFSET:Ljava/lang/String; = "endOffset"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final INDEX:Ljava/lang/String; = "connectionIndex"

.field public static final START_OFFSET:Ljava/lang/String; = "startOffset"


# instance fields
.field private currentOffset:J

.field private endOffset:J

.field private id:I

.field private index:I

.field private startOffset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTotalOffset(Ljava/util/List;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/ConnectionModel;",
            ">;)J"
        }
    .end annotation

    .line 96
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/model/ConnectionModel;>;"
    const-wide/16 v0, 0x0

    .line 97
    .local v0, "totalOffset":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/model/ConnectionModel;

    .line 98
    .local v3, "model":Lcom/liulishuo/filedownloader/model/ConnectionModel;
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getCurrentOffset()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getStartOffset()J

    move-result-wide v6

    sub-long v8, v4, v6

    add-long v3, v0, v8

    .line 99
    .end local v0    # "totalOffset":J
    .local v3, "totalOffset":J
    nop

    .line 97
    move-wide v0, v3

    goto :goto_0

    .line 100
    .end local v3    # "totalOffset":J
    .restart local v0    # "totalOffset":J
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public getCurrentOffset()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->currentOffset:J

    return-wide v0
.end method

.method public getEndOffset()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->endOffset:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->id:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->index:I

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->startOffset:J

    return-wide v0
.end method

.method public setCurrentOffset(J)V
    .locals 0
    .param p1, "currentOffset"    # J

    .line 74
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->currentOffset:J

    .line 75
    return-void
.end method

.method public setEndOffset(J)V
    .locals 0
    .param p1, "endOffset"    # J

    .line 82
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->endOffset:J

    .line 83
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 50
    iput p1, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->id:I

    .line 51
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 58
    iput p1, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->index:I

    .line 59
    return-void
.end method

.method public setStartOffset(J)V
    .locals 0
    .param p1, "startOffset"    # J

    .line 66
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->startOffset:J

    .line 67
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .line 86
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "id"

    iget v2, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v1, "connectionIndex"

    iget v2, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "startOffset"

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->startOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    const-string v1, "currentOffset"

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->currentOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string v1, "endOffset"

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->endOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 105
    const-string v0, "id[%d] index[%d] range[%d, %d) current offset(%d)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->id:I

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->startOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->endOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/model/ConnectionModel;->currentOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 105
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
