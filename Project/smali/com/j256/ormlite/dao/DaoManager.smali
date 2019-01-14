.class public Lcom/j256/ormlite/dao/DaoManager;
.super Ljava/lang/Object;
.source "DaoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;,
        Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    }
.end annotation


# static fields
.field private static classMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;>;"
        }
    .end annotation
.end field

.field private static configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static tableConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    .line 32
    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    .line 33
    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    .line 35
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addCachedDatabaseConfigs(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;>;)V"
        }
    .end annotation

    .line 234
    .local p0, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 234
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 235
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v1, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    goto :goto_0

    .line 237
    .end local v1    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 239
    .restart local v1    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 240
    .local v3, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    invoke-virtual {v3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v4, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v5, "Loaded configuration for {}"

    invoke-virtual {v3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    .end local v3    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    goto :goto_1

    .line 243
    :cond_1
    sput-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit v0

    return-void

    .line 233
    .end local v1    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    .end local p0    # "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    .line 247
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    .line 250
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method private static addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    .line 260
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    .line 263
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 207
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 208
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 209
    const/4 v1, 0x0

    sput-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    .line 211
    :cond_0
    invoke-static {}, Lcom/j256/ormlite/dao/DaoManager;->clearDaoCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit v0

    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized clearDaoCache()V
    .locals 3

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 219
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 220
    sput-object v2, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    .line 222
    :cond_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 223
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 224
    sput-object v2, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_1
    monitor-exit v0

    return-void

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 126
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 126
    if-nez p0, :cond_0

    .line 127
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 129
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    :cond_0
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 125
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 10
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 43
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 43
    if-nez p0, :cond_0

    .line 44
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 46
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    .line 47
    .local v1, "key":Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    invoke-static {v1}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .local v2, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    if-eqz v2, :cond_1

    .line 50
    move-object v3, v2

    .line 51
    .local v3, "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    monitor-exit v0

    return-object v3

    .line 55
    .end local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDaoFromConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 56
    if-eqz v2, :cond_2

    .line 58
    move-object v3, v2

    .line 59
    .restart local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    monitor-exit v0

    return-object v3

    .line 62
    .end local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    :cond_2
    :try_start_2
    const-class v3, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/j256/ormlite/table/DatabaseTable;

    .line 63
    .local v3, "databaseTable":Lcom/j256/ormlite/table/DatabaseTable;
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Void;

    if-eq v4, v5, :cond_5

    .line 64
    invoke-interface {v3}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-ne v4, v5, :cond_3

    goto :goto_0

    .line 77
    :cond_3
    invoke-interface {v3}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v4

    .line 78
    .local v4, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v7, 0x1

    aput-object p1, v5, v7

    .line 80
    .local v5, "arguments":[Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 81
    .local v8, "daoConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v8, :cond_4

    .line 83
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v6

    move-object v5, v7

    .line 84
    invoke-static {v4, v5}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v8, v6

    .line 85
    if-nez v8, :cond_4

    .line 86
    new-instance v6, Ljava/sql/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find public constructor with ConnectionSource and optional Class parameters "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ".  Missing static on class?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :cond_4
    :try_start_3
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/j256/ormlite/dao/Dao;

    move-object v2, v6

    .line 93
    sget-object v6, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v7, "created dao for class {} from constructor"

    invoke-virtual {v6, v7, p1}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    goto :goto_2

    .line 94
    :catch_0
    move-exception v6

    .line 95
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not call the constructor in class "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v7

    throw v7

    .line 66
    .end local v4    # "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "arguments":[Ljava/lang/Object;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "daoConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_5
    :goto_0
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v4

    .line 67
    .local v4, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    invoke-interface {v4, p0, p1}, Lcom/j256/ormlite/db/DatabaseType;->extractDatabaseTableConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v5

    .line 69
    .local v5, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    if-nez v5, :cond_6

    .line 70
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v6

    .line 70
    .local v6, "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    goto :goto_1

    .line 72
    .end local v6    # "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    :cond_6
    invoke-static {p0, v5}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v6

    .line 74
    .restart local v6    # "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    :goto_1
    move-object v2, v6

    .line 75
    sget-object v7, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v8, "created dao for class {} with reflection"

    invoke-virtual {v7, v8, p1}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .end local v4    # "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    .end local v5    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .end local v6    # "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    nop

    .line 99
    :goto_2
    invoke-static {p0, v2}, Lcom/j256/ormlite/dao/DaoManager;->registerDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    move-object v4, v2

    .line 102
    .local v4, "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    monitor-exit v0

    return-object v4

    .line 42
    .end local v1    # "key":Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    .end local v2    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .end local v3    # "databaseTable":Lcom/j256/ormlite/table/DatabaseTable;
    .end local v4    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_3
    monitor-exit v0

    throw p0
.end method

.method private static createDaoFromConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 314
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 315
    return-object v1

    .line 319
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 321
    .local v0, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    if-nez v0, :cond_1

    .line 322
    return-object v1

    .line 326
    :cond_1
    invoke-static {p0, v0}, Lcom/j256/ormlite/dao/DaoManager;->doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 328
    .local v1, "configedDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    move-object v2, v1

    .line 329
    .local v2, "castDao":Ljava/lang/Object;, "TD;"
    return-object v2
.end method

.method private static doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 11
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 334
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    new-instance v0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 336
    .local v0, "tableKey":Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    invoke-static {v0}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 337
    .local v1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    if-eqz v1, :cond_0

    .line 339
    move-object v2, v1

    .line 340
    .local v2, "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    return-object v2

    .line 344
    .end local v2    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    :cond_0
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    .line 345
    .local v2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v3, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v3, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    .line 346
    .local v3, "classKey":Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    invoke-static {v3}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_1

    .line 349
    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 351
    move-object v4, v1

    .line 352
    .local v4, "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    return-object v4

    .line 356
    .end local v4    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    :cond_1
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/j256/ormlite/table/DatabaseTable;

    .line 357
    .local v4, "databaseTable":Lcom/j256/ormlite/table/DatabaseTable;
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Void;

    if-eq v5, v6, :cond_4

    .line 358
    invoke-interface {v4}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 362
    :cond_2
    invoke-interface {v4}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v5

    .line 363
    .local v5, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    .line 364
    .local v6, "arguments":[Ljava/lang/Object;
    invoke-static {v5, v6}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 365
    .local v7, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v7, :cond_3

    .line 366
    new-instance v8, Ljava/sql/SQLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find public constructor with ConnectionSource, DatabaseTableConfig parameters in class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 371
    :cond_3
    :try_start_0
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v8

    .line 374
    goto :goto_1

    .line 372
    :catch_0
    move-exception v8

    .line 373
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not call the constructor in class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v9

    throw v9

    .line 359
    .end local v5    # "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "arguments":[Ljava/lang/Object;
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v5

    .line 360
    .local v5, "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    move-object v1, v5

    .line 361
    .end local v5    # "daoTmp":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    nop

    .line 377
    :goto_1
    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 378
    sget-object v5, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v6, "created dao for class {} from table config"

    invoke-virtual {v5, v6, v2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    invoke-static {v3}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v5

    if-nez v5, :cond_5

    .line 382
    invoke-static {v3, v1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 386
    :cond_5
    move-object v5, v1

    .line 387
    .local v5, "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    return-object v5
.end method

.method private static findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 291
    .local p0, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 292
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 293
    .local v5, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v5

    array-length v7, p1

    if-ne v6, v7, :cond_2

    .line 294
    const/4 v6, 0x1

    .line 295
    .local v6, "match":Z
    const/4 v7, 0x0

    .line 295
    .local v7, "i":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_1

    .line 296
    aget-object v8, v5, v7

    aget-object v9, p1, v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 297
    const/4 v6, 0x0

    .line 298
    goto :goto_2

    .line 295
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 301
    .end local v7    # "i":I
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 302
    return-object v4

    .line 291
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "match":Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            ")",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;"
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    .line 270
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    .line 271
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    if-nez v0, :cond_1

    .line 272
    const/4 v1, 0x0

    return-object v1

    .line 274
    :cond_1
    return-object v0
.end method

.method private static lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            ")",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;"
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    .line 282
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    .line 283
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    if-nez v0, :cond_1

    .line 284
    const/4 v1, 0x0

    return-object v1

    .line 286
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized lookupDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 4
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)TD;"
        }
    .end annotation

    .line 138
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 138
    if-nez p0, :cond_0

    .line 139
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 141
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    :cond_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 142
    .local v1, "key":Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    invoke-static {v1}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .local v2, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    if-nez v2, :cond_1

    .line 144
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 147
    :cond_1
    move-object v3, v2

    .line 148
    .local v3, "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    monitor-exit v0

    return-object v3

    .line 137
    .end local v1    # "key":Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    .end local v2    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .end local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized lookupDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 4
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)TD;"
        }
    .end annotation

    .line 109
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 109
    if-nez p0, :cond_0

    .line 110
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 112
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    .line 113
    .local v1, "key":Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    invoke-static {v1}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .local v2, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    move-object v3, v2

    .line 116
    .local v3, "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    monitor-exit v0

    return-object v3

    .line 108
    .end local v1    # "key":Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    .end local v2    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .end local v3    # "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    .line 168
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 168
    if-nez p0, :cond_0

    .line 169
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 171
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :cond_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v1, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit v0

    return-void

    .line 167
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerDaoWithTableConfig(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    .line 190
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 190
    if-nez p0, :cond_0

    .line 191
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 193
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :cond_0
    instance-of v1, p1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v1, :cond_1

    .line 194
    move-object v1, p1

    check-cast v1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v1

    .line 195
    .local v1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    if-eqz v1, :cond_1

    .line 196
    new-instance v2, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v2, p0, v1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    invoke-static {v2, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit v0

    return-void

    .line 200
    .end local v1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    :cond_1
    :try_start_1
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v1, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit v0

    return-void

    .line 189
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private static removeDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    .line 254
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregisterDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    .line 179
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 179
    if-nez p0, :cond_0

    .line 180
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 182
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :cond_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v1, p1}, Lcom/j256/ormlite/dao/DaoManager;->removeDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit v0

    return-void

    .line 178
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :goto_0
    monitor-exit v0

    throw p0
.end method
