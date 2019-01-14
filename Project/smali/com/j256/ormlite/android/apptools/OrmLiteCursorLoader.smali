.class public Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "OrmLiteCursorLoader.java"

# interfaces
.implements Lcom/j256/ormlite/dao/Dao$DaoObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/j256/ormlite/dao/Dao$DaoObserver;"
    }
.end annotation


# instance fields
.field protected cursor:Landroid/database/Cursor;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;"
        }
    .end annotation
.end field

.field protected query:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/PreparedQuery;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    .local p2, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    .local p3, "query":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 36
    iput-object p3, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->query:Lcom/j256/ormlite/stmt/PreparedQuery;

    .line 37
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .line 57
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    .line 66
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    .line 68
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 73
    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_3
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 27
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public getQuery()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->query:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    .line 43
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 44
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    iget-object v1, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->query:Lcom/j256/ormlite/stmt/PreparedQuery;

    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {v1, v0, v2}, Lcom/j256/ormlite/stmt/PreparedQuery;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/android/AndroidCompiledStatement;

    .line 45
    .local v1, "statement":Lcom/j256/ormlite/android/AndroidCompiledStatement;
    invoke-virtual {v1}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->getCursor()Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    .end local v1    # "statement":Lcom/j256/ormlite/android/AndroidCompiledStatement;
    move-object v0, v2

    .line 48
    .local v0, "cursor":Landroid/database/Cursor;
    nop

    .line 47
    nop

    .line 51
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 52
    return-object v0

    .line 46
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 27
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 100
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 27
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method public onChange()V
    .locals 0

    .line 122
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->onContentChanged()V

    .line 123
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 107
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 108
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->onStopLoading()V

    .line 109
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->unregisterObserver(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V

    .line 118
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 81
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->registerObserver(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V

    .line 83
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->forceLoad()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 87
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->takeContentChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->forceLoad()V

    .line 91
    :cond_1
    :goto_0
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 95
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cancelLoad()Z

    .line 96
    return-void
.end method

.method public setQuery(Lcom/j256/ormlite/stmt/PreparedQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)V"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader<TT;>;"
    .local p1, "mQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    iput-object p1, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->query:Lcom/j256/ormlite/stmt/PreparedQuery;

    .line 131
    return-void
.end method
