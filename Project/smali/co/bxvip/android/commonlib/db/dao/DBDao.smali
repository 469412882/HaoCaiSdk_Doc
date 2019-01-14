.class public interface abstract Lco/bxvip/android/commonlib/db/dao/DBDao;
.super Ljava/lang/Object;
.source "DBDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract add(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract add(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation
.end method

.method public abstract addIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract addOrUpdate(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract addOrUpdate(Ljava/util/List;)Lco/bxvip/android/commonlib/db/info/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract asyncTask(Lco/bxvip/android/commonlib/db/callback/DBRun;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lco/bxvip/android/commonlib/db/callback/DBRun<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TCT;>;)TCT;"
        }
    .end annotation
.end method

.method public abstract callInTransaction(Ljava/util/concurrent/Callable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract clearTable()I
.end method

.method public abstract countOf()J
.end method

.method public abstract countOf(Lco/bxvip/android/commonlib/db/info/WhereInfo;)J
.end method

.method public abstract delete(Lco/bxvip/android/commonlib/db/info/WhereInfo;)I
.end method

.method public abstract delete(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract delete(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation
.end method

.method public abstract deleteAll()I
.end method

.method public abstract dropTable()I
.end method

.method public varargs abstract executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract fetchDao()Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract findByKeyValues([Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public varargs abstract findListByKeyValues([Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract findTopOne()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract isExist(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Z
.end method

.method public abstract query(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract query(Lcom/j256/ormlite/stmt/QueryBuilder;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract queryAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract queryAll(Lco/bxvip/android/commonlib/db/info/OrderInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/OrderInfo;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract queryLimit(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract update(Lco/bxvip/android/commonlib/db/info/WhereInfo;)I
.end method

.method public abstract update(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
