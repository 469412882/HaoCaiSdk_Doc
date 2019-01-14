.class public Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;
.super Ljava/lang/Object;
.source "DatabaseFieldConfigLoader.java"


# static fields
.field private static final CONFIG_FILE_END_MARKER:Ljava/lang/String; = "# --field-end--"

.field private static final CONFIG_FILE_START_MARKER:Ljava/lang/String; = "# --field-start--"

.field private static final DEFAULT_DATA_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

.field private static final DEFAULT_MAX_EAGER_FOREIGN_COLLECTION_LEVEL:I = 0x1

.field private static final FIELD_NAME_ALLOW_GENERATED_ID_INSERT:Ljava/lang/String; = "allowGeneratedIdInsert"

.field private static final FIELD_NAME_CAN_BE_NULL:Ljava/lang/String; = "canBeNull"

.field private static final FIELD_NAME_COLUMN_DEFINITION:Ljava/lang/String; = "columnDefinition"

.field private static final FIELD_NAME_COLUMN_NAME:Ljava/lang/String; = "columnName"

.field private static final FIELD_NAME_DATA_PERSISTER:Ljava/lang/String; = "dataPersister"

.field private static final FIELD_NAME_DEFAULT_VALUE:Ljava/lang/String; = "defaultValue"

.field private static final FIELD_NAME_FIELD_NAME:Ljava/lang/String; = "fieldName"

.field private static final FIELD_NAME_FOREIGN:Ljava/lang/String; = "foreign"

.field private static final FIELD_NAME_FOREIGN_AUTO_CREATE:Ljava/lang/String; = "foreignAutoCreate"

.field private static final FIELD_NAME_FOREIGN_AUTO_REFRESH:Ljava/lang/String; = "foreignAutoRefresh"

.field private static final FIELD_NAME_FOREIGN_COLLECTION:Ljava/lang/String; = "foreignCollection"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_COLUMN_NAME:Ljava/lang/String; = "foreignCollectionColumnName"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_EAGER:Ljava/lang/String; = "foreignCollectionEager"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_FOREIGN_FIELD_NAME:Ljava/lang/String; = "foreignCollectionForeignFieldName"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_FOREIGN_FIELD_NAME_OLD:Ljava/lang/String; = "foreignCollectionForeignColumnName"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_ORDER_ASCENDING:Ljava/lang/String; = "foreignCollectionOrderAscending"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_ORDER_COLUMN_NAME:Ljava/lang/String; = "foreignCollectionOrderColumnName"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_ORDER_COLUMN_NAME_OLD:Ljava/lang/String; = "foreignCollectionOrderColumn"

.field private static final FIELD_NAME_FOREIGN_COLUMN_NAME:Ljava/lang/String; = "foreignColumnName"

.field private static final FIELD_NAME_FORMAT:Ljava/lang/String; = "format"

.field private static final FIELD_NAME_FULL_COLUMN_DEFINITION:Ljava/lang/String; = "fullColumnDefinition"

.field private static final FIELD_NAME_GENERATED_ID:Ljava/lang/String; = "generatedId"

.field private static final FIELD_NAME_GENERATED_ID_SEQUENCE:Ljava/lang/String; = "generatedIdSequence"

.field private static final FIELD_NAME_ID:Ljava/lang/String; = "id"

.field private static final FIELD_NAME_INDEX:Ljava/lang/String; = "index"

.field private static final FIELD_NAME_INDEX_NAME:Ljava/lang/String; = "indexName"

.field private static final FIELD_NAME_MAX_EAGER_FOREIGN_COLLECTION_LEVEL:Ljava/lang/String; = "foreignCollectionMaxEagerLevel"

.field private static final FIELD_NAME_MAX_EAGER_FOREIGN_COLLECTION_LEVEL_OLD:Ljava/lang/String; = "maxEagerForeignCollectionLevel"

.field private static final FIELD_NAME_MAX_FOREIGN_AUTO_REFRESH_LEVEL:Ljava/lang/String; = "maxForeignAutoRefreshLevel"

.field private static final FIELD_NAME_PERSISTER_CLASS:Ljava/lang/String; = "persisterClass"

.field private static final FIELD_NAME_READ_ONLY:Ljava/lang/String; = "readOnly"

.field private static final FIELD_NAME_THROW_IF_NULL:Ljava/lang/String; = "throwIfNull"

.field private static final FIELD_NAME_UNIQUE:Ljava/lang/String; = "unique"

.field private static final FIELD_NAME_UNIQUE_COMBO:Ljava/lang/String; = "uniqueCombo"

.field private static final FIELD_NAME_UNIQUE_INDEX:Ljava/lang/String; = "uniqueIndex"

.field private static final FIELD_NAME_UNIQUE_INDEX_NAME:Ljava/lang/String; = "uniqueIndexName"

