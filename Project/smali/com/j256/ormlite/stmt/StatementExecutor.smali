.class public Lcom/j256/ormlite/stmt/StatementExecutor;
.super Ljava/lang/Object;
.source "StatementExecutor.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/StatementExecutor$UserDatabaseResultsMapper;,
        Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;,
        Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;,
        Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static final noFieldTypes:[Lcom/j256/ormlite/field/FieldType;


# instance fields
.field private countStarQuery:Ljava/lang/String;

.field private final dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private ifExistsQuery:Ljava/lang/String;

.field private final localIsInBatchMode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedDelete<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedCreate<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedRefresh<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdate<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdateId<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation
.end field

.field private rawRowMapper:Lcom/j256/ormlite/dao/RawRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RawRowMapper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final tableInfo:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    sput-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/j256/ormlite/stmt/StatementExecutor$1;

    invoke-direct {v0, p0}, Lcom/j256/ormlite/stmt/StatementExecutor$1;-><init>(Lcom/j256/ormlite/stmt/StatementExecutor;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    .line 81
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 82
    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 83
    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 84
    return-void
.end method

.method private assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V
    .locals 3
    .param p1, "compiledStatement"    # Lcom/j256/ormlite/support/CompiledStatement;
    .param p2, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 698
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    const/4 v0, 0x0

    .line 698
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 699
    aget-object v1, p2, v0

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    invoke-interface {p1, v0, v1, v2}, Lcom/j256/ormlite/support/CompiledStatement;->setObject(ILjava/lang/Object;Lcom/j256/ormlite/field/SqlType;)V

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private doCallBatchTasks(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/util/concurrent/Callable<",
            "TCT;>;)TCT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 606
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TCT;>;"
    const/4 v0, 0x0

    .line 607
    .local v0, "saved":Z
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    .line 613
    .local v1, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 618
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    move-result v3

    move v0, v3

    .line 619
    invoke-direct {p0, v1, v0, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->doCallBatchTasks(Lcom/j256/ormlite/support/DatabaseConnection;ZLjava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    if-eqz v0, :cond_0

    .line 622
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 624
    :cond_0
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 625
    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 626
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v2, :cond_1

    .line 628
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 619
    :cond_1
    return-object v3

    .line 621
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 622
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 624
    :cond_2
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 625
    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 626
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v2, :cond_3

    .line 628
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    :cond_3
    throw v3
.end method

.method private doCallBatchTasks(Lcom/j256/ormlite/support/DatabaseConnection;ZLjava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "saved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TCT;>;)TCT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 635
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p3, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TCT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isBatchUseTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-static {p1, p2, v0, p3}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 638
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 640
    .local v1, "resetAutoCommit":Z
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommitSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 641
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 644
    const/4 v1, 0x1

    .line 645
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "disabled auto-commit on table {} before batch tasks"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    :cond_1
    :try_start_1
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    if-eqz v1, :cond_2

    .line 663
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 664
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "re-enabled auto-commit on table {} after batch tasks"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 649
    :cond_2
    return-object v0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Batch tasks callable threw non-SQL exception"

    invoke-static {v3, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 650
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 651
    .local v0, "e":Ljava/sql/SQLException;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    .end local v0    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 663
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 664
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "re-enabled auto-commit on table {} after batch tasks"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private prepareQueryForAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 704
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    .line 707
    :cond_0
    return-void
.end method


# virtual methods
.method public buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;ILcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/stmt/SelectIterator;
    .locals 6
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "resultFlags"    # I
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "I",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/stmt/SelectIterator<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p1, "classDao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/StatementExecutor;->prepareQueryForAll()V

    .line 217
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;

    move-result-object v0

    return-object v0
.end method

.method public buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;
    .locals 16
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .param p5, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/stmt/PreparedStmt<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            "I)",
            "Lcom/j256/ormlite/stmt/SelectIterator<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p1, "classDao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p3, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    .line 243
    iget-object v2, v1, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v12

    .line 244
    .local v12, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v2, 0x0

    .line 246
    .local v2, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v3, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v13, p3

    move/from16 v14, p5

    :try_start_1
    invoke-interface {v13, v12, v3, v14}, Lcom/j256/ormlite/stmt/PreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    .end local v2    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v8, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_2
    new-instance v15, Lcom/j256/ormlite/stmt/SelectIterator;

    iget-object v2, v1, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    .line 248
    invoke-interface/range {p3 .. p3}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v9

    move-object v2, v15

    move-object/from16 v4, p1

    move-object v5, v13

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v10}, Lcom/j256/ormlite/stmt/SelectIterator;-><init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v15

    .line 249
    .local v2, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    const/4 v3, 0x0

    .line 250
    .end local v12    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .local v3, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v4, 0x0

    .line 251
    .end local v8    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v4, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    nop

    .line 253
    const-string v5, "compiled statement"

    invoke-static {v4, v5}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 254
    if-eqz v3, :cond_0

    .line 255
    invoke-interface {v11, v3}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 251
    :cond_0
    return-object v2

    .line 253
    .end local v2    # "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    .end local v3    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .end local v4    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v8    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v12    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 253
    .end local v8    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v2, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v13, p3

    move/from16 v14, p5

    .line 253
    .end local v2    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v8    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :goto_0
    move-object v8, v2

    :goto_1
    move-object v2, v0

    const-string v3, "compiled statement"

    invoke-static {v8, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 254
    if-eqz v12, :cond_1

    .line 255
    invoke-interface {v11, v12}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_1
    throw v2
.end method

.method public callBatchTasks(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/util/concurrent/Callable<",
            "TCT;>;)TCT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 596
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TCT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->isSingleConnection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    monitor-enter p0

    .line 598
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->doCallBatchTasks(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 601
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->doCallBatchTasks(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
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

    .line 455
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->insert(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    .line 459
    .local v0, "result":I
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 462
    :cond_1
    return v0
.end method

.method public delete(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedDelete;)I
    .locals 3
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedDelete<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 580
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedDelete":Lcom/j256/ormlite/stmt/PreparedDelete;, "Lcom/j256/ormlite/stmt/PreparedDelete<TT;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->DELETE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v0}, Lcom/j256/ormlite/stmt/PreparedDelete;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 582
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->runUpdate()I

    move-result v1

    .line 583
    .local v1, "result":I
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 584
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :cond_0
    nop

    .line 588
    const-string v2, "compiled statement"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 586
    return v1

    .line 588
    .end local v1    # "result":I
    :catchall_0
    move-exception v1

    const-string v2, "compiled statement"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
.end method

.method public delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
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

    .line 525
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    .line 529
    .local v0, "result":I
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 532
    :cond_1
    return v0
.end method

.method public deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 539
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    .line 543
    .local v0, "result":I
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 546
    :cond_1
    return v0
.end method

.method public deleteIds(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/util/Collection<",
            "TID;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 569
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "ids":Ljava/util/Collection;, "Ljava/util/Collection<TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->deleteIds(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    .line 570
    .local v0, "result":I
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 573
    :cond_0
    return v0
.end method

.method public deleteObjects(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 555
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "datas":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 556
    invoke-static {v0, v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->deleteObjects(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    .line 557
    .local v0, "result":I
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 560
    :cond_0
    return v0
.end method

.method public executeRaw(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 436
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "running raw execute statement: {}"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 437
    array-length v0, p3

    if-lez v0, :cond_0

    .line 439
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "execute arguments: {}"

    invoke-virtual {v0, v1, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    :cond_0
    sget-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->EXECUTE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v5, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 444
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    invoke-direct {p0, v0, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 445
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->runExecute()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    const-string v2, "compiled statement"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 445
    return v1

    .line 447
    :catchall_0
    move-exception v1

    const-string v2, "compiled statement"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
.end method

.method public executeRawNoArgs(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;)I
    .locals 2
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 428
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "running raw execute statement: {}"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->executeStatement(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRawRowMapper()Lcom/j256/ormlite/dao/RawRowMapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RawRowMapper<",
            "TT;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->rawRowMapper:Lcom/j256/ormlite/dao/RawRowMapper;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/j256/ormlite/stmt/RawRowMapperImpl;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v0, v1}, Lcom/j256/ormlite/stmt/RawRowMapperImpl;-><init>(Lcom/j256/ormlite/table/TableInfo;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->rawRowMapper:Lcom/j256/ormlite/dao/RawRowMapper;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->rawRowMapper:Lcom/j256/ormlite/dao/RawRowMapper;

    return-object v0
.end method

.method public getSelectStarRowMapper()Lcom/j256/ormlite/stmt/GenericRowMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/GenericRowMapper<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 224
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/StatementExecutor;->prepareQueryForAll()V

    .line 225
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-object v0
.end method

.method public ifExists(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 680
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v5, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v0, v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    .line 682
    .local v0, "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "COUNT(*)"

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 687
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v5}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 688
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    .line 689
    new-array v3, v2, [Lcom/j256/ormlite/field/FieldType;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    aput-object v4, v3, v1

    iput-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 691
    .end local v0    # "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 692
    .local v0, "idSqlArg":Ljava/lang/Object;
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    iget-object v5, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, v3, v4, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)J

    move-result-wide v3

    .line 693
    .local v3, "count":J
    sget-object v5, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v6, "query of \'{}\' returned {}"

    iget-object v7, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 694
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public bridge synthetic mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;
    .locals 4
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 671
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->getColumnCount()I

    move-result v0

    .line 672
    .local v0, "columnN":I
    new-array v1, v0, [Ljava/lang/String;

    .line 673
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 673
    .local v2, "colC":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 674
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/DatabaseResults;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 673
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    .end local v2    # "colC":I
    :cond_0
    return-object v1
.end method

.method public query(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;
    .locals 6
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/stmt/PreparedStmt<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    const/4 v1, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;

    move-result-object v0

    .line 200
    .local v0, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNextThrow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/SelectIterator;->nextThrow()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_0
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query of \'{}\' returned {} results"

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    nop

    .line 207
    const-string v2, "iterator"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 205
    return-object v1

    .line 207
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v1

    const-string v2, "iterator"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
.end method

.method public queryForAll(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/StatementExecutor;->prepareQueryForAll()V

    .line 126
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    invoke-virtual {p0, p1, v0, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->query(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForCountStar(Lcom/j256/ormlite/support/DatabaseConnection;)J
    .locals 6
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SELECT COUNT(*) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    .line 139
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 140
    .local v0, "count":J
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query of \'{}\' returned {}"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    return-wide v0
.end method

.method public queryForFirst(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 6
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedStmt<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v0}, Lcom/j256/ormlite/stmt/PreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 103
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    const/4 v1, 0x0

    move-object v2, v1

    .line 105
    .local v2, "results":Lcom/j256/ormlite/support/DatabaseResults;
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v0, v3}, Lcom/j256/ormlite/support/CompiledStatement;->setMaxRows(I)V

    .line 106
    invoke-interface {v0, p3}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v3

    move-object v2, v3

    .line 107
    invoke-interface {v2}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query-for-first of \'{}\' returned at least 1 result"

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    invoke-interface {p2, v2}, Lcom/j256/ormlite/stmt/PreparedStmt;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    const-string v3, "results"

    invoke-static {v2, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 116
    const-string v3, "compiled statement"

    invoke-static {v0, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 109
    return-object v1

    .line 111
    :cond_0
    :try_start_1
    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "query-for-first of \'{}\' returned at 0 results"

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    nop

    .line 115
    const-string v3, "results"

    invoke-static {v2, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 116
    const-string v3, "compiled statement"

    invoke-static {v0, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 112
    return-object v1

    .line 115
    :catchall_0
    move-exception v1

    const-string v3, "results"

    invoke-static {v2, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 116
    const-string v3, "compiled statement"

    invoke-static {v0, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
.end method

.method public queryForId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 3
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->execute(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public queryForLong(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;)J
    .locals 5
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedStmt<",
            "TT;>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v0}, Lcom/j256/ormlite/stmt/PreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 149
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    const/4 v1, 0x0

    move-object v2, v1

    .line 151
    .local v2, "results":Lcom/j256/ormlite/support/DatabaseResults;
    :try_start_0
    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v1

    move-object v2, v1

    .line 152
    invoke-interface {v2}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lcom/j256/ormlite/support/DatabaseResults;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    const-string v1, "results"

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 159
    const-string v1, "compiled statement"

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 153
    return-wide v3

    .line 155
    :cond_0
    :try_start_1
    new-instance v1, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No result found in queryForLong: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :catchall_0
    move-exception v1

    const-string v3, "results"

    invoke-static {v2, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 159
    const-string v3, "compiled statement"

    invoke-static {v0, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
.end method

.method public queryForLong(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 9
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 168
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "executing raw query for long: {}"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    array-length v0, p3

    if-lez v0, :cond_0

    .line 171
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "query arguments: {}"

    invoke-virtual {v0, v1, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 174
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    const/4 v1, 0x0

    move-object v2, v1

    .line 176
    .local v2, "results":Lcom/j256/ormlite/support/DatabaseResults;
    :try_start_0
    sget-object v5, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v6, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v3

    move-object v0, v3

    .line 178
    invoke-direct {p0, v0, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 179
    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v1

    move-object v2, v1

    .line 180
    invoke-interface {v2}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lcom/j256/ormlite/support/DatabaseResults;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const-string v1, "results"

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 187
    const-string v1, "compiled statement"

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 181
    return-wide v3

    .line 183
    :cond_1
    :try_start_1
    new-instance v1, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No result found in queryForLong: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catchall_0
    move-exception v1

    const-string v3, "results"

    invoke-static {v2, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 187
    const-string v3, "compiled statement"

    invoke-static {v0, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Lcom/j256/ormlite/dao/DatabaseResultsMapper;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 16
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "query"    # Ljava/lang/String;
    .param p4, "arguments"    # [Ljava/lang/String;
    .param p5, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/DatabaseResultsMapper<",
            "TUO;>;[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "TUO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 381
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p3, "mapper":Lcom/j256/ormlite/dao/DatabaseResultsMapper;, "Lcom/j256/ormlite/dao/DatabaseResultsMapper<TUO;>;"
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    .line 381
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "executing raw query for: {}"

    move-object/from16 v12, p2

    invoke-virtual {v2, v3, v12}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    array-length v2, v11

    if-lez v2, :cond_0

    .line 384
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query arguments: {}"

    invoke-virtual {v2, v3, v11}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    :cond_0
    iget-object v2, v1, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v13

    .line 387
    .local v13, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v2, 0x0

    move-object v3, v2

    .line 389
    .local v3, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v6, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v7, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v13

    move-object v5, v12

    invoke-interface/range {v4 .. v9}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, v4

    .line 391
    .end local v3    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v14, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_1
    invoke-direct {v1, v14, v11}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 392
    new-instance v15, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v6, [Ljava/lang/Object;

    new-instance v8, Lcom/j256/ormlite/stmt/StatementExecutor$UserDatabaseResultsMapper;

    move-object/from16 v9, p3

    invoke-direct {v8, v9, v2}, Lcom/j256/ormlite/stmt/StatementExecutor$UserDatabaseResultsMapper;-><init>(Lcom/j256/ormlite/dao/DatabaseResultsMapper;Lcom/j256/ormlite/stmt/StatementExecutor$1;)V

    move-object v2, v15

    move-object v3, v10

    move-object v4, v13

    move-object v5, v12

    move-object v7, v14

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v15

    .line 394
    .local v2, "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TUO;>;"
    const/4 v3, 0x0

    .line 395
    .end local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v3    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    const/4 v4, 0x0

    .line 396
    .end local v13    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .local v4, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    nop

    .line 398
    const-string v5, "compiled statement"

    invoke-static {v3, v5}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 399
    if-eqz v4, :cond_1

    .line 400
    invoke-interface {v10, v4}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 396
    :cond_1
    return-object v2

    .line 398
    .end local v2    # "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TUO;>;"
    .end local v3    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .end local v4    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .restart local v13    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .restart local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_0

    .line 398
    .end local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v3    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v14, v3

    .line 398
    .end local v3    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :goto_0
    const-string v3, "compiled statement"

    invoke-static {v14, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 399
    if-eqz v13, :cond_2

    .line 400
    invoke-interface {v10, v13}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_2
    throw v2
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 16
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "query"    # Ljava/lang/String;
    .param p4, "arguments"    # [Ljava/lang/String;
    .param p5, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/RawRowMapper<",
            "TUO;>;[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "TUO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 294
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p3, "rowMapper":Lcom/j256/ormlite/dao/RawRowMapper;, "Lcom/j256/ormlite/dao/RawRowMapper<TUO;>;"
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    .line 294
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "executing raw query for: {}"

    move-object/from16 v12, p2

    invoke-virtual {v2, v3, v12}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    array-length v2, v11

    if-lez v2, :cond_0

    .line 297
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query arguments: {}"

    invoke-virtual {v2, v3, v11}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    :cond_0
    iget-object v2, v1, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v13

    .line 300
    .local v13, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v2, 0x0

    .line 302
    .local v2, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v6, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v7, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v13

    move-object v5, v12

    invoke-interface/range {v4 .. v9}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, v3

    .line 304
    .end local v2    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v14, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_1
    invoke-direct {v1, v14, v11}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 305
    new-instance v15, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v6, [Ljava/lang/String;

    new-instance v8, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;

    move-object/from16 v9, p3

    invoke-direct {v8, v9, v1}, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;-><init>(Lcom/j256/ormlite/dao/RawRowMapper;Lcom/j256/ormlite/stmt/GenericRowMapper;)V

    move-object v2, v15

    move-object v3, v10

    move-object v4, v13

    move-object v5, v12

    move-object v7, v14

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v15

    .line 307
    .local v2, "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TUO;>;"
    const/4 v3, 0x0

    .line 308
    .end local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v3, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    const/4 v4, 0x0

    .line 309
    .end local v13    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .local v4, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    nop

    .line 311
    const-string v5, "compiled statement"

    invoke-static {v3, v5}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 312
    if-eqz v4, :cond_1

    .line 313
    invoke-interface {v10, v4}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 309
    :cond_1
    return-object v2

    .line 311
    .end local v2    # "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TUO;>;"
    .end local v3    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .end local v4    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .restart local v13    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .restart local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 311
    .end local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v2, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_1
    move-exception v0

    move-object v14, v2

    .line 311
    .end local v2    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :goto_0
    move-object v2, v0

    const-string v3, "compiled statement"

    invoke-static {v14, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 312
    if-eqz v13, :cond_2

    .line 313
    invoke-interface {v10, v13}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_2
    throw v2
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;Lcom/j256/ormlite/dao/RawRowObjectMapper;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 16
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "columnTypes"    # [Lcom/j256/ormlite/field/DataType;
    .param p5, "arguments"    # [Ljava/lang/String;
    .param p6, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/DataType;",
            "Lcom/j256/ormlite/dao/RawRowObjectMapper<",
            "TUO;>;[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "TUO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 323
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p4, "rowMapper":Lcom/j256/ormlite/dao/RawRowObjectMapper;, "Lcom/j256/ormlite/dao/RawRowObjectMapper<TUO;>;"
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p5

    .line 323
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "executing raw query for: {}"

    move-object/from16 v12, p2

    invoke-virtual {v2, v3, v12}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    array-length v2, v11

    if-lez v2, :cond_0

    .line 326
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query arguments: {}"

    invoke-virtual {v2, v3, v11}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    :cond_0
    iget-object v2, v1, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v13

    .line 329
    .local v13, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v2, 0x0

    .line 331
    .local v2, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v6, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v7, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v13

    move-object v5, v12

    invoke-interface/range {v4 .. v9}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, v3

    .line 333
    .end local v2    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v14, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_1
    invoke-direct {v1, v14, v11}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 334
    new-instance v15, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v6, [Ljava/lang/String;

    new-instance v8, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;

    move-object/from16 v9, p3

    move-object/from16 v7, p4

    invoke-direct {v8, v7, v9}, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;-><init>(Lcom/j256/ormlite/dao/RawRowObjectMapper;[Lcom/j256/ormlite/field/DataType;)V

    move-object v2, v15

    move-object v3, v10

    move-object v4, v13

    move-object v5, v12

    move-object v7, v14

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v15

    .line 336
    .local v2, "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TUO;>;"
    const/4 v3, 0x0

    .line 337
    .end local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v3, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    const/4 v4, 0x0

    .line 338
    .end local v13    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .local v4, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    nop

    .line 340
    const-string v5, "compiled statement"

    invoke-static {v3, v5}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 341
    if-eqz v4, :cond_1

    .line 342
    invoke-interface {v10, v4}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 338
    :cond_1
    return-object v2

    .line 340
    .end local v2    # "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TUO;>;"
    .end local v3    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .end local v4    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .restart local v13    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .restart local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 340
    .end local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v2, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_1
    move-exception v0

    move-object v14, v2

    .line 340
    .end local v2    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :goto_0
    move-object v2, v0

    const-string v3, "compiled statement"

    invoke-static {v14, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 341
    if-eqz v13, :cond_2

    .line 342
    invoke-interface {v10, v13}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_2
    throw v2
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 16
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "columnTypes"    # [Lcom/j256/ormlite/field/DataType;
    .param p4, "arguments"    # [Ljava/lang/String;
    .param p5, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/DataType;",
            "[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 352
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    .line 352
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "executing raw query for: {}"

    move-object/from16 v12, p2

    invoke-virtual {v2, v3, v12}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    array-length v2, v11

    if-lez v2, :cond_0

    .line 355
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query arguments: {}"

    invoke-virtual {v2, v3, v11}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    :cond_0
    iget-object v2, v1, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v13

    .line 358
    .local v13, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v2, 0x0

    .line 360
    .local v2, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v6, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v7, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v13

    move-object v5, v12

    invoke-interface/range {v4 .. v9}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, v3

    .line 362
    .end local v2    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v14, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_1
    invoke-direct {v1, v14, v11}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 363
    new-instance v15, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v6, [Ljava/lang/Object;

    new-instance v8, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;

    move-object/from16 v9, p3

    invoke-direct {v8, v9}, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;-><init>([Lcom/j256/ormlite/field/DataType;)V

    move-object v2, v15

    move-object v3, v10

    move-object v4, v13

    move-object v5, v12

    move-object v7, v14

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v15

    .line 365
    .local v2, "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<[Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 366
    .end local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v3, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    const/4 v4, 0x0

    .line 367
    .end local v13    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .local v4, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    nop

    .line 369
    const-string v5, "compiled statement"

    invoke-static {v3, v5}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 370
    if-eqz v4, :cond_1

    .line 371
    invoke-interface {v10, v4}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 367
    :cond_1
    return-object v2

    .line 369
    .end local v2    # "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<[Ljava/lang/Object;>;"
    .end local v3    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .end local v4    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .restart local v13    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .restart local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 369
    .end local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v2, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_1
    move-exception v0

    move-object v14, v2

    .line 369
    .end local v2    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v14    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :goto_0
    move-object v2, v0

    const-string v3, "compiled statement"

    invoke-static {v14, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 370
    if-eqz v13, :cond_2

    .line 371
    invoke-interface {v10, v13}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_2
    throw v2
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 11
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/String;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 265
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "executing raw query for: {}"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    array-length v0, p3

    if-lez v0, :cond_0

    .line 268
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "query arguments: {}"

    invoke-virtual {v0, v1, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 271
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v1, 0x0

    move-object v7, v1

    .line 273
    .local v7, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v3, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v4, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v1

    .line 275
    .end local v7    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v9, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_1
    invoke-direct {p0, v9, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 276
    new-instance v10, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v5, [Ljava/lang/String;

    move-object v1, v10

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move-object v6, v9

    move-object v7, p0

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v10

    .line 278
    .local v1, "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<[Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 279
    .end local v9    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .local v2, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    const/4 v0, 0x0

    .line 280
    nop

    .line 282
    const-string v3, "compiled statement"

    invoke-static {v2, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 283
    if-eqz v0, :cond_1

    .line 284
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 280
    :cond_1
    return-object v1

    .line 282
    .end local v1    # "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<[Ljava/lang/String;>;"
    .end local v2    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v9    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 282
    .end local v9    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v7    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :catchall_1
    move-exception v1

    move-object v9, v7

    .line 282
    .end local v7    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    .restart local v9    # "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :goto_0
    const-string v2, "compiled statement"

    invoke-static {v9, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 283
    if-eqz v0, :cond_2

    .line 284
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_2
    throw v1
.end method

.method public refresh(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
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

    .line 515
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->executeRefresh(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    return v0
.end method

.method public update(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    .locals 3
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedUpdate<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 498
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedUpdate":Lcom/j256/ormlite/stmt/PreparedUpdate;, "Lcom/j256/ormlite/stmt/PreparedUpdate<TT;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v0}, Lcom/j256/ormlite/stmt/PreparedUpdate;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 500
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->runUpdate()I

    move-result v1

    .line 501
    .local v1, "result":I
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :cond_0
    nop

    .line 506
    const-string v2, "compiled statement"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 504
    return v1

    .line 506
    .end local v1    # "result":I
    :catchall_0
    move-exception v1

    const-string v2, "compiled statement"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
.end method

.method public update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
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

    .line 469
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    .line 473
    .local v0, "result":I
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 476
    :cond_1
    return v0
.end method

.method public updateId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 484
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    .local p3, "newId":Ljava/lang/Object;, "TID;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;->execute(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    .line 488
    .local v0, "result":I
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 491
    :cond_1
    return v0
.end method

.method public updateRaw(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 409
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "running raw update statement: {}"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    array-length v0, p3

    if-lez v0, :cond_0

    .line 412
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "update arguments: {}"

    invoke-virtual {v0, v1, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :cond_0
    sget-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v5, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 417
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    invoke-direct {p0, v0, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 418
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->runUpdate()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    const-string v2, "compiled statement"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 418
    return v1

    .line 420
    :catchall_0
    move-exception v1

    const-string v2, "compiled statement"

    invoke-static {v0, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
.end method
