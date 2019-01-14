.class public Lcom/j256/ormlite/android/DatabaseTableConfigUtil;
.super Ljava/lang/Object;
.source "DatabaseTableConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/android/DatabaseTableConfigUtil$DatabaseFieldSample;
    }
.end annotation


# static fields
.field private static final ALLOW_GENERATED_ID_INSERT:I = 0x18

.field private static final CAN_BE_NULL:I = 0x5

.field private static final COLUMN_DEFINITON:I = 0x19

.field private static final COLUMN_NAME:I = 0x1

.field private static final DATA_TYPE:I = 0x2

.field private static final DEFAULT_VALUE:I = 0x3

.field public static final DISABLE_ANNOTATION_HACK_SYSTEM_PROPERTY:Ljava/lang/String; = "ormlite.annotation.hack.disable"

.field private static final FOREIGN:I = 0x9

.field private static final FOREIGN_AUTO_CREATE:I = 0x1a

.field private static final FOREIGN_AUTO_REFRESH:I = 0x15

.field private static final FOREIGN_COLUMN_NAME:I = 0x1c

.field private static final FORMAT:I = 0xe

.field private static final FULL_COLUMN_DEFINITON:I = 0x1e

.field private static final GENERATED_ID:I = 0x7

.field private static final GENERATED_ID_SEQUENCE:I = 0x8

.field private static final ID:I = 0x6

.field private static final INDEX:I = 0x11

.field private static final INDEX_NAME:I = 0x13

.field private static final MAX_FOREIGN_AUTO_REFRESH_LEVEL:I = 0x16

.field private static final PERSISTED:I = 0xd

.field private static final PERSISTER_CLASS:I = 0x17

.field private static final READ_ONLY:I = 0x1d

.field private static final THROW_IF_NULL:I = 0xc

.field private static final UNIQUE:I = 0xf

.field private static final UNIQUE_COMBO:I = 0x10

.field private static final UNIQUE_INDEX:I = 0x12

.field private static final UNIQUE_INDEX_NAME:I = 0x14

.field private static final UNKNOWN_ENUM_NAME:I = 0xb

.field private static final USE_GET_SET:I = 0xa

.field private static final VERSION:I = 0x1b

.field private static final WIDTH:I = 0x4