.field private static final FIELD_NAME_UNKNOWN_ENUM_VALUE:Ljava/lang/String; = "unknownEnumValue"

.field private static final FIELD_NAME_USE_GET_SET:Ljava/lang/String; = "useGetSet"

.field private static final FIELD_NAME_VERSION:Ljava/lang/String; = "version"

.field private static final FIELD_NAME_WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_DATA_TYPE:Lcom/j256/ormlite/field/DataType;

    .line 23
    invoke-virtual {v0}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->DEFAULT_DATA_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromReader(Ljava/io/BufferedReader;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 7
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-direct {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 32
    .local v0, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 36
    .local v2, "anything":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .local v3, "line":Ljava/lang/String;
    nop

    .line 38
    nop

    .line 40
    if-nez v3, :cond_1

    .line 41
    goto :goto_1

    .line 44
    :cond_1
    const-string v4, "# --field-end--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 45
    nop

    .line 59
    .end local v3    # "line":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_2

    .line 60
    return-object v0

    .line 63
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 48
    .restart local v3    # "line":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "# --field-start--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 49
    goto :goto_0

    .line 51
    :cond_4
    const-string v4, "="

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    .line 53
    new-instance v1, Ljava/sql/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseFieldConfig reading from stream cannot parse line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_5
    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v0, v5, v6}, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->readField(Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    .line 57
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Could not read DatabaseFieldConfig from stream"

    invoke-static {v3, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method

.method private static readField(Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "config"    # Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 314
    const-string v0, "fieldName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFieldName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 316
    :cond_0
    const-string v0, "columnName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 318
    :cond_1
    const-string v0, "dataPersister"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    invoke-static {p2}, Lcom/j256/ormlite/field/DataType;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/field/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataPersister(Lcom/j256/ormlite/field/DataPersister;)V

    goto/16 :goto_1

    .line 320
    :cond_2
    const-string v0, "defaultValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDefaultValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 322
    :cond_3
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setWidth(I)V

    goto/16 :goto_1

    .line 324
    :cond_4
    const-string v0, "canBeNull"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    goto/16 :goto_1

    .line 326
    :cond_5
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 327
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setId(Z)V

    goto/16 :goto_1

    .line 328
    :cond_6
    const-string v0, "generatedId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 329
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedId(Z)V

    goto/16 :goto_1

    .line 330
    :cond_7
    const-string v0, "generatedIdSequence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 331
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedIdSequence(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 332
    :cond_8
    const-string v0, "foreign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 333
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeign(Z)V

    goto/16 :goto_1

    .line 334
    :cond_9
    const-string v0, "useGetSet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 335
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUseGetSet(Z)V

    goto/16 :goto_1

    .line 336
    :cond_a
    const-string v0, "unknownEnumValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 337
    const-string v0, "#"

    const/4 v2, -0x2

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    .line 339
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value for unknownEnumValue which should be in class#name format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_b
    const/4 v2, 0x0

    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .local v3, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 346
    nop

    .line 348
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    .line 349
    .local v4, "consts":[Ljava/lang/Object;
    if-nez v4, :cond_c

    .line 350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid class is not an Enum for unknownEnumValue: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_c
    move-object v5, v4

    check-cast v5, [Ljava/lang/Enum;

    .line 354
    .local v5, "enumConstants":[Ljava/lang/Enum;
    const/4 v6, 0x0

    .line 355
    .local v6, "found":Z
    array-length v7, v5

    :goto_0
    if-ge v2, v7, :cond_e

    aget-object v8, v5, v2

    .line 356
    .local v8, "enumInstance":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v0, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 357
    invoke-virtual {p0, v8}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnknownEnumValue(Ljava/lang/Enum;)V

    .line 358
    const/4 v6, 0x1

    .line 355
    .end local v8    # "enumInstance":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_e
    if-nez v6, :cond_f

    .line 362
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid enum value name for unknownEnumvalue: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v3    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "consts":[Ljava/lang/Object;
    .end local v5    # "enumConstants":[Ljava/lang/Enum;
    .end local v6    # "found":Z
    :cond_f
    goto/16 :goto_1

    .line 345
    .restart local v0    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown class specified for unknownEnumValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_10
    const-string v0, "throwIfNull"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 365
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setThrowIfNull(Z)V

    goto/16 :goto_1

    .line 366
    :cond_11
    const-string v0, "format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 367
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 368
    :cond_12
    const-string v0, "unique"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 369
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V

    goto/16 :goto_1

    .line 370
    :cond_13
    const-string v0, "uniqueCombo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 371
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueCombo(Z)V

    goto/16 :goto_1

    .line 372
    :cond_14
    const-string v0, "index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 373
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndex(Z)V

    goto/16 :goto_1

    .line 374
    :cond_15
    const-string v0, "indexName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 375
    invoke-virtual {p0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndex(Z)V

    .line 376
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndexName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 377
    :cond_16
    const-string v0, "uniqueIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 378
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndex(Z)V

    goto/16 :goto_1

    .line 379
    :cond_17
    const-string v0, "uniqueIndexName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 380
    invoke-virtual {p0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndex(Z)V

    .line 381
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndexName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 382
    :cond_18
    const-string v0, "foreignAutoRefresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 383
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoRefresh(Z)V

    goto/16 :goto_1

    .line 384
    :cond_19
    const-string v0, "maxForeignAutoRefreshLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 385
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setMaxForeignAutoRefreshLevel(I)V

    goto/16 :goto_1

    .line 386
    :cond_1a
    const-string v0, "persisterClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 389
    :try_start_1
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 390
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setPersisterClass(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    goto/16 :goto_1

    .line 391
    :catch_1
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find persisterClass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1b
    const-string v0, "allowGeneratedIdInsert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 395
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setAllowGeneratedIdInsert(Z)V

    goto/16 :goto_1

    .line 396
    :cond_1c
    const-string v0, "columnDefinition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 397
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnDefinition(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 398
    :cond_1d
    const-string v0, "fullColumnDefinition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 399
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFullColumnDefinition(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 400
    :cond_1e
    const-string v0, "foreignAutoCreate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 401
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoCreate(Z)V

    goto/16 :goto_1

    .line 402
    :cond_1f
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 403
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setVersion(Z)V

    goto/16 :goto_1

    .line 404
    :cond_20
    const-string v0, "foreignColumnName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 405
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignColumnName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 406
    :cond_21
    const-string v0, "readOnly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 407
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setReadOnly(Z)V

    goto/16 :goto_1

    .line 412
    :cond_22
    const-string v0, "foreignCollection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 413
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollection(Z)V

    goto/16 :goto_1

    .line 414
    :cond_23
    const-string v0, "foreignCollectionEager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 415
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionEager(Z)V

    goto/16 :goto_1

    .line 416
    :cond_24
    const-string v0, "maxEagerForeignCollectionLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 417
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionMaxEagerLevel(I)V

    goto :goto_1

    .line 418
    :cond_25
    const-string v0, "foreignCollectionMaxEagerLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 419
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionMaxEagerLevel(I)V

    goto :goto_1

    .line 420
    :cond_26
    const-string v0, "foreignCollectionColumnName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 421
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionColumnName(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_27
    const-string v0, "foreignCollectionOrderColumn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 423
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionOrderColumnName(Ljava/lang/String;)V

    goto :goto_1

    .line 424
    :cond_28
    const-string v0, "foreignCollectionOrderColumnName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 425
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionOrderColumnName(Ljava/lang/String;)V

    goto :goto_1

    .line 426
    :cond_29
    const-string v0, "foreignCollectionOrderAscending"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 427
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionOrderAscending(Z)V

    goto :goto_1

    .line 428
    :cond_2a
    const-string v0, "foreignCollectionForeignColumnName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 429
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionForeignFieldName(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_2b
    const-string v0, "foreignCollectionForeignFieldName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 431
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionForeignFieldName(Ljava/lang/String;)V

    .line 433
    :cond_2c
    :goto_1
    return-void
.end method

.method public static write(Ljava/io/BufferedWriter;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "config"    # Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 72
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->writeConfig(Ljava/io/BufferedWriter;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    nop

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Could not write config to writer"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public static writeConfig(Ljava/io/BufferedWriter;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;)V
    .locals 8
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "config"    # Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const-string v0, "# --field-start--"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 127
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 128
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFieldName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "fieldName"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 130
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "columnName"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 134
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    sget-object v2, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->DEFAULT_DATA_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

    if-eq v0, v2, :cond_4

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "found":Z
    invoke-static {}, Lcom/j256/ormlite/field/DataType;->values()[Lcom/j256/ormlite/field/DataType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 139
    .local v5, "dataType":Lcom/j256/ormlite/field/DataType;
    invoke-virtual {v5}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v6

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 140
    const-string v2, "dataPersister"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v5}, Lcom/j256/ormlite/field/DataType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 141
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 142
    const/4 v0, 0x1

    .line 143
    goto :goto_1

    .line 138
    .end local v5    # "dataType":Lcom/j256/ormlite/field/DataType;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 147
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown data persister field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    .end local v0    # "found":Z
    :cond_4
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 151
    const-string v0, "defaultValue"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 152
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 154
    :cond_5
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getWidth()I

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    const-string v0, "width"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 156
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 158
    :cond_6
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isCanBeNull()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 159
    const-string v0, "canBeNull"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isCanBeNull()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 160
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 162
    :cond_7
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 164
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 166
    :cond_8
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isGeneratedId()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    const-string v0, "generatedId"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 168
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 170
    :cond_9
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 171
    const-string v0, "generatedIdSequence"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 172
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 174
    :cond_a
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 175
    const-string v0, "foreign"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 176
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 178
    :cond_b
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUseGetSet()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 179
    const-string v0, "useGetSet"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 180
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 182
    :cond_c
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUnknownEnumValue()Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 187
    const-string v0, "unknownEnumValue"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUnknownEnumValue()Ljava/lang/Enum;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v3, 0x23

    .line 190
    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUnknownEnumValue()Ljava/lang/Enum;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 192
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 194
    :cond_d
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isThrowIfNull()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 195
    const-string v0, "throwIfNull"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 196
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 198
    :cond_e
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 199
    const-string v0, "format"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 200
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 202
    :cond_f
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUnique()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 203
    const-string v0, "unique"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 204
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 206
    :cond_10
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUniqueCombo()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 207
    const-string v0, "uniqueCombo"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 208
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 210
    :cond_11
    invoke-virtual {p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "indexName":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 212
    const-string v3, "indexName"

    invoke-virtual {p0, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 213
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 215
    :cond_12
    invoke-virtual {p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUniqueIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "uniqueIndexName":Ljava/lang/String;
    if-eqz v3, :cond_13

    .line 217
    const-string v4, "uniqueIndexName"

    invoke-virtual {p0, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 218
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 220
    :cond_13
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 221
    const-string v4, "foreignAutoRefresh"

    invoke-virtual {p0, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 222
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 224
    :cond_14
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getMaxForeignAutoRefreshLevel()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    .line 225
    const-string v4, "maxForeignAutoRefreshLevel"

    invoke-virtual {p0, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    .line 226
    invoke-virtual {v4, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v4

    .line 227
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getMaxForeignAutoRefreshLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 228
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 230
    :cond_15
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getPersisterClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;

    if-eq v4, v5, :cond_16

    .line 231
    const-string v4, "persisterClass"

    invoke-virtual {p0, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getPersisterClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 232
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 234
    :cond_16
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isAllowGeneratedIdInsert()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 235
    const-string v4, "allowGeneratedIdInsert"

    invoke-virtual {p0, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 236
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 238
    :cond_17
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnDefinition()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 239
    const-string v4, "columnDefinition"

    invoke-virtual {p0, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnDefinition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 240
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 242
    :cond_18
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFullColumnDefinition()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 243
    const-string v4, "fullColumnDefinition"

    invoke-virtual {p0, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFullColumnDefinition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 244
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 246
    :cond_19
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoCreate()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 247
    const-string v4, "foreignAutoCreate"

    invoke-virtual {p0, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 248
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 250
    :cond_1a
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isVersion()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 251
    const-string v4, "version"

    invoke-virtual {p0, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 252
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 254
    :cond_1b
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignColumnName()Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "foreignColumnName":Ljava/lang/String;
    if-eqz v4, :cond_1c

    .line 256
    const-string v5, "foreignColumnName"

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 257
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 259
    :cond_1c
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 260
    const-string v5, "readOnly"

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 261
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 267
    :cond_1d
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 268
    const-string v5, "foreignCollection"

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 269
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 271
    :cond_1e
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollectionEager()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 272
    const-string v5, "foreignCollectionEager"

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 273
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 275
    :cond_1f
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionMaxEagerLevel()I

    move-result v5

    if-eq v5, v2, :cond_20

    .line 276
    const-string v5, "foreignCollectionMaxEagerLevel"

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    .line 277
    invoke-virtual {v5, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v5

    .line 278
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionMaxEagerLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 279
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 281
    :cond_20
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionColumnName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 282
    const-string v5, "foreignCollectionColumnName"

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    .line 283
    invoke-virtual {v5, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v5

    .line 284
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 285
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 287
    :cond_21
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionOrderColumnName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 288
    const-string v5, "foreignCollectionOrderColumnName"

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    .line 289
    invoke-virtual {v5, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v5

    .line 290
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionOrderColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 291
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 293
    :cond_22
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollectionOrderAscending()Z

    move-result v5

    if-eq v5, v2, :cond_23

    .line 294
    const-string v2, "foreignCollectionOrderAscending"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    .line 295
    invoke-virtual {v2, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v2

    .line 296
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollectionOrderAscending()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 297
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 299
    :cond_23
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionForeignFieldName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 300
    const-string v2, "foreignCollectionForeignFieldName"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    .line 301
    invoke-virtual {v2, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v1

    .line 302
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionForeignFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 303
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 306
    :cond_24
    const-string v1, "# --field-end--"

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 307
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 308
    return-void
.end method
