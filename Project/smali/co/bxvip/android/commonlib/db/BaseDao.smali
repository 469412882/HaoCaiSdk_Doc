.class public Lco/bxvip/android/commonlib/db/BaseDao;
.super Ljava/lang/Object;
.source "BaseDao.kt"

# interfaces
.implements Lco/bxvip/android/commonlib/db/dao/DBDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lco/bxvip/android/commonlib/db/dao/DBDao<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDao.kt\nco/bxvip/android/commonlib/db/BaseDao\n*L\n1#1,178:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0016\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0016J\u0017\u0010\u0011\u001a\u0004\u0018\u00018\u00002\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000eJ\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0016J\u001c\u0010\u0016\u001a\u00020\u0017\"\u0004\u0008\u0001\u0010\u00012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0019H\u0016J#\u0010\u001a\u001a\u0004\u0018\u0001H\u001b\"\u0004\u0008\u0001\u0010\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0\u001dH\u0016\u00a2\u0006\u0002\u0010\u001eJ\u0016\u0010\u001f\u001a\u00020\u00172\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dH\u0016J\u0008\u0010 \u001a\u00020\u000cH\u0016J\u0008\u0010!\u001a\u00020\u0008H\u0016J\u0010\u0010!\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020#H\u0016J\u0015\u0010$\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010$\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020#H\u0016J\u0016\u0010$\u001a\u00020\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0016J\u0008\u0010%\u001a\u00020\u000cH\u0016J\u0008\u0010&\u001a\u00020\u000cH\u0016J)\u0010\'\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\n2\u0012\u0010)\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0*\"\u00020\nH\u0016\u00a2\u0006\u0002\u0010+J\u0016\u0010,\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0016J\u000e\u0010-\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0016J#\u0010.\u001a\u0004\u0018\u00018\u00002\u0012\u0010/\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0*\"\u00020\nH\u0016\u00a2\u0006\u0002\u00100J\'\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0012\u0010/\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0*\"\u00020\nH\u0016\u00a2\u0006\u0002\u00102J\u000f\u00103\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u00104J\u0008\u00105\u001a\u00020\nH\u0016J\u0010\u00106\u001a\u0002072\u0006\u0010\"\u001a\u00020#H\u0016J\u0016\u00108\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\"\u001a\u00020#H\u0016J\"\u00108\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0:H\u0016J\u000e\u0010;\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0016J\u0016\u0010;\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010<\u001a\u00020=H\u0016J\u0016\u0010>\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\"\u001a\u00020#H\u0016J\u0015\u0010?\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010?\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020#H\u0016R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/db/BaseDao;",
        "T",
        "Lco/bxvip/android/commonlib/db/dao/DBDao;",
        "()V",
        "baseDao",
        "Lco/bxvip/android/commonlib/db/dao/RealBaseDao;",
        "dao",
        "Lcom/j256/ormlite/dao/Dao;",
        "",
        "simpleClassName",
        "",
        "add",
        "",
        "model",
        "(Ljava/lang/Object;)I",
        "list",
        "",
        "addIfNotExists",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "addOrUpdate",
        "Lco/bxvip/android/commonlib/db/info/Result;",
        "ts",
        "asyncTask",
        "",
        "easyRun",
        "Lco/bxvip/android/commonlib/db/callback/DBRun;",
        "callBatchTasks",
        "CT",
        "callable",
        "Ljava/util/concurrent/Callable;",
        "(Ljava/util/concurrent/Callable;)Ljava/lang/Object;",
        "callInTransaction",
        "clearTable",
        "countOf",
        "whereInfo",
        "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
        "delete",
        "deleteAll",
        "dropTable",
        "executeRaw",
        "statement",
        "arguments",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)I",
        "fetchDao",
        "findAll",
        "findByKeyValues",
        "args",
        "([Ljava/lang/String;)Ljava/lang/Object;",
        "findListByKeyValues",
        "([Ljava/lang/String;)Ljava/util/List;",
        "findTopOne",
        "()Ljava/lang/Object;",
        "getTableName",
        "isExist",
        "",
        "query",
        "queryBuilder",
        "Lcom/j256/ormlite/stmt/QueryBuilder;",
        "queryAll",
        "orderInfo",
        "Lco/bxvip/android/commonlib/db/info/OrderInfo;",
        "queryLimit",
        "update",
        "android-support"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/bxvip/android/commonlib/db/dao/RealBaseDao<",
            "TT;>;"
        }
    .end annotation
.end field

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

