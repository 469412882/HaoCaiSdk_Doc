.class public Lcom/j256/ormlite/table/DatabaseTableConfig;
.super Ljava/lang/Object;
.source "DatabaseTableConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;


# instance fields
.field private constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private fieldConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;"
        }
    .end annotation
.end field

.field private fieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    :try_start_0
    const-string v0, "javax.persistence.Entity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 40
    const-string v0, "com.j256.ormlite.misc.JavaxPersistenceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    sput-object v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 0
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "fieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 73
    iput-object p2, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    .line 74
    iput-object p3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;Ljava/util/List;)V
    .locals 1
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "fieldConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DatabaseFieldConfig;>;"
    invoke-static {p1, p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "fieldConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DatabaseFieldConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    .line 65
    iput-object p2, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    .line 67
    return-void
.end method

.method private convertFieldConfigs(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/util/List;)[Lcom/j256/ormlite/field/FieldType;
    .locals 15
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)[",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 256
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .local p3, "fieldConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DatabaseFieldConfig;>;"
    move-object v1, p0

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v2, "fieldTypes":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 258
    .local v4, "fieldConfig":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    const/4 v11, 0x0

    .line 260
    .local v11, "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-object v5, v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    .line 260
    .local v5, "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    move-object v12, v5

    .line 260
    .end local v5    # "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v12, "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v12, :cond_1

    .line 263
    :try_start_0
    invoke-virtual {v4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v5

    .line 267
    .local v13, "field":Ljava/lang/reflect/Field;
    nop

    .line 266
    nop

    .line 268
    if-eqz v13, :cond_0

    .line 269
    new-instance v14, Lcom/j256/ormlite/field/FieldType;

    iget-object v10, v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    move-object v5, v14

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v13

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/j256/ormlite/field/FieldType;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/Class;)V

    move-object v11, v14

    .line 270
    goto :goto_2

    .line 264
    .end local v13    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 266
    .local v5, "e":Ljava/lang/NoSuchFieldException;
    nop

    .line 260
    .end local v5    # "e":Ljava/lang/NoSuchFieldException;
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 260
    .end local v12    # "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 274
    .end local v5    # "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_2
    if-nez v11, :cond_2

    .line 275
    new-instance v3, Ljava/sql/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find declared field with name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 278
    :cond_2
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v4    # "fieldConfig":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .end local v11    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    goto :goto_0

    .line 280
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 281
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No fields were configured for class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 283
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/j256/ormlite/field/FieldType;

    return-object v3
.end method

.method private static extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;
    .locals 7
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 238
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "fieldTypes":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    move-object v1, p1

    .line 239
    .local v1, "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 241
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-static {p0, p2, v5, p1}, Lcom/j256/ormlite/field/FieldType;->createFieldType(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v6

    .line 242
    .local v6, "fieldType":Lcom/j256/ormlite/field/FieldType;
    if-eqz v6, :cond_0

    .line 243
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 247
    .end local v1    # "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No fields have a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/j256/ormlite/field/DatabaseField;

    .line 249
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " annotation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/j256/ormlite/field/FieldType;

    return-object v1
.end method

.method public static extractTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 183
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTable;

    .line 184
    .local v0, "databaseTable":Lcom/j256/ormlite/table/DatabaseTable;
    const/4 v1, 0x0

    .line 185
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 186
    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v1

    .line 188
    :cond_0
    if-nez v1, :cond_1

    sget-object v2, Lcom/j256/ormlite/table/DatabaseTableConfig;->javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    if-eqz v2, :cond_1

    .line 189
    sget-object v2, Lcom/j256/ormlite/table/DatabaseTableConfig;->javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    invoke-interface {v2, p1}, Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;->getEntityName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 191
    :cond_1
    if-nez v1, :cond_3

    .line 193
    if-nez p0, :cond_2

    .line 195
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Lcom/j256/ormlite/db/DatabaseType;->downCaseString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 200
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static findNoArgConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 210
    .local p0, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    .local v0, "consts":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<TT;>;"
    nop

    .line 215
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<TT;>;"
    nop

    .line 214
    nop

    .line 216
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 217
    .local v3, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    .line 218
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    goto :goto_1

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open access to constructor for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_1
    return-object v3

    .line 216
    .end local v3    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_3

    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find a no-arg constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find a no-arg constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Missing static on inner class?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<TT;>;"
    :catch_1
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t lookup declared constructors for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 4
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

    .line 170
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    .line 171
    .local v0, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    invoke-static {v0, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "tableName":Ljava/lang/String;
    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isEntityNamesMustBeUpCase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-interface {v0, v1}, Lcom/j256/ormlite/db/DatabaseType;->upCaseEntityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_0
    new-instance v2, Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 176
    invoke-static {p0, p1, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 175
    return-object v2
.end method


# virtual methods
.method public extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->convertFieldConfigs(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/util/List;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 132
    :cond_1
    :goto_0
    return-void
.end method

.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->constructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->findNoArgConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->constructor:Ljava/lang/reflect/Constructor;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFieldConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getFieldTypes(Lcom/j256/ormlite/db/DatabaseType;)[Lcom/j256/ormlite/field/FieldType;
    .locals 2
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Field types have not been extracted in table config"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 107
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 82
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataClass was never set on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    .line 88
    :cond_1
    return-void
.end method

.method public setConstructor(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->constructor:Ljava/lang/reflect/Constructor;

    .line 162
    return-void
.end method

.method public setDataClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    .line 104
    return-void
.end method

.method public setDatabaseType(Lcom/j256/ormlite/db/DatabaseType;)V
    .locals 0
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;

    .line 94
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 95
    return-void
.end method

.method public setFieldConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .local p1, "fieldConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DatabaseFieldConfig;>;"
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    .line 119
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .line 114
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    .line 115
    return-void
.end method
