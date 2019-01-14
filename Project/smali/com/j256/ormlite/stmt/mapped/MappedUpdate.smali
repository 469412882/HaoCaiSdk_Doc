.class public Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "MappedUpdate.java"


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


# instance fields
.field private final versionFieldType:Lcom/j256/ormlite/field/FieldType;

.field private final versionFieldTypeIndex:I


# direct methods
.method private constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 0
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "versionFieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p5, "versionFieldTypeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Lcom/j256/ormlite/field/FieldType;",
            "I)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedUpdate;, "Lcom/j256/ormlite/stmt/mapped/MappedUpdate<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 25
    iput-object p4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 26
    iput p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldTypeIndex:I

    .line 27
    return-void
.end method

.method public static build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
    .locals 17
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
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdate<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 31
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    move-object/from16 v0, p0

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    .line 32
    .local v1, "idField":Lcom/j256/ormlite/field/FieldType;
    if-nez v1, :cond_0

    .line 33
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because it doesn\'t have an id field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "UPDATE "

    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v3, 0x1

    .line 38
    .local v3, "first":Z
    const/4 v4, 0x0

    .line 39
    .local v4, "argFieldC":I
    const/4 v5, 0x0

    .line 40
    .local v5, "versionFieldType":Lcom/j256/ormlite/field/FieldType;
    const/4 v6, -0x1

    .line 42
    .local v6, "versionFieldTypeIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    move/from16 v16, v6

    move-object v6, v5

    move v5, v4

    const/4 v4, 0x0

    .line 42
    .end local v4    # "argFieldC":I
    .local v5, "argFieldC":I
    .local v6, "versionFieldType":Lcom/j256/ormlite/field/FieldType;
    .local v16, "versionFieldTypeIndex":I
    :goto_0
    if-ge v4, v8, :cond_3

    aget-object v10, v7, v4

    .line 43
    .local v10, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-static {v10, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 44
    invoke-virtual {v10}, Lcom/j256/ormlite/field/FieldType;->isVersion()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 45
    move-object v6, v10

    .line 46
    move/from16 v16, v5

    .line 48
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 42
    .end local v10    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 52
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 53
    if-eqz v6, :cond_4

    .line 55
    add-int/lit8 v5, v5, 0x1

    .line 57
    :cond_4
    new-array v4, v5, [Lcom/j256/ormlite/field/FieldType;

    .line 58
    .local v4, "argFieldTypes":[Lcom/j256/ormlite/field/FieldType;
    const/4 v5, 0x0

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v7

    array-length v8, v7

    :goto_1
    const/4 v10, 0x0

    if-ge v9, v8, :cond_7

    aget-object v11, v7, v9

    .line 60
    .local v11, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-static {v11, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 61
    goto :goto_3

    .line 63
    :cond_5
    if-eqz v3, :cond_6

    .line 64
    const-string v12, "SET "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v3, 0x0

    goto :goto_2

    .line 67
    :cond_6
    const-string v12, ", "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_2
    invoke-static {v0, v2, v11, v10}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 70
    add-int/lit8 v10, v5, 0x1

    .line 70
    .local v10, "argFieldC":I
    aput-object v11, v4, v5

    .line 71
    .end local v5    # "argFieldC":I
    const-string v5, "= ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .end local v11    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    move v5, v10

    .line 59
    .end local v10    # "argFieldC":I
    .restart local v5    # "argFieldC":I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 73
    :cond_7
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v0, v1, v2, v10}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendWhereFieldEq(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 75
    add-int/lit8 v7, v5, 0x1

    .line 75
    .local v7, "argFieldC":I
    aput-object v1, v4, v5

    .line 76
    .end local v5    # "argFieldC":I
    if-eqz v6, :cond_8

    .line 77
    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {v0, v2, v6, v10}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 79
    const-string v5, "= ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v5, v7, 0x1

    .line 80
    .restart local v5    # "argFieldC":I
    aput-object v6, v4, v7

    .line 80
    .end local v7    # "argFieldC":I
    goto :goto_4

    .line 82
    .end local v5    # "argFieldC":I
    .restart local v7    # "argFieldC":I
    :cond_8
    move v5, v7

    .line 82
    .end local v7    # "argFieldC":I
    .restart local v5    # "argFieldC":I
    :goto_4
    new-instance v7, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v10, v7

    move-object/from16 v11, p1

    move-object v13, v4

    move-object v14, v6

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;I)V

    return-object v7
.end method

.method private static isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z
    .locals 1
    .param p0, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p1, "idField"    # Lcom/j256/ormlite/field/FieldType;

    .line 134
    if-eq p0, p1, :cond_1

    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 11
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

    .line 91
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedUpdate;, "Lcom/j256/ormlite/stmt/mapped/MappedUpdate<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 92
    return v2

    .line 94
    :cond_0
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->getFieldObjects(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 96
    .local v1, "newVersion":Ljava/lang/Object;
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 98
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3, v1}, Lcom/j256/ormlite/field/FieldType;->moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 99
    iget v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldTypeIndex:I

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4, v1}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, v3, v0, v4}, Lcom/j256/ormlite/support/DatabaseConnection;->update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I

    move-result v3

    .line 102
    .local v3, "rowC":I
    if-lez v3, :cond_4

    .line 103
    if-eqz v1, :cond_2

    .line 105
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v1, v2, v5}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 107
    :cond_2
    if-eqz p3, :cond_4

    .line 109
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 110
    .local v4, "id":Ljava/lang/Object;
    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->clazz:Ljava/lang/Class;

    invoke-interface {p3, v5, v4}, Lcom/j256/ormlite/dao/ObjectCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 111
    .local v5, "cachedData":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_4

    if-eq v5, p2, :cond_4

    .line 113
    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v6}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 114
    .local v9, "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-object v10, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->idField:Lcom/j256/ormlite/field/FieldType;

    if-eq v9, v10, :cond_3

    .line 115
    invoke-virtual {v9, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v5, v10, v2, p3}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 113
    .end local v9    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 122
    .end local v4    # "id":Ljava/lang/Object;
    .end local v5    # "cachedData":Ljava/lang/Object;, "TT;"
    :cond_4
    sget-object v2, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "update data with statement \'{}\' and {} args, changed {} rows"

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    array-length v2, v0

    if-lez v2, :cond_5

    .line 125
    sget-object v2, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "update arguments: {}"

    invoke-virtual {v2, v4, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_5
    return v3

    .line 128
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "newVersion":Ljava/lang/Object;
    .end local v3    # "rowC":I
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to run update stmt on object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method
