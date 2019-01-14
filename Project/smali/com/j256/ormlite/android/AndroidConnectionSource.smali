.class public Lcom/j256/ormlite/android/AndroidConnectionSource;
.super Lcom/j256/ormlite/support/BaseConnectionSource;
.source "AndroidConnectionSource.java"

# interfaces
.implements Lcom/j256/ormlite/support/ConnectionSource;


# static fields
.field private static connectionProxyFactory:Lcom/j256/ormlite/support/DatabaseConnectionProxyFactory;

.field private static final logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private cancelQueriesEnabled:Z

.field private connection:Lcom/j256/ormlite/support/DatabaseConnection;

.field private final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private final helper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private volatile isOpen:Z

.field private final sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "sqliteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    invoke-direct {p0}, Lcom/j256/ormlite/support/BaseConnectionSource;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->isOpen:Z

    .line 33
    new-instance v1, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v1}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->cancelQueriesEnabled:Z

    .line 43
    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 44
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2
    .param p1, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .line 37
    invoke-direct {p0}, Lcom/j256/ormlite/support/BaseConnectionSource;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->isOpen:Z

    .line 33
    new-instance v1, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v1}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->cancelQueriesEnabled:Z

    .line 38
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 39
    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    return-void
.end method

.method public static setDatabaseConnectionProxyFactory(Lcom/j256/ormlite/support/DatabaseConnectionProxyFactory;)V
    .locals 0
    .param p0, "connectionProxyFactory"    # Lcom/j256/ormlite/support/DatabaseConnectionProxyFactory;

    .line 131
    sput-object p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connectionProxyFactory:Lcom/j256/ormlite/support/DatabaseConnectionProxyFactory;

    .line 132
    return-void
.end method


# virtual methods
.method public clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;

    .line 98
    sget-object v0, Lcom/j256/ormlite/android/AndroidConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    invoke-virtual {p0, p1, v0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->clearSpecial(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/logger/Logger;)Z

    .line 99
    return-void
.end method

.method public close()V
    .locals 1

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->isOpen:Z

    .line 105
    return-void
.end method

.method public closeQuietly()V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->close()V

    .line 110
    return-void
.end method

.method public getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    return-object v0
.end method

.method public getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/AndroidConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    return-object v0
.end method

.method public getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 6
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->getSavedConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 61
    .local v0, "conn":Lcom/j256/ormlite/support/DatabaseConnection;
    if-eqz v0, :cond_0

    .line 62
    return-object v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .line 69
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Landroid/database/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting a writable database from helper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 73
    .end local v1    # "e":Landroid/database/SQLException;
    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    new-instance v2, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->cancelQueriesEnabled:Z

    invoke-direct {v2, v1, v3, v4}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;-><init>(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    iput-object v2, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 76
    sget-object v2, Lcom/j256/ormlite/android/AndroidConnectionSource;->connectionProxyFactory:Lcom/j256/ormlite/support/DatabaseConnectionProxyFactory;

    if-eqz v2, :cond_2

    .line 77
    sget-object v2, Lcom/j256/ormlite/android/AndroidConnectionSource;->connectionProxyFactory:Lcom/j256/ormlite/support/DatabaseConnectionProxyFactory;

    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    invoke-interface {v2, v3}, Lcom/j256/ormlite/support/DatabaseConnectionProxyFactory;->createProxy(Lcom/j256/ormlite/support/DatabaseConnection;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 79
    :cond_2
    sget-object v2, Lcom/j256/ormlite/android/AndroidConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "created connection {} for db {}, helper {}"

    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    iget-object v5, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1

    .line 81
    :cond_3
    sget-object v1, Lcom/j256/ormlite/android/AndroidConnectionSource;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "{}: returning read-write connection {}, helper {}"

    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    :goto_1
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    return-object v1
.end method

.method public isCancelQueriesEnabled()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->cancelQueriesEnabled:Z

    return v0
.end method

.method public isOpen(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .line 119
    iget-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->isOpen:Z

    return v0
.end method

.method public isSingleConnection(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;

    .line 89
    return-void
.end method

.method public saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 1
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/AndroidConnectionSource;->saveSpecial(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    move-result v0

    return v0
.end method

.method public setCancelQueriesEnabled(Z)V
    .locals 0
    .param p1, "cancelQueriesEnabled"    # Z

    .line 147
    iput-boolean p1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->cancelQueriesEnabled:Z

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
