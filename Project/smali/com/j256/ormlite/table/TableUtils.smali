.class public Lcom/j256/ormlite/table/TableUtils;
.super Ljava/lang/Object;
.source "TableUtils.java"


# static fields
.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static final noFieldTypes:[Lcom/j256/ormlite/field/FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/j256/ormlite/table/TableUtils;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/table/TableUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    sput-object v0, Lcom/j256/ormlite/table/TableUtils;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static addCreateIndexStatements(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;ZZ)V
    .locals 9
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p3, "ifNotExists"    # Z
    .param p4, "unique"    # Z
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 312
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v0, "indexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 315
    .local v5, "fieldType":Lcom/j256/ormlite/field/FieldType;
    if-eqz p4, :cond_0

    .line 316
    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->getUniqueIndexName()Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "indexName":Ljava/lang/String;
    goto :goto_1

    .line 318
    .end local v6    # "indexName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->getIndexName()Ljava/lang/String;

    move-result-object v6

    .line 320
    .restart local v6    # "indexName":Ljava/lang/String;
    :goto_1
    if-nez v6, :cond_1

    .line 321
    goto :goto_2

    .line 324
    :cond_1
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 325
    .local v7, "columnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_2

    .line 326
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 327
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_2
    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v5    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v6    # "indexName":Ljava/lang/String;
    .end local v7    # "columnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 332
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 333
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 334
    .local v4, "indexEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v5, Lcom/j256/ormlite/table/TableUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v6, "creating index \'{}\' for table \'{}"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    const-string v5, "CREATE "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    if-eqz p4, :cond_4

    .line 337
    const-string v5, "UNIQUE "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_4
    const-string v5, "INDEX "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    if-eqz p3, :cond_5

    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isCreateIndexIfNotExistsSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 341
    const-string v5, "IF NOT EXISTS "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p0, v1, v5}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 344
    const-string v5, " ON "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v1, v5}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 346
    const-string v5, " ( "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const/4 v5, 0x1

    .line 348
    .local v5, "first":Z
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 349
    .local v7, "columnName":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 350
    const/4 v5, 0x0

    goto :goto_5

    .line 352
    :cond_6
    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :goto_5
    invoke-interface {p0, v1, v7}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 355
    .end local v7    # "columnName":Ljava/lang/String;
    goto :goto_4

    .line 356
    :cond_7
    const-string v6, " )"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 359
    .end local v4    # "indexEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "first":Z
    goto/16 :goto_3

    .line 360
    :cond_8
    return-void
.end method

.method private static addCreateTableStatements(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)Ljava/util/List;
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "ifNotExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 473
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v0, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v1, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v2

    invoke-static {v2, p1, v0, v1, p2}, Lcom/j256/ormlite/table/TableUtils;->addCreateTableStatements(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;Ljava/util/List;Z)V

    .line 476
    return-object v0
.end method

