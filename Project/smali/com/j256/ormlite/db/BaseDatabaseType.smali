.class public abstract Lcom/j256/ormlite/db/BaseDatabaseType;
.super Ljava/lang/Object;
.source "BaseDatabaseType.java"

# interfaces
.implements Lcom/j256/ormlite/db/DatabaseType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/db/BaseDatabaseType$BooleanNumberFieldConverter;
    }
.end annotation


# static fields
.field protected static DEFAULT_SEQUENCE_SUFFIX:Ljava/lang/String;


# instance fields
.field protected driver:Ljava/sql/Driver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "_id_seq"

    sput-object v0, Lcom/j256/ormlite/db/BaseDatabaseType;->DEFAULT_SEQUENCE_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSingleUnique(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 609
    .local p3, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "statementsAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .local v0, "alterSb":Ljava/lang/StringBuilder;
    const-string v1, " UNIQUE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {p2}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 612
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    return-void
.end method

.method private appendCanBeNull(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .line 602
    return-void
.end method

.method private appendDefaultValue(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "defaultValue"    # Ljava/lang/Object;

    .line 292
    invoke-virtual {p2}, Lcom/j256/ormlite/field/FieldType;->isEscapedDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendEscapedWord(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    :goto_0
    return-void
.end method

.method private appendDoubleType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 264
    const-string v0, "DOUBLE PRECISION"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    return-void
.end method

.method private appendFloatType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 257
    const-string v0, "FLOAT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    return-void
.end method

.method private appendIntegerType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 243
    const-string v0, "INTEGER"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    return-void
.end method


# virtual methods
.method public addPrimaryKeySql([Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "fieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 338
    .local p2, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "statementsBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "statementsAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 339
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 340
    .local v3, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->generatedIdSqlAtEnd()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isSelfGeneratedId()Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    .end local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    goto :goto_2

    .line 342
    .restart local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    if-nez v0, :cond_1

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v4

    .line 345
    const-string v4, "PRIMARY KEY ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 347
    :cond_1
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    :goto_1
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 339
    .end local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_3
    if-eqz v0, :cond_4

    .line 353
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_4
    return-void
.end method

.method public addUniqueComboSql([Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "fieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 369
    .local p2, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "statementsBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "statementsAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 370
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 371
    .local v3, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isUniqueCombo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    if-nez v0, :cond_0

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v4

    .line 374
    const-string v4, "UNIQUE ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 376
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    :goto_1
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 370
    .end local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_2
    if-eqz v0, :cond_3

    .line 382
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_3
    return-void
.end method

.method protected appendBigDecimalNumericType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 285
    const-string v0, "NUMERIC"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    return-void
.end method

.method protected appendBooleanType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 215
    const-string v0, "BOOLEAN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    return-void
.end method

.method protected appendByteArrayType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 271
    const-string v0, "BLOB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    return-void
.end method

.method protected appendByteType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 229
    const-string v0, "TINYINT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    return-void
.end method

.method protected appendCharType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 222
    const-string v0, "CHAR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    return-void
.end method

.method public appendColumnArg(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 62
    .local p4, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "statementsBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "statementsAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 62
    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    const/16 v11, 0x20

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v12

    .line 66
    .local v12, "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->getWidth()I

    move-result v0

    .line 67
    .local v0, "fieldWidth":I
    if-nez v0, :cond_0

    .line 69
    invoke-interface {v12}, Lcom/j256/ormlite/field/DataPersister;->getDefaultWidth()I

    move-result v0

    .line 71
    .end local v0    # "fieldWidth":I
    .local v13, "fieldWidth":I
    :cond_0
    move v13, v0

    sget-object v0, Lcom/j256/ormlite/db/BaseDatabaseType$1;->$SwitchMap$com$j256$ormlite$field$SqlType:[I

    invoke-interface {v12}, Lcom/j256/ormlite/field/DataPersister;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    move-object/from16 v1, p4

    move-object/from16 v2, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown SQL-type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lcom/j256/ormlite/field/DataPersister;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_0
    invoke-interface {v12}, Lcom/j256/ormlite/field/DataPersister;->getSqlOtherType()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "sqlOtherType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    .end local v0    # "sqlOtherType":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendUuidNativeType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 131
    goto :goto_0

    .line 126
    :pswitch_2
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendBigDecimalNumericType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 127
    goto :goto_0

    .line 122
    :pswitch_3
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendSerializableType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 123
    goto :goto_0

    .line 118
    :pswitch_4
    invoke-direct {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendDoubleType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 119
    goto :goto_0

    .line 114
    :pswitch_5
    invoke-direct {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendFloatType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 115
    goto :goto_0

    .line 110
    :pswitch_6
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendLongType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 111
    goto :goto_0

    .line 106
    :pswitch_7
    invoke-direct {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendIntegerType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 107
    goto :goto_0

    .line 102
    :pswitch_8
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendShortType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 103
    goto :goto_0

    .line 98
    :pswitch_9
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendByteArrayType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 99
    goto :goto_0

    .line 94
    :pswitch_a
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendByteType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 95
    goto :goto_0

    .line 90
    :pswitch_b
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendCharType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 91
    goto :goto_0

    .line 86
    :pswitch_c
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendDateType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 87
    goto :goto_0

    .line 82
    :pswitch_d
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendBooleanType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 83
    goto :goto_0

    .line 78
    :pswitch_e
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendLongStringType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 79
    goto :goto_0

    .line 74
    :pswitch_f
    invoke-virtual {v8, v9, v10, v13}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendStringType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    .line 75
    nop

    .line 145
    :cond_1
    :goto_0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->isGeneratedIdSequence()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->isSelfGeneratedId()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/db/BaseDatabaseType;->configureGeneratedIdSequence(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->isSelfGeneratedId()Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    move-object v0, v8

    move-object v1, p1

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/db/BaseDatabaseType;->configureGeneratedId(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->isId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/db/BaseDatabaseType;->configureId(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 160
    :cond_4
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v0

    if-nez v0, :cond_7

    .line 161
    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, "defaultValue":Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 163
    const-string v1, "DEFAULT "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v8, v9, v10, v0}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendDefaultValue(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->isCanBeNull()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    invoke-direct {v8, v9, v10}, Lcom/j256/ormlite/db/BaseDatabaseType;->appendCanBeNull(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;)V

    goto :goto_2

    .line 170
    :cond_6
    const-string v1, "NOT NULL "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/j256/ormlite/field/FieldType;->isUnique()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 173
    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-direct {v8, v9, v10, v1, v2}, Lcom/j256/ormlite/db/BaseDatabaseType;->addSingleUnique(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;)V

    .line 173
    .end local v0    # "defaultValue":Ljava/lang/Object;
    goto :goto_3

    .line 176
    :cond_7
    move-object/from16 v1, p4

    move-object/from16 v2, p6

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public appendCreateTableSuffix(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 486
    return-void
.end method

.method protected appendDateType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 208
    const-string v0, "TIMESTAMP"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    return-void
.end method

.method public appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "name"    # Ljava/lang/String;

    .line 399
    const/16 v0, 0x60

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 401
    .local v1, "dotPos":I
    if-lez v1, :cond_0

    .line 402
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v2, "`.`"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    return-void
.end method

.method public appendEscapedWord(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "word"    # Ljava/lang/String;

    .line 394
    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    return-void
.end method

.method public appendInsertNoColumns(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 592
    const-string v0, "() VALUES ()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    return-void
.end method

.method public appendLimitValue(Ljava/lang/StringBuilder;JLjava/lang/Long;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "limit"    # J
    .param p4, "offset"    # Ljava/lang/Long;

    .line 470
    const-string v0, "LIMIT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    return-void
.end method

.method protected appendLongStringType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 201
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    return-void
.end method

.method protected appendLongType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 250
    const-string v0, "BIGINT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    return-void
.end method

.method public appendOffsetValue(Ljava/lang/StringBuilder;J)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "offset"    # J

    .line 475
    const-string v0, "OFFSET "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    return-void
.end method

.method public appendSelectNextValFromSequence(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "sequenceName"    # Ljava/lang/String;

    .line 481
    return-void
.end method

.method protected appendSerializableType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 278
    const-string v0, "BLOB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    return-void
.end method

.method protected appendShortType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 236
    const-string v0, "SMALLINT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    return-void
.end method

.method protected appendStringType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 182
    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->isVarcharFieldWidthSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "VARCHAR("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 185
    :cond_0
    const-string v0, "VARCHAR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :goto_0
    return-void
.end method

.method protected appendUuidNativeType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .line 194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "UUID is not supported by this database type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected configureGeneratedId(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 320
    .local p4, "statementsBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "statementsAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeneratedId is not supported by database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected configureGeneratedIdSequence(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 307
    .local p3, "statementsBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeneratedIdSequence is not supported by database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected configureId(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 333
    .local p3, "statementsBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public downCaseString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "forceEnglish"    # Z

    .line 532
    if-eqz p2, :cond_0

    .line 533
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 535
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dropColumnArg(Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 390
    .local p2, "statementsBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "statementsAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public extractDatabaseTableConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 587
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateIdSequenceName(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "idFieldType"    # Lcom/j256/ormlite/field/FieldType;

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/j256/ormlite/db/BaseDatabaseType;->DEFAULT_SEQUENCE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->isEntityNamesMustBeUpCase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/db/BaseDatabaseType;->upCaseEntityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 417
    :cond_0
    return-object v0
.end method

.method protected generatedIdSqlAtEnd()Z
    .locals 1

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public getCommentLinePrefix()Ljava/lang/String;
    .locals 1

    .line 423
    const-string v0, "-- "

    return-object v0
.end method

.method public getDataPersister(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/DataPersister;
    .locals 0
    .param p1, "defaultPersister"    # Lcom/j256/ormlite/field/DataPersister;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .line 429
    return-object p1
.end method

.method protected abstract getDriverClassName()Ljava/lang/String;
.end method

.method public getFieldConverter(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/FieldConverter;
    .locals 0
    .param p1, "dataPersister"    # Lcom/j256/ormlite/field/DataPersister;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .line 435
    return-object p1
.end method

.method public getPingStatement()Ljava/lang/String;
    .locals 1

    .line 546
    const-string v0, "SELECT 1"

    return-object v0
.end method

.method public isAllowGeneratedIdInsertSupported()Z
    .locals 1

    .line 576
    const/4 v0, 0x1

    return v0
.end method

.method public isBatchUseTransaction()Z
    .locals 1

    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public isCreateIfNotExistsSupported()Z
    .locals 1

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public isCreateIndexIfNotExistsSupported()Z
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->isCreateIfNotExistsSupported()Z

    move-result v0

    return v0
.end method

.method public isCreateTableReturnsNegative()Z
    .locals 1

    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public isCreateTableReturnsZero()Z
    .locals 1

    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public isEntityNamesMustBeUpCase()Z
    .locals 1

    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public isIdSequenceNeeded()Z
    .locals 1

    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public isLimitAfterSelect()Z
    .locals 1

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public isLimitSqlSupported()Z
    .locals 1

    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public isNestedSavePointsSupported()Z
    .locals 1

    .line 541
    const/4 v0, 0x1

    return v0
.end method

.method public isOffsetLimitArgument()Z
    .locals 1

    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public isOffsetSqlSupported()Z
    .locals 1

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectSequenceBeforeInsert()Z
    .locals 1

    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public isTruncateSupported()Z
    .locals 1

    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public isVarcharFieldWidthSupported()Z
    .locals 1

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method public loadDriver()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->getDriverClassName()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Driver class was not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " database.  Missing jar with class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 51
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDriver(Ljava/sql/Driver;)V
    .locals 0
    .param p1, "driver"    # Ljava/sql/Driver;

    .line 55
    iput-object p1, p0, Lcom/j256/ormlite/db/BaseDatabaseType;->driver:Ljava/sql/Driver;

    .line 56
    return-void
.end method

.method public upCaseEntityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "entityName"    # Ljava/lang/String;

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/j256/ormlite/db/BaseDatabaseType;->upCaseString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upCaseString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "forceEnglish"    # Z

    .line 510
    if-eqz p2, :cond_0

    .line 517
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 523
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
