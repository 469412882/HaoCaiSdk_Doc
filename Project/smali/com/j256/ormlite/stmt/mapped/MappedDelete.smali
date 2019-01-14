.class public Lcom/j256/ormlite/stmt/mapped/MappedDelete;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "MappedDelete.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement<",
        "TT;TID;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 0
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    .line 20
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedDelete;, "Lcom/j256/ormlite/stmt/mapped/MappedDelete<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 21
    return-void
.end method

.method public static build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedDelete;
    .locals 6
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/mapped/MappedDelete<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 25
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 26
    .local v0, "idField":Lcom/j256/ormlite/field/FieldType;
    if-nez v0, :cond_0

    .line 27
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because it doesn\'t have an id field"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "DELETE FROM "

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->appendWhereFieldEq(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 33
    new-instance v2, Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/j256/ormlite/field/FieldType;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v2, p1, v3, v4}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    return-object v2
.end method


# virtual methods
.method public delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 7
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedDelete;, "Lcom/j256/ormlite/stmt/mapped/MappedDelete<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->getFieldObjects(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "args":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->statement:Ljava/lang/String;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, v1, v0, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->delete(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I

    move-result v1

    .line 43
    .local v1, "rowC":I
    sget-object v2, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "delete data with statement \'{}\' and {} args, changed {} rows"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->statement:Ljava/lang/String;

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    array-length v2, v0

    if-lez v2, :cond_0

    .line 46
    sget-object v2, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "delete arguments: {}"

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :cond_0
    if-lez v1, :cond_1

    if-eqz p3, :cond_1

    .line 49
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v2, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    .local v2, "id":Ljava/lang/Object;
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->clazz:Ljava/lang/Class;

    invoke-interface {p3, v3, v2}, Lcom/j256/ormlite/dao/ObjectCache;->remove(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v2    # "id":Ljava/lang/Object;
    :cond_1
    return v1

    .line 53
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "rowC":I
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to run delete stmt on object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->statement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 7
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedDelete;, "Lcom/j256/ormlite/stmt/mapped/MappedDelete<TT;TID;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->convertIdToFieldObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    .local v0, "args":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->statement:Ljava/lang/String;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, v1, v0, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->delete(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I

    move-result v1

    .line 65
    .local v1, "rowC":I
    sget-object v2, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "delete data with statement \'{}\' and {} args, changed {} rows"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->statement:Ljava/lang/String;

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    array-length v2, v0

    if-lez v2, :cond_0

    .line 68
    sget-object v2, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "delete arguments: {}"

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    :cond_0
    if-lez v1, :cond_1

    if-eqz p3, :cond_1

    .line 71
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->clazz:Ljava/lang/Class;

    invoke-interface {p3, v2, p2}, Lcom/j256/ormlite/dao/ObjectCache;->remove(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_1
    return v1

    .line 74
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "rowC":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to run deleteById stmt on id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->statement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method
