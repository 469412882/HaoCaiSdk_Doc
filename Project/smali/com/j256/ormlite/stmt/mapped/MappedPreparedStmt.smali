.class public Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;
.source "MappedPreparedStmt.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/PreparedQuery;
.implements Lcom/j256/ormlite/stmt/PreparedDelete;
.implements Lcom/j256/ormlite/stmt/PreparedUpdate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery<",
        "TT;TID;>;",
        "Lcom/j256/ormlite/stmt/PreparedQuery<",
        "TT;>;",
        "Lcom/j256/ormlite/stmt/PreparedDelete<",
        "TT;>;",
        "Lcom/j256/ormlite/stmt/PreparedUpdate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

.field private final cacheStore:Z

.field private final limit:Ljava/lang/Long;

.field private final type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/stmt/ArgumentHolder;Ljava/lang/Long;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;Z)V
    .locals 0
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "resultFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p5, "argHolders"    # [Lcom/j256/ormlite/stmt/ArgumentHolder;
    .param p6, "limit"    # Ljava/lang/Long;
    .param p7, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .param p8, "cacheStore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "[",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            "Ljava/lang/Long;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;",
            "Z)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;)V

    .line 36
    iput-object p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 38
    iput-object p6, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->limit:Ljava/lang/Long;

    .line 39
    iput-object p7, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 40
    iput-boolean p8, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->cacheStore:Z

    .line 41
    return-void
.end method

.method private assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 6
    .param p1, "stmt"    # Lcom/j256/ormlite/support/CompiledStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    const/4 v0, 0x0

    move v1, v0

    .line 91
    .local v1, "ok":Z
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->limit:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->limit:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/CompiledStatement;->setMaxRows(I)V

    .line 96
    :cond_0
    const/4 v2, 0x0

    .line 97
    .local v2, "argValues":[Ljava/lang/Object;
    sget-object v3, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->logger:Lcom/j256/ormlite/logger/Logger;

    sget-object v4, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/logger/Logger;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 100
    :cond_1
    nop

    .line 100
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 101
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getSqlArgValue()Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, "argValue":Ljava/lang/Object;
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    aget-object v4, v4, v0

    .line 104
    .local v4, "fieldType":Lcom/j256/ormlite/field/FieldType;
    if-nez v4, :cond_2

    .line 105
    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    aget-object v5, v5, v0

    invoke-interface {v5}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v5

    .line 105
    .local v5, "sqlType":Lcom/j256/ormlite/field/SqlType;
    goto :goto_1

    .line 107
    .end local v5    # "sqlType":Lcom/j256/ormlite/field/SqlType;
    :cond_2
    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v5

    .line 109
    .restart local v5    # "sqlType":Lcom/j256/ormlite/field/SqlType;
    :goto_1
    invoke-interface {p1, v0, v3, v5}, Lcom/j256/ormlite/support/CompiledStatement;->setObject(ILjava/lang/Object;Lcom/j256/ormlite/field/SqlType;)V

    .line 110
    if-eqz v2, :cond_3

    .line 111
    aput-object v3, v2, v0

    .line 100
    .end local v3    # "argValue":Ljava/lang/Object;
    .end local v4    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v5    # "sqlType":Lcom/j256/ormlite/field/SqlType;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_4
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "prepared statement \'{}\' with {} args"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->statement:Ljava/lang/String;

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    if-eqz v2, :cond_5

    .line 117
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "prepared statement arguments: {}"

    invoke-virtual {v0, v3, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_5
    const/4 v0, 0x1

    .line 120
    .end local v1    # "ok":Z
    .local v0, "ok":Z
    nop

    .line 122
    if-nez v0, :cond_6

    .line 123
    const-string v1, "statement"

    invoke-static {p1, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 120
    :cond_6
    return-object p1

    .line 122
    .end local v0    # "ok":Z
    .end local v2    # "argValues":[Ljava/lang/Object;
    .restart local v1    # "ok":Z
    :catchall_0
    move-exception v0

    if-nez v1, :cond_7

    .line 123
    const-string v2, "statement"

    invoke-static {p1, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    :cond_7
    throw v0
.end method


# virtual methods
.method public compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 1
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    return-object v0
.end method

.method public compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 8
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .param p3, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    if-eq v0, p2, :cond_0

    .line 52
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " statement since the caller is expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " statement.  Check your QueryBuilder methods."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->statement:Ljava/lang/String;

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    iget-boolean v7, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->cacheStore:Z

    .line 56
    move-object v2, p1

    move-object v4, p2

    move v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 58
    .local v0, "stmt":Lcom/j256/ormlite/support/CompiledStatement;
    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v1

    return-object v1
.end method

.method public getStatement()Ljava/lang/String;
    .locals 1

    .line 63
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->statement:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .locals 1

    .line 68
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    return-object v0
.end method

.method public setArgumentHolderValue(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    if-gez p1, :cond_0

    .line 74
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument holder index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 77
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument holder index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not valid, only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in statement (index starts at 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Lcom/j256/ormlite/stmt/ArgumentHolder;->setValue(Ljava/lang/Object;)V

    .line 81
    return-void
.end method
