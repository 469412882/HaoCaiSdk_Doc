.class public Lcom/j256/ormlite/field/DataPersisterManager;
.super Ljava/lang/Object;
.source "DataPersisterManager.java"


# static fields
.field private static final DEFAULT_ENUM_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

.field private static final builtInMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredPersisters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 20
    invoke-static {}, Lcom/j256/ormlite/field/types/EnumStringType;->getSingleton()Lcom/j256/ormlite/field/types/EnumStringType;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->DEFAULT_ENUM_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    .line 28
    invoke-static {}, Lcom/j256/ormlite/field/DataType;->values()[Lcom/j256/ormlite/field/DataType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 29
    .local v4, "dataType":Lcom/j256/ormlite/field/DataType;
    invoke-virtual {v4}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v5

    .line 30
    .local v5, "persister":Lcom/j256/ormlite/field/DataPersister;
    if-eqz v5, :cond_1

    .line 31
    invoke-interface {v5}, Lcom/j256/ormlite/field/DataPersister;->getAssociatedClasses()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 32
    .local v9, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v10, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 34
    :cond_0
    invoke-interface {v5}, Lcom/j256/ormlite/field/DataPersister;->getAssociatedClassNames()[Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, "associatedClassNames":[Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 36
    invoke-interface {v5}, Lcom/j256/ormlite/field/DataPersister;->getAssociatedClassNames()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 37
    .local v10, "className":Ljava/lang/String;
    sget-object v11, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    invoke-interface {v11, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .end local v10    # "className":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 28
    .end local v4    # "dataType":Lcom/j256/ormlite/field/DataType;
    .end local v5    # "persister":Lcom/j256/ormlite/field/DataPersister;
    .end local v6    # "associatedClassNames":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static clear()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    .line 68
    return-void
.end method

.method public static lookupForField(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 78
    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 79
    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/field/DataPersister;

    .line 80
    .local v1, "persister":Lcom/j256/ormlite/field/DataPersister;
    invoke-interface {v1, p0}, Lcom/j256/ormlite/field/DataPersister;->isValidForField(Ljava/lang/reflect/Field;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    return-object v1

    .line 84
    :cond_0
    invoke-interface {v1}, Lcom/j256/ormlite/field/DataPersister;->getAssociatedClasses()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 85
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v5, :cond_1

    .line 86
    return-object v1

    .line 84
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 89
    .end local v1    # "persister":Lcom/j256/ormlite/field/DataPersister;
    :cond_2
    goto :goto_0

    .line 93
    :cond_3
    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DataPersister;

    .line 94
    .local v0, "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    if-eqz v0, :cond_4

    .line 95
    return-object v0

    .line 102
    :cond_4
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 103
    sget-object v1, Lcom/j256/ormlite/field/DataPersisterManager;->DEFAULT_ENUM_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

    return-object v1

    .line 109
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs registerDataPersisters([Lcom/j256/ormlite/field/DataPersister;)V
    .locals 4
    .param p0, "dataPersisters"    # [Lcom/j256/ormlite/field/DataPersister;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DataPersister;>;"
    sget-object v1, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 58
    .local v3, "persister":Lcom/j256/ormlite/field/DataPersister;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v3    # "persister":Lcom/j256/ormlite/field/DataPersister;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    sput-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    .line 61
    return-void
.end method
