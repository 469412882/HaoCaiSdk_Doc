.class Lcom/j256/ormlite/dao/EagerForeignCollection$1;
.super Ljava/lang/Object;
.source "EagerForeignCollection.java"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/j256/ormlite/dao/EagerForeignCollection;->iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private offset:I

.field final synthetic this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;


# direct methods
.method constructor <init>(Lcom/j256/ormlite/dao/EagerForeignCollection;)V
    .locals 1
    .param p1, "this$0"    # Lcom/j256/ormlite/dao/EagerForeignCollection;

    .line 75
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    iput-object p1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 175
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    return-void
.end method

.method public closeQuietly()V
    .locals 0

    .line 180
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    return-void
.end method

.method public current()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    if-gez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    .line 115
    :cond_0
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    iget-object v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v1}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    .line 86
    iget v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    iget-object v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v2}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v1}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRawResults()Lcom/j256/ormlite/support/DatabaseResults;
    .locals 1

    .line 185
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .line 80
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v2}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public moveAbsolute(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    iput p1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    .line 145
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    iget-object v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v1}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public moveRelative(I)Ljava/lang/Object;
    .locals 2
    .param p1, "relativeOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    .line 135
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    iget-object v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v1}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 136
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public moveToNext()V
    .locals 1

    .line 190
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    .line 191
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    .line 97
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextThrow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    .line 103
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    iget-object v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v1}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    .line 125
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    iget-object v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v1}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 154
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection$1;"
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    if-gez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() must be called before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    iget-object v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v1}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current results position ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "removed":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->offset:I

    .line 162
    iget-object v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    iget-object v1, v1, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_2

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->this$0:Lcom/j256/ormlite/dao/EagerForeignCollection;

    iget-object v1, v1, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 170
    .end local v1    # "e":Ljava/sql/SQLException;
    :cond_2
    :goto_0
    return-void
.end method
