.class public Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;
.super Ljava/lang/Object;
.source "DBProxyHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# instance fields
.field private dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private databaseName:Ljava/lang/String;

.field private helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;Lcom/j256/ormlite/dao/Dao;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "helper"    # Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .param p4, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;, "Lco/bxvip/android/commonlib/db/handler/DBProxyHandler<TT;>;"
    .local p2, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;Ljava/lang/Long;>;"
    .local p3, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 34
    iput-object p2, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 35
    iput-object p3, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->mClass:Ljava/lang/Class;

    .line 36
    iput-object p4, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->databaseName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private checkTable()V
    .locals 4

    .line 104
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;, "Lco/bxvip/android/commonlib/db/handler/DBProxyHandler<TT;>;"
    :try_start_0
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->isTableExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->mClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Landroid/database/sqlite/SQLiteDiskIOException;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 115
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    .line 117
    :try_start_1
    iget-object v2, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    iget-object v3, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->mClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 118
    iget-object v2, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->isTableExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    iget-object v2, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    iget-object v3, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->mClass:Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :cond_1
    goto :goto_0

    .line 121
    :catch_1
    move-exception v2

    .line 122
    .local v2, "e1":Ljava/sql/SQLException;
    invoke-virtual {v2}, Ljava/sql/SQLException;->printStackTrace()V

    .line 124
    .end local v2    # "e1":Ljava/sql/SQLException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6062\u590d\u6570\u636e\u5e93\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->databaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->showErr(Ljava/lang/String;)V

    .line 125
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private doAfter(Ljava/lang/reflect/Method;Ljava/lang/Object;J)V
    .locals 7
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "startTime"    # J

    .line 65
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;, "Lco/bxvip/android/commonlib/db/handler/DBProxyHandler<TT;>;"
    if-eqz p2, :cond_5

    .line 66
    instance-of v0, p2, Lco/bxvip/android/commonlib/db/info/Result;

    if-eqz v0, :cond_5

    .line 67
    move-object v0, p2

    check-cast v0, Lco/bxvip/android/commonlib/db/info/Result;

    .line 68
    .local v0, "real":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->getTime()J

    move-result-wide v3

    sub-long v5, v3, p3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms] \u5f71\u54cd\u884c\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->showLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getType()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->getTime()J

    move-result-wide v3

    sub-long v5, v3, p3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms] \u5f71\u54cd\u884c\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->showLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getType()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->getTime()J

    move-result-wide v3

    sub-long v5, v3, p3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms] \u5f71\u54cd\u884c\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->showLog(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    const/4 v2, 0x5

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getType()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->getTime()J

    move-result-wide v3

    sub-long v5, v3, p3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms] \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->isExist()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->showLog(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->getTime()J

    move-result-wide v3

    sub-long v5, v3, p3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->showLog(Ljava/lang/String;)V

    .line 81
    :goto_0
    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 82
    .local v2, "exception":Ljava/lang/Exception;
    if-eqz v2, :cond_5

    .line 83
    instance-of v3, v2, Ljava/lang/ClassCastException;

    if-eqz v3, :cond_4

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5217\u503c\u7c7b\u578b\u4e0d\u6b63\u786e\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->showErr(Ljava/lang/String;)V

    .line 86
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .end local v0    # "real":Lco/bxvip/android/commonlib/db/info/Result;, "Lco/bxvip/android/commonlib/db/info/Result<TT;>;"
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method private doBefore()V
    .locals 0

    .line 58
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;, "Lco/bxvip/android/commonlib/db/handler/DBProxyHandler<TT;>;"
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->prepareDeal()V

    .line 59
    return-void
.end method

.method private getTime()J
    .locals 2

    .line 175
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;, "Lco/bxvip/android/commonlib/db/handler/DBProxyHandler<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private prepareDeal()V
    .locals 0

    .line 96
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;, "Lco/bxvip/android/commonlib/db/handler/DBProxyHandler<TT;>;"
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->checkTable()V

    .line 97
    return-void
.end method

.method private showErr(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 187
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;, "Lco/bxvip/android/commonlib/db/handler/DBProxyHandler<TT;>;"
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getShowDBLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getLogTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->mClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->databaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    return-void
.end method

.method private showLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 182
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;, "Lco/bxvip/android/commonlib/db/handler/DBProxyHandler<TT;>;"
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getShowDBLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getLogTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->mClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->databaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public getProxy(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/dao/RealBaseDao;
    .locals 2
    .param p1, "targetObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lco/bxvip/android/commonlib/db/dao/RealBaseDao<",
            "TT;>;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;, "Lco/bxvip/android/commonlib/db/handler/DBProxyHandler<TT;>;"
    iput-object p1, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->obj:Ljava/lang/Object;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "proxy":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    return-object v1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    .local p0, "this":Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;, "Lco/bxvip/android/commonlib/db/handler/DBProxyHandler<TT;>;"
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->getTime()J

    move-result-wide v0

    .line 48
    .local v0, "startTime":J
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->doBefore()V

    .line 49
    iget-object v2, p0, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    .local v2, "result":Ljava/lang/Object;
    invoke-direct {p0, p2, v2, v0, v1}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->doAfter(Ljava/lang/reflect/Method;Ljava/lang/Object;J)V

    .line 51
    return-object v2
.end method
