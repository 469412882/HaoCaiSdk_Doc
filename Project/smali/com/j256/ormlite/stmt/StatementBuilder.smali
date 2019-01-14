.class public abstract Lcom/j256/ormlite/stmt/StatementBuilder;
.super Ljava/lang/Object;
.source "StatementBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;,
        Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;,
        Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field protected addTableName:Z

.field protected final dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field protected final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field protected final tableInfo:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field protected final tableName:Ljava/lang/String;

.field protected type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

.field protected where:Lcom/j256/ormlite/stmt/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)V
    .locals 3
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p4, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;",
            ")V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    .line 40
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 41
    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 42
    invoke-virtual {p2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 44
    iput-object p4, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 45
    invoke-virtual {p4}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForStatementBuilder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Building a statement from a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " statement is not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract appendStatementEnd(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected abstract appendStatementStart(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected appendStatementString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendStatementStart(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 133
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    invoke-virtual {p0, p1, p2, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendStatementEnd(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 135
    return-void
.end method

.method protected appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "operation"    # Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 148
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    if-ne p3, v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 150
    :cond_1
    invoke-virtual {p3, p1}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->appendBefore(Ljava/lang/StringBuilder;)V

    .line 151
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    iget-boolean v2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->addTableName:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->getTableName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2, p1, p2}, Lcom/j256/ormlite/stmt/Where;->appendSql(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 152
    invoke-virtual {p3, p1}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->appendAfter(Ljava/lang/StringBuilder;)V

    .line 153
    return v1
.end method

.method protected buildStatementString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    .local p1, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendStatementString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "statement":Ljava/lang/String;
    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "built statement {}"

    invoke-virtual {v2, v3, v1}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-object v1
.end method

.method protected getResultFieldTypes()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .line 173
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .line 187
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .locals 1

    .line 194
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    return-object v0
.end method

.method protected prepareStatement(Ljava/lang/Long;Z)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;
    .locals 16
    .param p1, "limit"    # Ljava/lang/Long;
    .param p2, "cacheStore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Z)",
            "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    move-object/from16 v0, p0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->buildStatementString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "statement":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/j256/ormlite/stmt/ArgumentHolder;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 77
    .local v12, "selectArgs":[Lcom/j256/ormlite/stmt/ArgumentHolder;
    invoke-virtual/range {p0 .. p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->getResultFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v13

    .line 78
    .local v13, "resultFieldTypes":[Lcom/j256/ormlite/field/FieldType;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v14, v2, [Lcom/j256/ormlite/field/FieldType;

    .line 79
    .local v14, "argFieldTypes":[Lcom/j256/ormlite/field/FieldType;
    const/4 v2, 0x0

    .line 79
    .local v2, "selectC":I
    :goto_0
    array-length v3, v12

    if-ge v2, v3, :cond_0

    .line 80
    aget-object v3, v12, v2

    invoke-interface {v3}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getFieldType()Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    aput-object v3, v14, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "selectC":I
    :cond_0
    iget-object v2, v0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForStatementBuilder()Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Building a statement from a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " statement is not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_1
    new-instance v15, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    iget-object v3, v0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v2, v0, Lcom/j256/ormlite/stmt/StatementBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 86
    invoke-interface {v2}, Lcom/j256/ormlite/db/DatabaseType;->isLimitSqlSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object v8, v2

    goto :goto_1

    :cond_2
    move-object/from16 v8, p1

    :goto_1
    iget-object v9, v0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    move-object v2, v15

    move-object v4, v11

    move-object v5, v14

    move-object v6, v13

    move-object v7, v12

    move/from16 v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/stmt/ArgumentHolder;Ljava/lang/Long;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;Z)V

    .line 85
    return-object v15
.end method

.method public prepareStatementInfo()Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->buildStatementString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "statement":Ljava/lang/String;
    new-instance v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;

    invoke-direct {v2, v1, v0}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method public prepareStatementString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->buildStatementString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public reset()V
    .locals 1

    .line 111
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    .line 112
    return-void
.end method

.method public setWhere(Lcom/j256/ormlite/stmt/Where;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;TID;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    .local p1, "where":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    .line 65
    return-void
.end method

.method protected shouldPrependTableNameToColumns()Z
    .locals 1

    .line 165
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .line 183
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    return-object v0
.end method

.method public where()Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;TID;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/Where;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-direct {v0, v1, p0, v2}, Lcom/j256/ormlite/stmt/Where;-><init>(Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/stmt/StatementBuilder;Lcom/j256/ormlite/db/DatabaseType;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    .line 57
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    return-object v0
.end method
