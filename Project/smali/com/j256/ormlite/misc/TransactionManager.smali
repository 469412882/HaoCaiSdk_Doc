.class public Lcom/j256/ormlite/misc/TransactionManager;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/misc/TransactionManager$TransactionLevel;
    }
.end annotation


# static fields
.field private static final SAVE_POINT_PREFIX:Ljava/lang/String; = "ORMLITE"

.field private static final logger:Lcom/j256/ormlite/logger/Logger;

.field private static final savePointCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final transactionLevelThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/j256/ormlite/misc/TransactionManager$TransactionLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connectionSource:Lcom/j256/ormlite/support/ConnectionSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/j256/ormlite/misc/TransactionManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/j256/ormlite/misc/TransactionManager;->savePointCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    new-instance v0, Lcom/j256/ormlite/misc/TransactionManager$1;

    invoke-direct {v0}, Lcom/j256/ormlite/misc/TransactionManager$1;-><init>()V

    sput-object v0, Lcom/j256/ormlite/misc/TransactionManager;->transactionLevelThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/j256/ormlite/misc/TransactionManager;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 92
    invoke-virtual {p0}, Lcom/j256/ormlite/misc/TransactionManager;->initialize()V

    .line 93
    return-void
.end method

.method public static callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 158
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Ljava/lang/String;Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callInTransaction(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p0, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 197
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callInTransaction(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 9
    .param p0, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p1, "saved"    # Z
    .param p2, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Z",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 213
    .local p3, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, "restoreAutoCommit":Z
    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->transactionLevelThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/misc/TransactionManager$TransactionLevel;

    .line 216
    .local v1, "levelCount":Lcom/j256/ormlite/misc/TransactionManager$TransactionLevel;
    const/4 v2, 0x0

    .line 217
    .local v2, "hasSavePoint":Z
    const/4 v3, 0x0

    .line 218
    .local v3, "savePoint":Ljava/sql/Savepoint;
    const/4 v4, 0x1

    if-nez p1, :cond_0

    :try_start_0
    invoke-interface {p2}, Lcom/j256/ormlite/db/DatabaseType;->isNestedSavePointsSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 273
    .end local v2    # "hasSavePoint":Z
    .end local v3    # "savePoint":Ljava/sql/Savepoint;
    :catchall_0
    move-exception v2

    goto/16 :goto_5

    .line 219
    .restart local v2    # "hasSavePoint":Z
    .restart local v3    # "savePoint":Ljava/sql/Savepoint;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommitSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    invoke-interface {p0}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommit()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 223
    const/4 v0, 0x1

    .line 224
    sget-object v5, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v6, "had to set auto-commit to false"

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;)V

    .line 227
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ORMLITE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/j256/ormlite/misc/TransactionManager;->savePointCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object v5

    move-object v3, v5

    .line 228
    if-nez v3, :cond_2

    .line 229
    sget-object v5, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v6, "started savePoint transaction"

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_2
    sget-object v5, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v6, "started savePoint transaction {}"

    invoke-interface {v3}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :goto_1
    const/4 v2, 0x1

    .line 236
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/j256/ormlite/misc/TransactionManager$TransactionLevel;->incrementAndGet()I

    .line 237
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5

    .line 238
    .local v5, "result":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_5

    .line 240
    invoke-virtual {v1}, Lcom/j256/ormlite/misc/TransactionManager$TransactionLevel;->decrementAndGet()I

    move-result v6

    if-gtz v6, :cond_4

    .line 241
    invoke-static {p0, v3}, Lcom/j256/ormlite/misc/TransactionManager;->commit(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V

    .line 242
    sget-object v6, Lcom/j256/ormlite/misc/TransactionManager;->transactionLevelThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2

    .line 245
    :cond_4
    invoke-static {p0, v3}, Lcom/j256/ormlite/misc/TransactionManager;->release(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :cond_5
    :goto_2
    nop

    .line 273
    if-eqz v0, :cond_6

    .line 275
    invoke-interface {p0, v4}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 276
    sget-object v4, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v6, "restored auto-commit to true"

    invoke-virtual {v4, v6}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;)V

    .line 248
    :cond_6
    return-object v5

    .line 260
    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v5

    .line 261
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Lcom/j256/ormlite/misc/TransactionManager$TransactionLevel;->decrementAndGet()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    if-eqz v2, :cond_7

    .line 264
    :try_start_3
    invoke-static {p0, v3}, Lcom/j256/ormlite/misc/TransactionManager;->rollBack(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    goto :goto_3

    .line 265
    :catch_1
    move-exception v6

    .line 266
    .local v6, "e2":Ljava/sql/SQLException;
    :try_start_4
    sget-object v7, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v8, "after commit exception, rolling back to save-point also threw exception"

    invoke-virtual {v7, v5, v8}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 270
    .end local v6    # "e2":Ljava/sql/SQLException;
    :cond_7
    :goto_3
    const-string v6, "Transaction callable threw non-SQL exception"

    invoke-static {v6, v5}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v6

    throw v6

    .line 249
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 250
    .local v5, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Lcom/j256/ormlite/misc/TransactionManager$TransactionLevel;->decrementAndGet()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    if-eqz v2, :cond_8

    .line 253
    :try_start_5
    invoke-static {p0, v3}, Lcom/j256/ormlite/misc/TransactionManager;->rollBack(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 257
    goto :goto_4

    .line 254
    :catch_3
    move-exception v6

    .line 255
    .restart local v6    # "e2":Ljava/sql/SQLException;
    :try_start_6
    sget-object v7, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v8, "after commit exception, rolling back to save-point also threw exception"

    invoke-virtual {v7, v5, v8}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 259
    .end local v6    # "e2":Ljava/sql/SQLException;
    :cond_8
    :goto_4
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 273
    .end local v2    # "hasSavePoint":Z
    .end local v3    # "savePoint":Ljava/sql/Savepoint;
    .end local v5    # "e":Ljava/sql/SQLException;
    :goto_5
    if-eqz v0, :cond_9

    .line 275
    invoke-interface {p0, v4}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 276
    sget-object v3, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "restored auto-commit to true"

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;)V

    :cond_9
    throw v2
.end method

.method public static callInTransaction(Ljava/lang/String;Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 174
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-interface {p1, p0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 176
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    move-result v1

    .line 177
    .local v1, "saved":Z
    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 181
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 177
    return-object v2

    .line 180
    .end local v1    # "saved":Z
    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 181
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method private static commit(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    .locals 3
    .param p0, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p1, "savePoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 286
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-interface {p0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    .line 288
    if-nez v0, :cond_1

    .line 289
    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "committed savePoint transaction"

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1

    .line 291
    :cond_1
    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "committed savePoint transaction {}"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    :goto_1
    return-void
.end method

.method private static release(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    .locals 3
    .param p0, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p1, "savePoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 296
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-interface {p0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->releaseSavePoint(Ljava/sql/Savepoint;)V

    .line 298
    if-nez v0, :cond_1

    .line 299
    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "released savePoint transaction"

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_1
    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "released savePoint transaction {}"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    :goto_1
    return-void
.end method

.method private static rollBack(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    .locals 3
    .param p0, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p1, "savePoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 306
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-interface {p0, p1}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V

    .line 308
    if-nez v0, :cond_1

    .line 309
    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "rolled back savePoint transaction"

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_1
    sget-object v1, Lcom/j256/ormlite/misc/TransactionManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "rolled back savePoint transaction {}"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    :goto_1
    return-void
.end method


# virtual methods
.method public callInTransaction(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 143
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/misc/TransactionManager;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {p1, v0, p2}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Ljava/lang/String;Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 129
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/misc/TransactionManager;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {v0, p1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/j256/ormlite/misc/TransactionManager;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataSource was not set on "

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

    .line 102
    :cond_0
    return-void
.end method

.method public setConnectionSource(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;

    .line 282
    iput-object p1, p0, Lcom/j256/ormlite/misc/TransactionManager;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 283
    return-void
.end method