.field private static annotationFactoryClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static annotationMemberClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final configFieldNums:[I

.field private static elementsField:Ljava/lang/reflect/Field;

.field private static nameField:Ljava/lang/reflect/Field;

.field private static valueField:Ljava/lang/reflect/Field;

.field private static workedC:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const-string v0, "ormlite.annotation.hack.disable"

    .line 51
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->lookupClasses()[I

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    .line 56
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assignConfigField(ILcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 3
    .param p0, "configNum"    # I
    .param p1, "config"    # Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "value"    # Ljava/lang/Object;

    .line 319
    packed-switch p0, :pswitch_data_0

    .line 416
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find support for DatabaseField number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :pswitch_0
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFullColumnDefinition(Ljava/lang/String;)V

    .line 402
    goto/16 :goto_0

    .line 413
    :pswitch_1
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setReadOnly(Z)V

    .line 414
    goto/16 :goto_0

    .line 410
    :pswitch_2
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignColumnName(Ljava/lang/String;)V

    .line 411
    goto/16 :goto_0

    .line 407
    :pswitch_3
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setVersion(Z)V

    .line 408
    goto/16 :goto_0

    .line 404
    :pswitch_4
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoCreate(Z)V

    .line 405
    goto/16 :goto_0

    .line 398
    :pswitch_5
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnDefinition(Ljava/lang/String;)V

    .line 399
    goto/16 :goto_0

    .line 395
    :pswitch_6
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setAllowGeneratedIdInsert(Z)V

    .line 396
    goto/16 :goto_0

    .line 391
    :pswitch_7
    move-object v0, p3

    check-cast v0, Ljava/lang/Class;

    .line 392
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setPersisterClass(Ljava/lang/Class;)V

    .line 393
    goto/16 :goto_0

    .line 387
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    :pswitch_8
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setMaxForeignAutoRefreshLevel(I)V

    .line 388
    goto/16 :goto_0

    .line 384
    :pswitch_9
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoRefresh(Z)V

    .line 385
    goto/16 :goto_0

    .line 381
    :pswitch_a
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndexName(Ljava/lang/String;)V

    .line 382
    goto/16 :goto_0

    .line 378
    :pswitch_b
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndexName(Ljava/lang/String;)V

    .line 379
    goto/16 :goto_0

    .line 375
    :pswitch_c
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndex(Z)V

    .line 376
    goto/16 :goto_0

    .line 372
    :pswitch_d
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndex(Z)V

    .line 373
    goto/16 :goto_0

    .line 369
    :pswitch_e
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueCombo(Z)V

    .line 370
    goto/16 :goto_0

    .line 366
    :pswitch_f
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V

    .line 367
    goto/16 :goto_0

    .line 363
    :pswitch_10
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFormat(Ljava/lang/String;)V

    .line 364
    goto/16 :goto_0

    .line 360
    :pswitch_11
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setPersisted(Z)V

    .line 361
    goto/16 :goto_0

    .line 357
    :pswitch_12
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setThrowIfNull(Z)V

    .line 358
    goto/16 :goto_0

    .line 354
    :pswitch_13
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findMatchingEnumVal(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnknownEnumValue(Ljava/lang/Enum;)V

    .line 355
    goto/16 :goto_0

    .line 351
    :pswitch_14
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUseGetSet(Z)V

    .line 352
    goto :goto_0

    .line 348
    :pswitch_15
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeign(Z)V

    .line 349
    goto :goto_0

    .line 345
    :pswitch_16
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedIdSequence(Ljava/lang/String;)V

    .line 346
    goto :goto_0

    .line 342
    :pswitch_17
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedId(Z)V

    .line 343
    goto :goto_0

    .line 339
    :pswitch_18
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setId(Z)V

    .line 340
    goto :goto_0

    .line 336
    :pswitch_19
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    .line 337
    goto :goto_0

    .line 333
    :pswitch_1a
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setWidth(I)V

    .line 334
    goto :goto_0

    .line 327
    :pswitch_1b
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "__ormlite__ no default value string was specified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    .end local v0    # "defaultValue":Ljava/lang/String;
    :pswitch_1c
    move-object v0, p3

    check-cast v0, Lcom/j256/ormlite/field/DataType;

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataType(Lcom/j256/ormlite/field/DataType;)V

    .line 325
    goto :goto_0

    .line 321
    :pswitch_1d
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    .line 322
    nop

    .line 418
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method private static buildConfig(Lcom/j256/ormlite/field/DatabaseField;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 7
    .param p0, "databaseField"    # Lcom/j256/ormlite/field/DatabaseField;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 295
    .local v0, "proxy":Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 296
    return-object v3

    .line 299
    :cond_0
    sget-object v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 300
    .local v1, "elementsObject":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 301
    return-object v3

    .line 303
    :cond_1
    new-instance v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>(Ljava/lang/String;)V

    .line 304
    .local v2, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    .line 305
    .local v3, "objs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 305
    .local v4, "i":I
    :goto_0
    sget-object v5, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 306
    sget-object v5, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueField:Ljava/lang/reflect/Field;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 307
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 308
    sget-object v6, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    aget v6, v6, v4

    invoke-static {v6, v2, p2, v5}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->assignConfigField(ILcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 305
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 311
    .end local v4    # "i":I
    :cond_3
    return-object v2
.end method

.method private static configFieldNameToNum(Ljava/lang/String;)I
    .locals 3
    .param p0, "configName"    # Ljava/lang/String;

    .line 185
    const-string v0, "columnName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x1

    return v0

    .line 187
    :cond_0
    const-string v0, "dataType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const/4 v0, 0x2

    return v0

    .line 189
    :cond_1
    const-string v0, "defaultValue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    const/4 v0, 0x3

    return v0

    .line 191
    :cond_2
    const-string v0, "width"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    const/4 v0, 0x4

    return v0

    .line 193
    :cond_3
    const-string v0, "canBeNull"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    const/4 v0, 0x5

    return v0

    .line 195
    :cond_4
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    const/4 v0, 0x6

    return v0

    .line 197
    :cond_5
    const-string v0, "generatedId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    const/4 v0, 0x7

    return v0

    .line 199
    :cond_6
    const-string v0, "generatedIdSequence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    const/16 v0, 0x8

    return v0

    .line 201
    :cond_7
    const-string v0, "foreign"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    const/16 v0, 0x9

    return v0

    .line 203
    :cond_8
    const-string v0, "useGetSet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    const/16 v0, 0xa

    return v0

    .line 205
    :cond_9
    const-string v0, "unknownEnumName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 206
    const/16 v0, 0xb

    return v0

    .line 207
    :cond_a
    const-string v0, "throwIfNull"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 208
    const/16 v0, 0xc

    return v0

    .line 209
    :cond_b
    const-string v0, "persisted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 210
    const/16 v0, 0xd

    return v0

    .line 211
    :cond_c
    const-string v0, "format"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 212
    const/16 v0, 0xe

    return v0

    .line 213
    :cond_d
    const-string v0, "unique"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 214
    const/16 v0, 0xf

    return v0

    .line 215
    :cond_e
    const-string v0, "uniqueCombo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 216
    const/16 v0, 0x10

    return v0

    .line 217
    :cond_f
    const-string v0, "index"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 218
    const/16 v0, 0x11

    return v0

    .line 219
    :cond_10
    const-string v0, "uniqueIndex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 220
    const/16 v0, 0x12

    return v0

    .line 221
    :cond_11
    const-string v0, "indexName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 222
    const/16 v0, 0x13

    return v0

    .line 223
    :cond_12
    const-string v0, "uniqueIndexName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 224
    const/16 v0, 0x14

    return v0

    .line 225
    :cond_13
    const-string v0, "foreignAutoRefresh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 226
    const/16 v0, 0x15

    return v0

    .line 227
    :cond_14
    const-string v0, "maxForeignAutoRefreshLevel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 228
    const/16 v0, 0x16

    return v0

    .line 229
    :cond_15
    const-string v0, "persisterClass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 230
    const/16 v0, 0x17

    return v0

    .line 231
    :cond_16
    const-string v0, "allowGeneratedIdInsert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 232
    const/16 v0, 0x18

    return v0

    .line 233
    :cond_17
    const-string v0, "columnDefinition"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 234
    const/16 v0, 0x19

    return v0

    .line 235
    :cond_18
    const-string v0, "fullColumnDefinition"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 236
    const/16 v0, 0x1e

    return v0

    .line 237
    :cond_19
    const-string v0, "foreignAutoCreate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 238
    const/16 v0, 0x1a

    return v0

    .line 239
    :cond_1a
    const-string v0, "version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 240
    const/16 v0, 0x1b

    return v0

    .line 241
    :cond_1b
    const-string v0, "foreignColumnName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 242
    const/16 v0, 0x1c

    return v0

    .line 243
    :cond_1c
    const-string v0, "readOnly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 244
    const/16 v0, 0x1d

    return v0

    .line 246
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find support for DatabaseField "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static configFromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 3
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    if-nez v0, :cond_0

    .line 257
    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v0

    return-object v0

    .line 264
    :cond_0
    const-class v0, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DatabaseField;

    .line 266
    .local v0, "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    const/4 v1, 0x0

    .line 268
    .local v1, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    if-eqz v0, :cond_1

    .line 269
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->buildConfig(Lcom/j256/ormlite/field/DatabaseField;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 271
    :catch_0
    move-exception v2

    goto :goto_1

    .line 273
    :cond_1
    :goto_0
    nop

    .line 275
    :goto_1
    if-nez v1, :cond_2

    .line 281
    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v2

    return-object v2

    .line 283
    :cond_2
    sget v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    .line 284
    return-object v1
.end method

.method public static fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 10
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
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

    .line 63
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    .line 64
    .local v0, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    invoke-static {v0, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "tableName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, "fieldConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DatabaseFieldConfig;>;"
    move-object v3, p1

    .line 66
    .local v3, "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v3, :cond_2

    .line 67
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 68
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-static {v0, v1, v7}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v8

    .line 69
    .local v8, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isPersisted()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 70
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 74
    .end local v3    # "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 75
    const/4 v3, 0x0

    return-object v3

    .line 77
    :cond_3
    new-instance v3, Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-direct {v3, p1, v1, v2}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    return-object v3
.end method

.method public static getWorkedC()I
    .locals 1

    .line 85
    sget v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    return v0
.end method

.method private static lookupClasses()[I
    .locals 11

    .line 95
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.apache.harmony.lang.annotation.AnnotationFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    .line 96
    const-string v1, "org.apache.harmony.lang.annotation.AnnotationMember"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationMemberClazz:Ljava/lang/Class;

    .line 97
    const-string v1, "[Lorg.apache.harmony.lang.annotation.AnnotationMember;"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 100
    .local v1, "annotationMemberArrayClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 99
    nop

    .line 104
    :try_start_1
    sget-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    const-string v3, "elements"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    .line 105
    sget-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 107
    sget-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationMemberClazz:Ljava/lang/Class;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->nameField:Ljava/lang/reflect/Field;

    .line 108
    sget-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->nameField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 109
    sget-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationMemberClazz:Ljava/lang/Class;

    const-string v4, "value"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueField:Ljava/lang/reflect/Field;

    .line 110
    sget-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    const-class v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil$DatabaseFieldSample;

    const-string v3, "field"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    .local v2, "fieldField":Ljava/lang/reflect/Field;
    nop

    .line 116
    nop

    .line 119
    const-class v3, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/j256/ormlite/field/DatabaseField;

    .line 120
    .local v3, "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    invoke-static {v3}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v4

    .line 121
    .local v4, "proxy":Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    if-eq v5, v6, :cond_0

    .line 122
    return-object v0

    .line 127
    :cond_0
    :try_start_2
    sget-object v5, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 128
    .local v5, "elements":Ljava/lang/Object;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v6, v1, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    .line 133
    .local v6, "elementArray":[Ljava/lang/Object;
    array-length v7, v6

    new-array v7, v7, [I

    .line 136
    .local v7, "configNums":[I
    const/4 v8, 0x0

    .line 136
    .local v8, "i":I
    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_2

    .line 137
    sget-object v9, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->nameField:Ljava/lang/reflect/Field;

    aget-object v10, v6, v8

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 138
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNameToNum(Ljava/lang/String;)I

    move-result v10

    aput v10, v7, v8
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    .end local v9    # "name":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 140
    .end local v8    # "i":I
    :cond_2
    return-object v7

    .line 129
    .end local v6    # "elementArray":[Ljava/lang/Object;
    .end local v7    # "configNums":[I
    :cond_3
    :goto_1
    return-object v0

    .line 141
    .end local v5    # "elements":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 142
    .local v5, "e":Ljava/lang/IllegalAccessException;
    return-object v0

    .line 115
    .end local v2    # "fieldField":Ljava/lang/reflect/Field;
    .end local v3    # "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    .end local v4    # "proxy":Ljava/lang/reflect/InvocationHandler;
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    return-object v0

    .line 113
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/SecurityException;
    return-object v0

    .line 98
    .end local v1    # "annotationMemberArrayClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return-object v0
.end method

.method private static valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 421
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    return-object p0

    .line 422
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
