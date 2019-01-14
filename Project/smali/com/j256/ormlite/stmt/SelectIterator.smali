.class public Lcom/j256/ormlite/stmt/SelectIterator;
.super Ljava/lang/Object;
.source "SelectIterator.java"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableIterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private alreadyMoved:Z

.field private final classDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private closed:Z

.field private final compiledStmt:Lcom/j256/ormlite/support/CompiledStatement;

.field private final connection:Lcom/j256/ormlite/support/DatabaseConnection;

.field private final connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private first:Z

.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final results:Lcom/j256/ormlite/support/DatabaseResults;

.field private rowC:I

.field private final rowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/GenericRowMapper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final statement:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/SelectIterator;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 3
    .param p4, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p5, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p6, "compiledStmt"    # Lcom/j256/ormlite/support/CompiledStatement;
    .param p7, "statement"    # Ljava/lang/String;
    .param p8, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper<",
            "TT;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/support/CompiledStatement;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "classDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    .local p3, "rowMapper":Lcom/j256/ormlite/stmt/GenericRowMapper;, "Lcom/j256/ormlite/stmt/GenericRowMapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 51
    iput-object p1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    .line 52
    iput-object p2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->classDao:Lcom/j256/ormlite/dao/Dao;

    .line 53
    iput-object p3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    .line 54
    iput-object p4, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 55
    iput-object p5, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 56
    iput-object p6, p0, Lcom/j256/ormlite/stmt/SelectIterator;->compiledStmt:Lcom/j256/ormlite/support/CompiledStatement;

    .line 57
    invoke-interface {p6, p8}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    .line 58
    iput-object p7, p0, Lcom/j256/ormlite/stmt/SelectIterator;->statement:Ljava/lang/String;

    .line 59
    if-eqz p7, :cond_0

    .line 60
    sget-object v0, Lcom/j256/ormlite/stmt/SelectIterator;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "starting iterator @{} for \'{}\'"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p7}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    :cond_0
    return-void
.end method

.method private getCurrent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 297
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/stmt/GenericRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    .line 299
    iget v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowC:I

    .line 300
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->compiledStmt:Lcom/j256/ormlite/support/CompiledStatement;

    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->statement:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/j256/ormlite/stmt/SelectIterator;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "closed iterator @{} after {} rows"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowC:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not release connection"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 277
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_1
    :goto_0
    return-void
.end method

.method public closeQuietly()V
    .locals 0

    .line 281
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 282
    return-void
.end method

.method public current()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    return-object v1

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 116
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 119
    :cond_1
    return-object v1
.end method

.method public getRawResults()Lcom/j256/ormlite/support/DatabaseResults;
    .locals 1

    .line 286
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .line 101
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNextThrow()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/sql/SQLException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->closeQuietly()V

    .line 106
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Errors getting more results of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasNextThrow()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    return v1

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 76
    return v2

    .line 79
    :cond_1
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    if-eqz v0, :cond_2

    .line 80
    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 81
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v0

    .line 81
    .local v0, "result":Z
    goto :goto_0

    .line 83
    .end local v0    # "result":Z
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->next()Z

    move-result v0

    .line 85
    .restart local v0    # "result":Z
    :goto_0
    if-nez v0, :cond_3

    .line 86
    const-string v1, "iterator"

    invoke-static {p0, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 88
    :cond_3
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    .line 89
    return v0
.end method

.method public moveAbsolute(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 209
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    return-object v1

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 213
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/DatabaseResults;->moveAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 216
    :cond_1
    return-object v1
.end method

.method public moveRelative(I)Ljava/lang/Object;
    .locals 2
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    return-object v1

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 200
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/DatabaseResults;->moveRelative(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 203
    :cond_1
    return-object v1
.end method

.method public moveToNext()V
    .locals 1

    .line 291
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 293
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    .line 294
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    const/4 v0, 0x0

    move-object v1, v0

    .line 181
    .local v1, "sqlException":Ljava/sql/SQLException;
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->nextThrow()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .local v2, "result":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 183
    return-object v2

    .line 187
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/sql/SQLException;
    move-object v1, v2

    .line 189
    .end local v2    # "e":Ljava/sql/SQLException;
    :goto_0
    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    .line 190
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->closeQuietly()V

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get next result for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextThrow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 150
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    return-object v1

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 155
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    if-eqz v0, :cond_1

    .line 156
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 157
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v0

    .line 157
    .local v0, "hasResult":Z
    goto :goto_0

    .line 159
    .end local v0    # "hasResult":Z
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->next()Z

    move-result v0

    .line 162
    .restart local v0    # "hasResult":Z
    :goto_0
    if-nez v0, :cond_2

    .line 163
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 164
    return-object v1

    .line 167
    .end local v0    # "hasResult":Z
    :cond_2
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 168
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    return-object v1

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 129
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->previous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 132
    :cond_1
    return-object v1
.end method

.method public remove()V
    .locals 4

    .line 254
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->removeThrow()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    nop

    .line 260
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->closeQuietly()V

    .line 258
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeThrow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " object to remove. Must be called after a call to next."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->classDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " object because classDao not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->classDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    .line 242
    nop

    .line 243
    return-void

    .line 241
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    throw v1
.end method
