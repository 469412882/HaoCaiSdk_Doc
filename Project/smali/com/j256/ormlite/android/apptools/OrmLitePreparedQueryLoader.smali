.class public Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;
.super Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;
.source "OrmLitePreparedQueryLoader.java"


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


# instance fields
.field private preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;, "Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader<TT;TID;>;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/PreparedQuery;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;, "Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader<TT;TID;>;"
    .local p2, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    .local p3, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;-><init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;)V

    .line 28
    iput-object p3, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    .line 29
    return-void
.end method


# virtual methods
.method public getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;, "Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 18
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;, "Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->loadInBackground()Ljava/util/List;

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

    .line 33
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;, "Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dao is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PreparedQuery is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public setPreparedQuery(Lcom/j256/ormlite/stmt/PreparedQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;, "Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    iput-object p1, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    .line 50
    return-void
.end method
