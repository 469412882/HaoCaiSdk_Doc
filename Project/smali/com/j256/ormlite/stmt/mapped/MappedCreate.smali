.class public Lcom/j256/ormlite/stmt/mapped/MappedCreate;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "MappedCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;
    }
.end annotation

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
.field private dataClassName:Ljava/lang/String;

.field private final queryNextSequenceStmt:Ljava/lang/String;

.field private versionFieldTypeIndex:I


# direct methods
.method private constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)V
    .locals 1
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "queryNextSequenceStmt"    # Ljava/lang/String;
    .param p5, "versionFieldTypeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedCreate;, "Lcom/j256/ormlite/stmt/mapped/MappedCreate<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 28
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->dataClassName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->queryNextSequenceStmt:Ljava/lang/String;

    .line 30
    iput p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    .line 31
    return-void
.end method

.method private assignIdValue(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 5
    .param p2, "val"    # Ljava/lang/Number;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Number;",
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

    .line 252
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedCreate;, "Lcom/j256/ormlite/stmt/mapped/MappedCreate<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, p1, p2, p4}, Lcom/j256/ormlite/field/FieldType;->assignIdValue(Ljava/lang/Object;Ljava/lang/Number;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/logger/Logger;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "assigned id \'{}\' from {} to \'{}\' in {} object"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    .line 255
    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getFieldName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->dataClassName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_0
    return-void
.end method

.method private assignSequenceId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 6
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedCreate;, "Lcom/j256/ormlite/stmt/mapped/MappedCreate<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->queryNextSequenceStmt:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 242
    .local v0, "seqVal":J
    sget-object v2, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "queried for sequence {} using stmt: {}"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->queryNextSequenceStmt:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 245
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should not have returned 0 for stmt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->queryNextSequenceStmt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "sequence"

    invoke-direct {p0, p2, v2, v3, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->assignIdValue(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V

    .line 248
    return-void
.end method

.method public static build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedCreate;
    .locals 13
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
            "Lcom/j256/ormlite/stmt/mapped/MappedCreate<",
            "TT;TID;>;"
        }
    .end annotation

    .line 143
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "INSERT INTO "

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "argFieldC":I
    const/4 v2, -0x1

    .line 148
    .local v2, "versionFieldTypeIndex":I
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v12, v2

    move v2, v1

    const/4 v1, 0x0

    .line 148
    .end local v1    # "argFieldC":I
    .local v2, "argFieldC":I
    .local v12, "versionFieldTypeIndex":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v6, v3, v1

    .line 149
    .local v6, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-static {p0, v6}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->isFieldCreatable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 150
    invoke-virtual {v6}, Lcom/j256/ormlite/field/FieldType;->isVersion()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 151
    move v12, v2

    .line 153
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 148
    .end local v6    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    new-array v1, v2, [Lcom/j256/ormlite/field/FieldType;

    .line 157
    .local v1, "argFieldTypes":[Lcom/j256/ormlite/field/FieldType;
    if-nez v2, :cond_3

    .line 158
    invoke-interface {p0, v0}, Lcom/j256/ormlite/db/DatabaseType;->appendInsertNoColumns(Ljava/lang/StringBuilder;)V

    goto :goto_7

    .line 160
    :cond_3
    const/4 v2, 0x0

    .line 161
    const/4 v3, 0x1

    .line 162
    .local v3, "first":Z
    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    array-length v6, v4

    move v7, v2

    const/4 v2, 0x0

    .line 163
    .end local v2    # "argFieldC":I
    .local v7, "argFieldC":I
    :goto_1
    const/16 v8, 0x2c

    if-ge v2, v6, :cond_6

    aget-object v9, v4, v2

    .line 164
    .local v9, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-static {p0, v9}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->isFieldCreatable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 165
    goto :goto_3

    .line 167
    :cond_4
    if-eqz v3, :cond_5

    .line 168
    const/4 v3, 0x0

    goto :goto_2

    .line 170
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    :goto_2
    const/4 v8, 0x0

    invoke-static {p0, v0, v9, v8}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 173
    add-int/lit8 v8, v7, 0x1

    .line 173
    .local v8, "argFieldC":I
    aput-object v9, v1, v7

    .line 163
    .end local v7    # "argFieldC":I
    .end local v9    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    move v7, v8

    .line 163
    .end local v8    # "argFieldC":I
    .restart local v7    # "argFieldC":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    :cond_6
    const-string v2, ") VALUES ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/4 v2, 0x1

    .line 177
    .end local v3    # "first":Z
    .local v2, "first":Z
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    array-length v4, v3

    :goto_4
    if-ge v5, v4, :cond_9

    aget-object v6, v3, v5

    .line 178
    .restart local v6    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-static {p0, v6}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->isFieldCreatable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 179
    goto :goto_6

    .line 181
    :cond_7
    if-eqz v2, :cond_8

    .line 182
    const/4 v2, 0x0

    goto :goto_5

    .line 184
    :cond_8
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    :goto_5
    const/16 v9, 0x3f

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .end local v6    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 188
    :cond_9
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .end local v2    # "first":Z
    move v2, v7

    .line 190
    .end local v7    # "argFieldC":I
    .local v2, "argFieldC":I
    :goto_7
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    .line 191
    .local v3, "idField":Lcom/j256/ormlite/field/FieldType;
    invoke-static {p0, v3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->buildQueryNextSequence(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "queryNext":Ljava/lang/String;
    new-instance v5, Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v5

    move-object v7, p1

    move-object v9, v1

    move-object v10, v4

    move v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)V

    return-object v5
.end method

.method private static buildQueryNextSequence(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;
    .locals 3
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "idField"    # Lcom/j256/ormlite/field/FieldType;

    .line 225
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 226
    return-object v0

    .line 228
    :cond_0
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "seqName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 230
    return-object v0

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 233
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0, v0, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendSelectNextValFromSequence(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private foreignCollectionsAreAssigned([Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "foreignCollections"    # [Lcom/j256/ormlite/field/FieldType;
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedCreate;, "Lcom/j256/ormlite/stmt/mapped/MappedCreate<TT;TID;>;"
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 197
    .local v3, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v3, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 198
    return v1

    .line 196
    .end local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static isFieldCreatable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z
    .locals 3
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .line 206
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 208
    return v1

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    return v1

    .line 212
    :cond_1
    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isIdSequenceNeeded()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isSelectSequenceBeforeInsert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    return v2

    .line 215
    :cond_2
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isSelfGeneratedId()Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isAllowGeneratedIdInsert()Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    return v1

    .line 220
    :cond_3
    return v2
.end method


# virtual methods
.method public insert(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 11
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
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

    .line 38
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedCreate;, "Lcom/j256/ormlite/stmt/mapped/MappedCreate<TT;TID;>;"
    .local p3, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 39
    .local v0, "keyHolder":Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 41
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isAllowGeneratedIdInsert()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v1, p3}, Lcom/j256/ormlite/field/FieldType;->isObjectsFieldValueDefault(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 42
    .local v1, "assignId":Z
    goto :goto_0

    .line 44
    .end local v1    # "assignId":Z
    :cond_0
    const/4 v1, 0x1

    .line 46
    .restart local v1    # "assignId":Z
    :goto_0
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->isSelfGeneratedId()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->generateId()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p3, v5, v3, p4}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    goto :goto_1

    .line 50
    :cond_1
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->isGeneratedIdSequence()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/j256/ormlite/db/DatabaseType;->isSelectSequenceBeforeInsert()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    if-eqz v1, :cond_3

    .line 52
    invoke-direct {p0, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->assignSequenceId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)V

    goto :goto_1

    .line 54
    :cond_2
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    if-eqz v1, :cond_3

    .line 57
    new-instance v4, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;

    invoke-direct {v4, v2}, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;-><init>(Lcom/j256/ormlite/stmt/mapped/MappedCreate$1;)V

    move-object v0, v4

    .line 66
    .end local v1    # "assignId":Z
    :cond_3
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->isForeignAutoCreate()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 67
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v6, v1, v5

    .line 68
    .local v6, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v6}, Lcom/j256/ormlite/field/FieldType;->isForeignAutoCreate()Z

    move-result v7

    if-nez v7, :cond_4

    .line 69
    goto :goto_3

    .line 72
    :cond_4
    invoke-virtual {v6, p3}, Lcom/j256/ormlite/field/FieldType;->extractRawJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 73
    .local v7, "foreignObj":Ljava/lang/Object;
    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/j256/ormlite/field/FieldType;->getForeignIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/j256/ormlite/field/FieldType;->isObjectsFieldValueDefault(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 74
    invoke-virtual {v6, v7}, Lcom/j256/ormlite/field/FieldType;->createWithForeignDao(Ljava/lang/Object;)I

    .line 67
    .end local v6    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v7    # "foreignObj":Ljava/lang/Object;
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 79
    :cond_6
    invoke-virtual {p0, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->getFieldObjects(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 82
    .local v4, "versionDefaultValue":Ljava/lang/Object;
    iget v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    if-ltz v5, :cond_7

    iget v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    aget-object v5, v1, v5

    if-nez v5, :cond_7

    .line 84
    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    iget v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    aget-object v5, v5, v6

    .line 85
    .local v5, "versionFieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v5, v2}, Lcom/j256/ormlite/field/FieldType;->moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 86
    iget v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    invoke-virtual {v5, v4}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, v6
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .end local v5    # "versionFieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->statement:Ljava/lang/String;

    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p2, v5, v1, v6, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->insert(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/GeneratedKeyHolder;)I

    move-result v5
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .local v5, "rowC":I
    nop

    .line 100
    nop

    .line 102
    :try_start_2
    sget-object v6, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v7, "insert data with statement \'{}\' and {} args, changed {} rows"

    iget-object v8, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->statement:Ljava/lang/String;

    array-length v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    array-length v6, v1

    if-lez v6, :cond_8

    .line 105
    sget-object v6, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v7, "insert arguments: {}"

    invoke-virtual {v6, v7, v1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    :cond_8
    if-lez v5, :cond_d

    .line 108
    if-eqz v4, :cond_9

    .line 109
    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    iget v7, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v6, p3, v4, v3, v2}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 111
    :cond_9
    if-eqz v0, :cond_c

    .line 113
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;->getKey()Ljava/lang/Number;

    move-result-object v2

    .line 114
    .local v2, "key":Ljava/lang/Number;
    if-nez v2, :cond_a

    .line 116
    new-instance v3, Ljava/sql/SQLException;

    const-string v6, "generated-id key was not set by the update call, maybe a schema mismatch between entity and database table?"

    invoke-direct {v3, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_b

    .line 121
    new-instance v3, Ljava/sql/SQLException;

    const-string v6, "generated-id key must not be 0 value, maybe a schema mismatch between entity and database table?"

    invoke-direct {v3, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_b
    const-string v3, "keyholder"

    invoke-direct {p0, p3, v2, v3, p4}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->assignIdValue(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V

    .line 130
    .end local v2    # "key":Ljava/lang/Number;
    :cond_c
    if-eqz p4, :cond_d

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getForeignCollections()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->foreignCollectionsAreAssigned([Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 131
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v2, p3}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 132
    .local v2, "id":Ljava/lang/Object;
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->clazz:Ljava/lang/Class;

    invoke-interface {p4, v3, v2, p3}, Lcom/j256/ormlite/dao/ObjectCache;->put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .end local v2    # "id":Ljava/lang/Object;
    :cond_d
    return v5

    .line 92
    .end local v5    # "rowC":I
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/sql/SQLException;
    sget-object v3, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v5, "insert data with statement \'{}\' and {} args, threw exception: {}"

    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->statement:Ljava/lang/String;

    array-length v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7, v2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    array-length v3, v1

    if-lez v3, :cond_e

    .line 98
    sget-object v3, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v5, "insert arguments: {}"

    invoke-virtual {v3, v5, v1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_e
    throw v2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/sql/SQLException;
    .end local v4    # "versionDefaultValue":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 138
    .local v1, "e":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to run insert stmt on object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->statement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method
