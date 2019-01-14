.class public Lcom/j256/ormlite/misc/JavaxPersistenceImpl;
.super Ljava/lang/Object;
.source "JavaxPersistenceImpl.java"

# interfaces
.implements Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private stringNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public createFieldConfig(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 17
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 36
    move-object/from16 v2, p2

    const-class v3, Ljavax/persistence/Column;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Ljavax/persistence/Column;

    .line 37
    .local v3, "columnAnnotation":Ljavax/persistence/Column;
    const-class v4, Ljavax/persistence/Basic;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Ljavax/persistence/Basic;

    .line 38
    .local v4, "basicAnnotation":Ljavax/persistence/Basic;
    const-class v5, Ljavax/persistence/Id;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Ljavax/persistence/Id;

    .line 39
    .local v5, "idAnnotation":Ljavax/persistence/Id;
    const-class v6, Ljavax/persistence/GeneratedValue;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ljavax/persistence/GeneratedValue;

    .line 40
    .local v6, "generatedValueAnnotation":Ljavax/persistence/GeneratedValue;
    const-class v7, Ljavax/persistence/OneToOne;

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ljavax/persistence/OneToOne;

    .line 41
    .local v7, "oneToOneAnnotation":Ljavax/persistence/OneToOne;
    const-class v8, Ljavax/persistence/ManyToOne;

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Ljavax/persistence/ManyToOne;

    .line 42
    .local v8, "manyToOneAnnotation":Ljavax/persistence/ManyToOne;
    const-class v9, Ljavax/persistence/JoinColumn;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Ljavax/persistence/JoinColumn;

    .line 43
    .local v9, "joinColumnAnnotation":Ljavax/persistence/JoinColumn;
    const-class v10, Ljavax/persistence/Enumerated;

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Ljavax/persistence/Enumerated;

    .line 44
    .local v10, "enumeratedAnnotation":Ljavax/persistence/Enumerated;
    const-class v11, Ljavax/persistence/Version;

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Ljavax/persistence/Version;

    .line 46
    .local v11, "versionAnnotation":Ljavax/persistence/Version;
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    .line 48
    const/4 v12, 0x0

    return-object v12

    .line 51
    :cond_0
    new-instance v12, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-direct {v12}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 52
    .local v12, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    .line 53
    .local v13, "fieldName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/j256/ormlite/db/DatabaseType;->isEntityNamesMustBeUpCase()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 54
    invoke-interface {v1, v13}, Lcom/j256/ormlite/db/DatabaseType;->upCaseEntityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 56
    :cond_1
    invoke-virtual {v12, v13}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFieldName(Ljava/lang/String;)V

    .line 58
    if-eqz v3, :cond_4

    .line 59
    invoke-interface {v3}, Ljavax/persistence/Column;->name()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 60
    invoke-interface {v3}, Ljavax/persistence/Column;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    .line 62
    :cond_2
    invoke-interface {v3}, Ljavax/persistence/Column;->columnDefinition()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 63
    invoke-interface {v3}, Ljavax/persistence/Column;->columnDefinition()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnDefinition(Ljava/lang/String;)V

    .line 65
    :cond_3
    invoke-interface {v3}, Ljavax/persistence/Column;->length()I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setWidth(I)V

    .line 66
    invoke-interface {v3}, Ljavax/persistence/Column;->nullable()Z

    move-result v14

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    .line 67
    invoke-interface {v3}, Ljavax/persistence/Column;->unique()Z

    move-result v14

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V

    .line 69
    :cond_4
    if-eqz v4, :cond_5

    .line 70
    invoke-interface {v4}, Ljavax/persistence/Basic;->optional()Z

    move-result v14

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    .line 72
    :cond_5
    const/4 v14, 0x1

    if-eqz v5, :cond_7

    .line 73
    if-nez v6, :cond_6

    .line 74
    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setId(Z)V

    goto :goto_0

    .line 77
    :cond_6
    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedId(Z)V

    .line 80
    :cond_7
    :goto_0
    if-nez v7, :cond_8

    if-eqz v8, :cond_e

    .line 82
    :cond_8
    const-class v15, Ljava/util/Collection;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_b

    const-class v14, Lcom/j256/ormlite/dao/ForeignCollection;

    .line 83
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_1

    .line 96
    :cond_9
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeign(Z)V

    .line 97
    if-eqz v9, :cond_e

    .line 98
    invoke-interface {v9}, Ljavax/persistence/JoinColumn;->name()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 99
    invoke-interface {v9}, Ljavax/persistence/JoinColumn;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    .line 101
    :cond_a
    invoke-interface {v9}, Ljavax/persistence/JoinColumn;->nullable()Z

    move-result v14

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    .line 102
    invoke-interface {v9}, Ljavax/persistence/JoinColumn;->unique()Z

    move-result v14

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V

    goto :goto_2

    .line 84
    :cond_b
    :goto_1
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollection(Z)V

    .line 85
    if-eqz v9, :cond_c

    invoke-interface {v9}, Ljavax/persistence/JoinColumn;->name()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 86
    invoke-interface {v9}, Ljavax/persistence/JoinColumn;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionColumnName(Ljava/lang/String;)V

    .line 88
    :cond_c
    if-eqz v8, :cond_e

    .line 89
    invoke-interface {v8}, Ljavax/persistence/ManyToOne;->fetch()Ljavax/persistence/FetchType;

    move-result-object v14

    .line 90
    .local v14, "fetchType":Ljavax/persistence/FetchType;
    if-eqz v14, :cond_d

    sget-object v15, Ljavax/persistence/FetchType;->EAGER:Ljavax/persistence/FetchType;

    if-ne v14, v15, :cond_d

    .line 91
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionEager(Z)V

    .line 93
    .end local v14    # "fetchType":Ljavax/persistence/FetchType;
    :cond_d
    nop

    .line 106
    :cond_e
    :goto_2
    if-eqz v10, :cond_10

    .line 107
    invoke-interface {v10}, Ljavax/persistence/Enumerated;->value()Ljavax/persistence/EnumType;

    move-result-object v14

    .line 108
    .local v14, "enumType":Ljavax/persistence/EnumType;
    if-eqz v14, :cond_f

    sget-object v15, Ljavax/persistence/EnumType;->STRING:Ljavax/persistence/EnumType;

    if-ne v14, v15, :cond_f

    .line 109
    sget-object v15, Lcom/j256/ormlite/field/DataType;->ENUM_STRING:Lcom/j256/ormlite/field/DataType;

    invoke-virtual {v12, v15}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataType(Lcom/j256/ormlite/field/DataType;)V

    goto :goto_3

    .line 111
    :cond_f
    sget-object v15, Lcom/j256/ormlite/field/DataType;->ENUM_INTEGER:Lcom/j256/ormlite/field/DataType;

    invoke-virtual {v12, v15}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataType(Lcom/j256/ormlite/field/DataType;)V

    .line 114
    .end local v14    # "enumType":Ljavax/persistence/EnumType;
    :cond_10
    :goto_3
    if-eqz v11, :cond_11

    .line 116
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setVersion(Z)V

    goto :goto_4

    .line 118
    :cond_11
    const/4 v14, 0x1

    :goto_4
    invoke-virtual {v12}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v15

    if-nez v15, :cond_12

    .line 119
    invoke-static/range {p2 .. p2}, Lcom/j256/ormlite/field/DataPersisterManager;->lookupForField(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataPersister(Lcom/j256/ormlite/field/DataPersister;)V

    .line 121
    :cond_12
    const/4 v15, 0x0

    invoke-static {v2, v1, v15}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findGetMethod(Ljava/lang/reflect/Field;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/reflect/Method;

    move-result-object v16

    if-eqz v16, :cond_13

    .line 122
    invoke-static {v2, v1, v15}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findSetMethod(Ljava/lang/reflect/Field;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/reflect/Method;

    move-result-object v16

    if-eqz v16, :cond_13

    goto :goto_5

    .line 121
    :cond_13
    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v12, v14}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUseGetSet(Z)V

    .line 123
    return-object v12
.end method

.method public getEntityName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 128
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljavax/persistence/Entity;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/persistence/Entity;

    .line 129
    .local v0, "entityAnnotation":Ljavax/persistence/Entity;
    const-class v1, Ljavax/persistence/Table;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ljavax/persistence/Table;

    .line 131
    .local v1, "tableAnnotation":Ljavax/persistence/Table;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/persistence/Entity;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v0}, Ljavax/persistence/Entity;->name()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 134
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljavax/persistence/Table;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/j256/ormlite/misc/JavaxPersistenceImpl;->stringNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v1}, Ljavax/persistence/Table;->name()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 137
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