.method private static addCreateTableStatements(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;Ljava/util/List;Z)V
    .locals 21
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p4, "ifNotExists"    # Z
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 484
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 484
    move/from16 v11, p4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v12, v0

    .line 485
    .local v12, "sb":Ljava/lang/StringBuilder;
    const-string v0, "CREATE TABLE "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    if-eqz v11, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/j256/ormlite/db/DatabaseType;->isCreateIfNotExistsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "IF NOT EXISTS "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v12, v0}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 490
    const-string v0, " ("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 492
    .local v13, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 493
    .local v14, "statementsBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 495
    .local v15, "statementsAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 496
    .local v0, "first":Z
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v7

    array-length v6, v7

    const/4 v5, 0x0

    move/from16 v16, v0

    const/4 v4, 0x0

    .line 496
    .end local v0    # "first":Z
    .local v16, "first":Z
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v3, v7, v4

    .line 498
    .local v3, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    nop

    .line 496
    move/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v20, v7

    goto :goto_2

    .line 500
    :cond_1
    if-eqz v16, :cond_2

    .line 501
    const/16 v16, 0x0

    goto :goto_1

    .line 503
    :cond_2
    const-string v0, ", "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :goto_1
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getColumnDefinition()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "columnDefinition":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v8

    move-object v11, v2

    move-object v2, v12

    .line 508
    .end local v2    # "columnDefinition":Ljava/lang/String;
    .local v11, "columnDefinition":Ljava/lang/String;
    move-object/from16 v17, v3

    .line 508
    .end local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .local v17, "fieldType":Lcom/j256/ormlite/field/FieldType;
    move/from16 v18, v4

    move-object v4, v13

    move-object v5, v14

    move/from16 v19, v6

    move-object v6, v15

    move-object/from16 v20, v7

    move-object/from16 v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/j256/ormlite/db/DatabaseType;->appendColumnArg(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 512
    .end local v11    # "columnDefinition":Ljava/lang/String;
    .end local v17    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .restart local v2    # "columnDefinition":Ljava/lang/String;
    .restart local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_3
    move-object v11, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v20, v7

    .line 512
    .end local v2    # "columnDefinition":Ljava/lang/String;
    .end local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .restart local v11    # "columnDefinition":Ljava/lang/String;
    .restart local v17    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    move-object/from16 v0, v17

    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v1

    .line 512
    .end local v17    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .local v0, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-interface {v8, v12, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 513
    const/16 v1, 0x20

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    .end local v0    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v11    # "columnDefinition":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v18, 0x1

    move/from16 v6, v19

    move-object/from16 v7, v20

    const/4 v5, 0x0

    move/from16 v11, p4

    goto :goto_0

    .line 517
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    move-object v0, v8

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/j256/ormlite/db/DatabaseType;->addPrimaryKeySql([Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 520
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    invoke-interface/range {v0 .. v5}, Lcom/j256/ormlite/db/DatabaseType;->addUniqueComboSql([Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 522
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 524
    .local v1, "arg":Ljava/lang/String;
    const-string v2, ", "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .end local v1    # "arg":Ljava/lang/String;
    goto :goto_3

    .line 526
    :cond_5
    const-string v0, ") "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-interface {v8, v12}, Lcom/j256/ormlite/db/DatabaseType;->appendCreateTableSuffix(Ljava/lang/StringBuilder;)V

    .line 528
    invoke-interface {v10, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 529
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-interface {v10, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 531
    move/from16 v0, p4

    const/4 v1, 0x0

    invoke-static {v8, v9, v10, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->addCreateIndexStatements(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;ZZ)V

    .line 532
    const/4 v1, 0x1

    invoke-static {v8, v9, v10, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->addCreateIndexStatements(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;ZZ)V

    .line 533
    return-void
.end method

.method private static addDropIndexStatements(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;)V
    .locals 8
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
            "TT;TID;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 288
    .local v0, "indexSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 289
    .local v5, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->getIndexName()Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, "indexName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 291
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->getUniqueIndexName()Ljava/lang/String;

    move-result-object v7

    .line 294
    .local v7, "uniqueIndexName":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 295
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v5    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v6    # "indexName":Ljava/lang/String;
    .end local v7    # "uniqueIndexName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 301
    .local v4, "indexName":Ljava/lang/String;
    sget-object v5, Lcom/j256/ormlite/table/TableUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v6, "dropping index \'{}\' for table \'{}"

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v4, v7}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    const-string v5, "DROP INDEX "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-interface {p0, v1, v4}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 306
    .end local v4    # "indexName":Ljava/lang/String;
    goto :goto_1

    .line 307
    :cond_3
    return-void
.end method

.method private static addDropTableStatements(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;)V
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
            "TT;TID;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 367
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v0, "statementsBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v1, "statementsAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 370
    .local v5, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-interface {p0, v5, v0, v1}, Lcom/j256/ormlite/db/DatabaseType;->dropColumnArg(Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;)V

    .line 369
    .end local v5    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 372
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "DROP TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 375
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 379
    return-void
.end method

.method public static clearTable(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)I
    .locals 1
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 243
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 225
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    .line 226
    .local v0, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    invoke-static {v0, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "tableName":Ljava/lang/String;
    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isEntityNamesMustBeUpCase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-interface {v0, v1}, Lcom/j256/ormlite/db/DatabaseType;->upCaseEntityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    :cond_0
    invoke-static {p0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;)I
    .locals 11
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 247
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    .line 248
    .local v0, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isTruncateSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const-string v2, "TRUNCATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 252
    :cond_0
    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "statement":Ljava/lang/String;
    sget-object v3, Lcom/j256/ormlite/table/TableUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "clearing table \'{}\' with \'{}"

    invoke-virtual {v3, v4, p1, v2}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    const/4 v9, 0x0

    .line 258
    .local v9, "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    invoke-interface {p0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v3

    move-object v10, v3

    .line 260
    .local v10, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    sget-object v5, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->EXECUTE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v6, Lcom/j256/ormlite/table/TableUtils;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v3

    move-object v9, v3

    .line 262
    invoke-interface {v9}, Lcom/j256/ormlite/support/CompiledStatement;->runExecute()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    const-string v4, "compiled statement"

    invoke-static {v9, v4}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 265
    invoke-interface {p0, v10}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 262
    return v3

    .line 264
    :catchall_0
    move-exception v3

    const-string v4, "compiled statement"

    invoke-static {v9, v4}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 265
    invoke-interface {p0, v10}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v3
.end method

.method public static createTable(Lcom/j256/ormlite/dao/Dao;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    .local p0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/j256/ormlite/table/TableUtils;->doCreateTable(Lcom/j256/ormlite/dao/Dao;Z)I

    move-result v0

    return v0
.end method

.method public static createTable(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)I
    .locals 2
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 90
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 91
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->doCreateTable(Lcom/j256/ormlite/dao/Dao;Z)I

    move-result v1

    return v1
.end method

.method public static createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    .locals 2
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 54
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 55
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->doCreateTable(Lcom/j256/ormlite/dao/Dao;Z)I

    move-result v1

    return v1
.end method

.method public static createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)I
    .locals 2
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 99
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 100
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->doCreateTable(Lcom/j256/ormlite/dao/Dao;Z)I

    move-result v1

    return v1
.end method

.method public static createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    .locals 2
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 74
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 75
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->doCreateTable(Lcom/j256/ormlite/dao/Dao;Z)I

    move-result v1

    return v1
.end method

.method private static doCreateTable(Lcom/j256/ormlite/dao/Dao;Z)I
    .locals 4
    .param p1, "ifNotExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 382
    .local p0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    instance-of v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/j256/ormlite/table/TableUtils;->doCreateTable(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I

    move-result v0

    return v0

    .line 385
    :cond_0
    new-instance v0, Lcom/j256/ormlite/table/TableInfo;

    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Class;)V

    .line 386
    .local v0, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/j256/ormlite/table/TableUtils;->doCreateTable(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I

    move-result v1

    return v1
.end method

.method private static doCreateTable(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I
    .locals 10
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "ifNotExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 392
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    .line 393
    .local v0, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    sget-object v1, Lcom/j256/ormlite/table/TableUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "creating table \'{}\'"

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v1, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    .line 396
    .local v8, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, p1, v1, v8, p2}, Lcom/j256/ormlite/table/TableUtils;->addCreateTableStatements(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;Ljava/util/List;Z)V

    .line 397
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v2

    move-object v9, v2

    .line 399
    .local v9, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    const-string v3, "create"

    const/4 v5, 0x0

    .line 400
    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isCreateTableReturnsNegative()Z

    move-result v6

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isCreateTableReturnsZero()Z

    move-result v7

    .line 399
    move-object v2, v9

    move-object v4, v1

    invoke-static/range {v2 .. v7}, Lcom/j256/ormlite/table/TableUtils;->doStatements(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/util/Collection;ZZZ)I

    move-result v2

    .line 401
    .local v2, "stmtC":I
    invoke-static {v9, v0, v8}, Lcom/j256/ormlite/table/TableUtils;->doCreateTestQueries(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/db/DatabaseType;Ljava/util/List;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    .line 402
    nop

    .line 404
    invoke-interface {p0, v9}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 402
    return v2

    .line 404
    .end local v2    # "stmtC":I
    :catchall_0
    move-exception v2

    invoke-interface {p0, v9}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v2
.end method

.method private static doCreateTestQueries(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/db/DatabaseType;Ljava/util/List;)I
    .locals 11
    .param p0, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 444
    .local p2, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 446
    .local v0, "stmtC":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 447
    .local v2, "query":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v10, v9

    .line 449
    .local v10, "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v5, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v6, Lcom/j256/ormlite/table/TableUtils;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v3

    move-object v10, v3

    .line 452
    invoke-interface {v10, v9}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v3

    .line 453
    .local v3, "results":Lcom/j256/ormlite/support/DatabaseResults;
    const/4 v4, 0x0

    .line 455
    .local v4, "rowC":I
    invoke-interface {v3}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v5

    .line 455
    .local v5, "isThereMore":Z
    :goto_1
    if-eqz v5, :cond_0

    .line 456
    add-int/lit8 v4, v4, 0x1

    .line 455
    invoke-interface {v3}, Lcom/j256/ormlite/support/DatabaseResults;->next()Z

    move-result v6

    move v5, v6

    goto :goto_1

    .line 458
    .end local v5    # "isThereMore":Z
    :cond_0
    sget-object v5, Lcom/j256/ormlite/table/TableUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v6, "executing create table after-query got {} results: {}"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .end local v3    # "results":Lcom/j256/ormlite/support/DatabaseResults;
    .end local v4    # "rowC":I
    const-string v3, "compiled statement"

    invoke-static {v10, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 465
    nop

    .line 466
    add-int/lit8 v0, v0, 0x1

    .line 467
    .end local v2    # "query":Ljava/lang/String;
    .end local v10    # "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    goto :goto_0

    .line 464
    .restart local v2    # "query":Ljava/lang/String;
    .restart local v10    # "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 459
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executing create table after-query failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    .end local v1    # "e":Ljava/sql/SQLException;
    :goto_2
    const-string v3, "compiled statement"

    invoke-static {v10, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1

    .line 468
    .end local v2    # "query":Ljava/lang/String;
    .end local v10    # "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    :cond_1
    return v0
.end method

.method private static doDropTable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I
    .locals 8
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "ignoreErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 271
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/table/TableUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "dropping table \'{}\'"

    invoke-virtual {p2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2, v0}, Lcom/j256/ormlite/table/TableUtils;->addDropIndexStatements(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;)V

    .line 274
    invoke-static {p0, p2, v0}, Lcom/j256/ormlite/table/TableUtils;->addDropTableStatements(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;)V

    .line 275
    invoke-virtual {p2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    move-object v7, v1

    .line 277
    .local v7, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    const-string v2, "drop"

    .line 278
    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isCreateTableReturnsNegative()Z

    move-result v5

    const/4 v6, 0x0

    .line 277
    move-object v1, v7

    move-object v3, v0

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/j256/ormlite/table/TableUtils;->doStatements(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/util/Collection;ZZZ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-interface {p1, v7}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 277
    return v1

    .line 280
    :catchall_0
    move-exception v1

    invoke-interface {p1, v7}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method private static doStatements(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/util/Collection;ZZZ)I
    .locals 13
    .param p0, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p1, "label"    # Ljava/lang/String;
    .param p3, "ignoreErrors"    # Z
    .param p4, "returnsNegative"    # Z
    .param p5, "expectingZero"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;ZZZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 410
    .local p2, "statements":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v1, p1

    .line 410
    const/4 v2, 0x0

    .line 411
    .local v2, "stmtC":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 412
    .local v4, "statement":Ljava/lang/String;
    const/4 v11, 0x0

    .line 413
    .local v11, "rowC":I
    const/4 v5, 0x0

    move-object v12, v5

    .line 415
    .local v12, "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v7, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->EXECUTE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v8, Lcom/j256/ormlite/table/TableUtils;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v4

    invoke-interface/range {v5 .. v10}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v5

    move-object v12, v5

    .line 417
    invoke-interface {v12}, Lcom/j256/ormlite/support/CompiledStatement;->runExecute()I

    move-result v5

    move v11, v5

    .line 418
    sget-object v5, Lcom/j256/ormlite/table/TableUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v6, "executed {} table statement changed {} rows: {}"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v1, v7, v4}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 426
    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_2

    .line 419
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 420
    .local v5, "e":Ljava/sql/SQLException;
    if-eqz p3, :cond_2

    .line 421
    :try_start_1
    sget-object v7, Lcom/j256/ormlite/table/TableUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v8, "ignoring {} error \'{}\' for statement: {}"

    invoke-virtual {v7, v8, v1, v5, v4}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    .end local v5    # "e":Ljava/sql/SQLException;
    :goto_1
    const-string v5, "compiled statement"

    invoke-static {v12, v5}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 427
    nop

    .line 429
    if-gez v11, :cond_0

    .line 430
    if-nez p4, :cond_1

    .line 431
    new-instance v3, Ljava/sql/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQL statement "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " updated "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " rows, we were expecting >= 0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    :cond_0
    if-lez v11, :cond_1

    if-eqz p5, :cond_1

    .line 435
    new-instance v3, Ljava/sql/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQL statement updated "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " rows, we were expecting == 0: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 437
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 438
    .end local v4    # "statement":Ljava/lang/String;
    .end local v11    # "rowC":I
    .end local v12    # "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    goto/16 :goto_0

    .line 423
    .restart local v4    # "statement":Ljava/lang/String;
    .restart local v5    # "e":Ljava/sql/SQLException;
    .restart local v11    # "rowC":I
    .restart local v12    # "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQL statement failed: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    .end local v5    # "e":Ljava/sql/SQLException;
    :goto_2
    const-string v5, "compiled statement"

    invoke-static {v12, v5}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v3

    .line 439
    .end local v4    # "statement":Ljava/lang/String;
    .end local v11    # "rowC":I
    .end local v12    # "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    :cond_3
    return v2
.end method

.method public static dropTable(Lcom/j256/ormlite/dao/Dao;Z)I
    .locals 5
    .param p1, "ignoreErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 176
    .local p0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    .line 177
    .local v0, "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    .line 178
    .local v1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v2

    .line 179
    .local v2, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    instance-of v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v3, :cond_0

    .line 180
    move-object v3, p0

    check-cast v3, Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v3}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v3

    invoke-static {v2, v0, v3, p1}, Lcom/j256/ormlite/table/TableUtils;->doDropTable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I

    move-result v3

    return v3

    .line 182
    :cond_0
    new-instance v3, Lcom/j256/ormlite/table/TableInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Class;)V

    .line 183
    .local v3, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-static {v2, v0, v3, p1}, Lcom/j256/ormlite/table/TableUtils;->doDropTable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I

    move-result v4

    return v4
.end method

.method public static dropTable(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;Z)I
    .locals 4
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "ignoreErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 205
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    .line 206
    .local v0, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 207
    .local v1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    instance-of v2, v1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v2, :cond_0

    .line 208
    move-object v2, v1

    check-cast v2, Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v2}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v2

    invoke-static {v0, p0, v2, p2}, Lcom/j256/ormlite/table/TableUtils;->doDropTable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I

    move-result v2

    return v2

    .line 210
    :cond_0
    invoke-virtual {p1, p0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 211
    new-instance v2, Lcom/j256/ormlite/table/TableInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 212
    .local v2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-static {v0, p0, v2, p2}, Lcom/j256/ormlite/table/TableUtils;->doDropTable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I

    move-result v3

    return v3
.end method

.method public static dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    .locals 2
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "ignoreErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 164
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 165
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-static {v0, p2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/dao/Dao;Z)I

    move-result v1

    return v1
.end method

.method public static getCreateTableStatements(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Ljava/util/List;
    .locals 5
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 137
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 138
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    instance-of v1, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 139
    move-object v1, v0

    check-cast v1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->addCreateTableStatements(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 141
    :cond_0
    invoke-virtual {p1, p0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 142
    new-instance v1, Lcom/j256/ormlite/table/TableInfo;

    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, p1}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 143
    .local v1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-static {p0, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->addCreateTableStatements(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getCreateTableStatements(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 115
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 116
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    instance-of v1, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 117
    move-object v1, v0

    check-cast v1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->addCreateTableStatements(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 119
    :cond_0
    new-instance v1, Lcom/j256/ormlite/table/TableInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, p1}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Class;)V

    .line 120
    .local v1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-static {p0, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->addCreateTableStatements(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