.field private simpleClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->simpleClassName:Ljava/lang/String;

    .line 31
    nop

    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    :goto_0
    throw v0

    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/Class;

    .line 33
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clazz.simpleName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lco/bxvip/android/commonlib/db/BaseDao;->simpleClassName:Ljava/lang/String;

    .line 34
    invoke-static {}, Lco/bxvip/android/commonlib/db/DatabaseHelperKt;->getDatabase()Lco/bxvip/android/commonlib/db/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/bxvip/android/commonlib/db/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lco/bxvip/android/commonlib/db/BaseDao;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 35
    new-instance v1, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;

    invoke-static {}, Lco/bxvip/android/commonlib/db/DatabaseHelperKt;->getDatabase()Lco/bxvip/android/commonlib/db/DatabaseHelper;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    iget-object v3, p0, Lco/bxvip/android/commonlib/db/BaseDao;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v4, p0, Lco/bxvip/android/commonlib/db/BaseDao;->simpleClassName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0, v4}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;-><init>(Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;Lcom/j256/ormlite/dao/Dao;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v2, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;

    iget-object v3, p0, Lco/bxvip/android/commonlib/db/BaseDao;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v2, v3}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;-><init>(Lcom/j256/ormlite/dao/Dao;)V

    invoke-virtual {v1, v2}, Lco/bxvip/android/commonlib/db/handler/DBProxyHandler;->getProxy(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    move-result-object v1

    iput-object v1, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->add(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public add(Ljava/util/List;)I
    .locals 1
    .param p1, "list"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)I"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->add(Ljava/util/List;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->addIfNotExists(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getModel()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public addOrUpdate(Ljava/lang/Object;)I
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->addOrUpdate(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addOrUpdate(Ljava/util/List;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 1
    .param p1, "ts"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "ts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->addOrUpdate(Ljava/util/List;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public asyncTask(Lco/bxvip/android/commonlib/db/callback/DBRun;)V
    .locals 1
    .param p1, "easyRun"    # Lco/bxvip/android/commonlib/db/callback/DBRun;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lco/bxvip/android/commonlib/db/callback/DBRun<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "easyRun"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->asyncTask(Lco/bxvip/android/commonlib/db/callback/DBRun;)V

    .line 143
    :cond_0
    return-void
.end method

.method public callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p1, "callable"    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TCT;>;)TCT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public callInTransaction(Ljava/util/concurrent/Callable;)V
    .locals 1
    .param p1, "callable"    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->callInTransaction(Ljava/util/concurrent/Callable;)V

    .line 132
    :cond_0
    return-void
.end method

.method public clearTable()I
    .locals 1

    .line 123
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->clearTable()Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public countOf()J
    .locals 2

    .line 99
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->countOf(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getCount()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public countOf(Lco/bxvip/android/commonlib/db/info/WhereInfo;)J
    .locals 2
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "whereInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->countOf(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getCount()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public delete(Lco/bxvip/android/commonlib/db/info/WhereInfo;)I
    .locals 1
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "whereInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->delete(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public delete(Ljava/lang/Object;)I
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->delete(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public delete(Ljava/util/List;)I
    .locals 1
    .param p1, "list"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)I"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->delete(Ljava/util/List;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public deleteAll()I
    .locals 1

    .line 153
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->deleteAll()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dropTable()I
    .locals 1

    .line 127
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->dropTable()Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "statement"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "arguments"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fetchDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 115
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->dao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public findAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 164
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->findAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public varargs findByKeyValues([Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->findByKeyValues([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public varargs findListByKeyValues([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->findListByKeyValues([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public findTopOne()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 160
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->findTopOne()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 119
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public isExist(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Z
    .locals 1
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "whereInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->isExist(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->isExist()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public query(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Ljava/util/List;
    .locals 1
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "whereInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->query(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public query(Lcom/j256/ormlite/stmt/QueryBuilder;)Ljava/util/List;
    .locals 1
    .param p1, "queryBuilder"    # Lcom/j256/ormlite/stmt/QueryBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->query(Lcom/j256/ormlite/stmt/QueryBuilder;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public queryAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 79
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->queryAll()Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public queryAll(Lco/bxvip/android/commonlib/db/info/OrderInfo;)Ljava/util/List;
    .locals 1
    .param p1, "orderInfo"    # Lco/bxvip/android/commonlib/db/info/OrderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/OrderInfo;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "orderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->queryAll(Lco/bxvip/android/commonlib/db/info/OrderInfo;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public queryLimit(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Ljava/util/List;
    .locals 1
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "whereInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->queryLimit(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public update(Lco/bxvip/android/commonlib/db/info/WhereInfo;)I
    .locals 1
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "whereInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->update(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public update(Ljava/lang/Object;)I
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/BaseDao;->baseDao:Lco/bxvip/android/commonlib/db/dao/RealBaseDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDao;->update(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
