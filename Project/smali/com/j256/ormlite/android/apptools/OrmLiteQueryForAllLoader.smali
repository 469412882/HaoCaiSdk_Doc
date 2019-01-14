.class public Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader;
.super Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;
.source "OrmLiteQueryForAllLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader<",
        "TT;TID;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader<TT;TID;>;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader<TT;TID;>;"
    .local p2, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;-><init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;)V

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 17
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dao is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
