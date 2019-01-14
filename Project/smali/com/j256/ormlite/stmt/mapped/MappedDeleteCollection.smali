.class public Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "MappedDeleteCollection.java"


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

    .line 21
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;, "Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 22
    return-void
.end method

.method private static appendWhereIds(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;I[Lcom/j256/ormlite/field/FieldType;)V
    .locals 3
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "idField"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "numDatas"    # I
    .param p4, "fieldTypes"    # [Lcom/j256/ormlite/field/FieldType;

    .line 100
    const-string v0, "WHERE "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 102
    const-string v0, " IN ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/4 v0, 0x1

    .line 104
    .local v0, "first":Z
    const/4 v1, 0x0

    .line 104
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 105
    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    goto :goto_1

    .line 108
    :cond_0
    const/16 v2, 0x2c

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :goto_1
    const/16 v2, 0x3f

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    if-eqz p4, :cond_1

    .line 112
    aput-object p1, p4, v1

    .line 104
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_2
    const-string v1, ") "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    return-void
.end method

.method private static build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;I)Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;
    .locals 5
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "dataSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;I)",
            "Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 65
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 66
    .local v0, "idField":Lcom/j256/ormlite/field/FieldType;
    if-nez v0, :cond_0

    .line 67
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because it doesn\'t have an id field defined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "DELETE FROM "

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-array v2, p2, [Lcom/j256/ormlite/field/FieldType;

    .line 73
    .local v2, "argFieldTypes":[Lcom/j256/ormlite/field/FieldType;
    invoke-static {p0, v0, v1, p2, v2}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->appendWhereIds(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;I[Lcom/j256/ormlite/field/FieldType;)V

    .line 74
    new-instance v3, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v2}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    return-object v3
.end method

.method public static deleteIds(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 7
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/util/Collection<",
            "TID;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "ids":Ljava/util/Collection;, "Ljava/util/Collection<TID;>;"
    nop

    .line 49
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;I)Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;

    move-result-object v0

    .line 50
    .local v0, "deleteCollection":Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;, "Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection<TT;TID;>;"
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    .local v1, "fieldObjects":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v2

    .line 52
    .local v2, "idField":Lcom/j256/ormlite/field/FieldType;
    const/4 v3, 0x0

    .line 53
    .local v3, "objC":I
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 54
    .local v5, "id":Ljava/lang/Object;, "TID;"
    invoke-virtual {v2, v5}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .end local v5    # "id":Ljava/lang/Object;, "TID;"
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p2, v4, v0, v1, p4}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->updateRows(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Class;Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;[Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v4

    return v4
.end method

.method public static deleteObjects(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 7
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 30
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "datas":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    nop

    .line 31
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;I)Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;

    move-result-object v0

    .line 32
    .local v0, "deleteCollection":Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;, "Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection<TT;TID;>;"
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    .local v1, "fieldObjects":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v2

    .line 34
    .local v2, "idField":Lcom/j256/ormlite/field/FieldType;
    const/4 v3, 0x0

    .line 35
    .local v3, "objC":I
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 36
    .local v5, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v5}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .end local v5    # "data":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p2, v4, v0, v1, p4}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->updateRows(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Class;Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;[Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v4

    return v4
.end method

.method private static updateRows(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Class;Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;[Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 6
    .param p0, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection<",
            "TT;TID;>;[",
            "Ljava/lang/Object;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 80
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "deleteCollection":Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;, "Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection<TT;TID;>;"
    :try_start_0
    iget-object v0, p2, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->statement:Ljava/lang/String;

    iget-object v1, p2, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p0, v0, p3, v1}, Lcom/j256/ormlite/support/DatabaseConnection;->delete(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I

    move-result v0

    .line 81
    .local v0, "rowC":I
    if-lez v0, :cond_0

    if-eqz p4, :cond_0

    .line 82
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 83
    .local v3, "id":Ljava/lang/Object;
    invoke-interface {p4, p1, v3}, Lcom/j256/ormlite/dao/ObjectCache;->remove(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 82
    .end local v3    # "id":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    sget-object v1, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "delete-collection with statement \'{}\' and {} args, changed {} rows"

    iget-object v3, p2, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->statement:Ljava/lang/String;

    array-length v4, p3

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 86
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    array-length v1, p3

    if-lez v1, :cond_1

    .line 90
    sget-object v1, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "delete-collection arguments: {}"

    invoke-virtual {v1, v2, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_1
    return v0

    .line 93
    .end local v0    # "rowC":I
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to run delete collection stmt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->statement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method
