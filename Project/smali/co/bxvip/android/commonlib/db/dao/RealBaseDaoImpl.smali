.class public final Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;
.super Ljava/lang/Object;
.source "RealBaseDaoImpl.kt"

# interfaces
.implements Lco/bxvip/android/commonlib/db/dao/RealBaseDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lco/bxvip/android/commonlib/db/dao/RealBaseDao<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealBaseDaoImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBaseDaoImpl.kt\nco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl\n*L\n1#1,499:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 H*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001HB\u001b\u0012\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0006J\u001b\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010\t\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u0016J\u001b\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010\t\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\nJ\u001b\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010\t\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u0016J.\u0010\u0010\u001a\u00020\u00112\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0011H\u0002J\u001e\u0010\u0017\u001a\u00020\u0018\"\u0004\u0008\u0001\u0010\u00012\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u0002H\u0001\u0018\u00010\u001aH\u0016J#\u0010\u001b\u001a\u0004\u0018\u0001H\u001c\"\u0004\u0008\u0001\u0010\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001eH\u0016\u00a2\u0006\u0002\u0010\u001fJ\u0016\u0010 \u001a\u00020\u00182\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001eH\u0016J\u000e\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u000e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u0018\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001b\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010\t\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\nJ\u0016\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010#\u001a\u00020$H\u0016J\u001c\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u0016J\u0008\u0010&\u001a\u00020\'H\u0016J\u000e\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J/\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010*\u001a\u00020+2\u0012\u0010,\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020+0-\"\u00020+H\u0016\u00a2\u0006\u0002\u0010.J\u0016\u0010/\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0016J4\u00100\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0018\u0001012\u0014\u00102\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0018\u0001012\u0006\u0010#\u001a\u00020$H\u0003J4\u00103\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00132\u0014\u00102\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0018\u0001012\u0006\u0010#\u001a\u00020$H\u0003J\u000e\u00104\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u0016J#\u00105\u001a\u0004\u0018\u00018\u00002\u0012\u00106\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020+0-\"\u00020+H\u0016\u00a2\u0006\u0002\u00107J\'\u00108\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c2\u0012\u00106\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020+0-\"\u00020+H\u0016\u00a2\u0006\u0002\u00109J\u000f\u0010:\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010;J\u0008\u0010<\u001a\u00020+H\u0016J\u0016\u0010=\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010#\u001a\u00020$H\u0016J2\u0010>\u001a\u00020\u00182\u0014\u00102\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0018\u00010?2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u00110AH\u0002J\u0016\u0010B\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010#\u001a\u00020$H\u0016J\"\u0010B\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0012\u00102\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\'0?H\u0016J\u000e\u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u0016\u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010D\u001a\u00020EH\u0016J\u0016\u0010F\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010#\u001a\u00020$H\u0016J\u001b\u0010G\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010\t\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\nJ\u0016\u0010G\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010#\u001a\u00020$H\u0016R\u001c\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;",
        "T",
        "Lco/bxvip/android/commonlib/db/dao/RealBaseDao;",
        "dao",
        "Lcom/j256/ormlite/dao/Dao;",
        "",
        "(Lcom/j256/ormlite/dao/Dao;)V",
        "add",
        "Lco/bxvip/android/commonlib/db/info/Result;",
        "model",
        "(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;",
        "list",
        "",
        "addIfNotExists",
        "addOrUpdate",
        "ts",
        "appendAnd",
        "",
        "whereBuilder",
        "Lcom/j256/ormlite/stmt/Where;",
        "where",
        "Lco/bxvip/android/commonlib/db/info/Where;",
        "isFirst",
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
        "",
        "dropTable",
        "executeRaw",
        "statement",
        "",
        "arguments",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)Lco/bxvip/android/commonlib/db/info/Result;",
        "fetchDao",
        "fetchQueryBuilder",
        "Lcom/j256/ormlite/stmt/StatementBuilder;",
        "queryBuilder",
        "fetchWhere",
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
        "orderBy",
        "Lcom/j256/ormlite/stmt/QueryBuilder;",
        "orders",
        "",
        "query",
        "queryAll",
        "orderInfo",
        "Lco/bxvip/android/commonlib/db/info/OrderInfo;",
        "queryLimit",
        "update",
        "Companion",
        "android-support"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;

.field private static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->Companion:Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;)V
    .locals 2
    .param p1, "dao"    # Lcom/j256/ormlite/dao/Dao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 32
    sget-object v0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->Companion:Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;

    invoke-static {v0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;->access$getExecutorService$p(Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->Companion:Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v0, v1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;->access$setExecutorService$p(Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getExecutorService$cp()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 29
    sget-object v0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final synthetic access$setExecutorService$cp(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 29
    sput-object p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private final appendAnd(Lcom/j256/ormlite/stmt/Where;Lco/bxvip/android/commonlib/db/info/Where;Z)Z
    .locals 5
    .param p1, "whereBuilder"    # Lcom/j256/ormlite/stmt/Where;
    .param p2, "where"    # Lco/bxvip/android/commonlib/db/info/Where;
    .param p3, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;",
            "Ljava/lang/Long;",
            ">;",
            "Lco/bxvip/android/commonlib/db/info/Where;",
            "Z)Z"
        }
    .end annotation

    .line 428
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 429
    const-string v1, "and"

    iget-object v2, p2, Lco/bxvip/android/commonlib/db/info/Where;->andOr:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 432
    :cond_0
    const-string v1, "or"

    iget-object v2, p2, Lco/bxvip/android/commonlib/db/info/Where;->andOr:Ljava/lang/String;

    const-string v3, "where.andOr"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->or()Lcom/j256/ormlite/stmt/Where;

    .line 436
    :cond_1
    return v0
.end method

.method private final fetchQueryBuilder(Lcom/j256/ormlite/stmt/StatementBuilder;Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lcom/j256/ormlite/stmt/StatementBuilder;
    .locals 0
    .param p1, "queryBuilder"    # Lcom/j256/ormlite/stmt/StatementBuilder;
    .param p2, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/StatementBuilder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Lcom/j256/ormlite/stmt/StatementBuilder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 420
    invoke-direct {p0, p1, p2}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->fetchWhere(Lcom/j256/ormlite/stmt/StatementBuilder;Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lcom/j256/ormlite/stmt/Where;

    .line 421
    return-object p1
.end method

.method private final fetchWhere(Lcom/j256/ormlite/stmt/StatementBuilder;Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lcom/j256/ormlite/stmt/Where;
    .locals 12
    .param p1, "queryBuilder"    # Lcom/j256/ormlite/stmt/StatementBuilder;
    .param p2, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/StatementBuilder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 356
    iget-object v0, p2, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    .line 357
    .local v0, "wheres":Ljava/util/List;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/j256/ormlite/stmt/Where;

    .line 358
    .local v2, "whereBuilder":Lcom/j256/ormlite/stmt/Where;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 359
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    move-object v2, v3

    .line 360
    const/4 v3, 0x1

    .line 361
    .local v3, "isFirst":Z
    const-string v4, "wheres"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v3

    const/4 v3, 0x0

    .line 361
    .end local v3    # "isFirst":Z
    .local v6, "isFirst":Z
    :goto_1
    if-ge v3, v4, :cond_d

    .line 362
    .local v3, "i":I
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/bxvip/android/commonlib/db/info/Where;

    .line 363
    .local v7, "where":Lco/bxvip/android/commonlib/db/info/Where;
    iget-object v8, v7, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 364
    goto/16 :goto_2

    .line 366
    :cond_1
    const-string v8, "update"

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 367
    const-string v8, "where"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v7, v6}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->appendAnd(Lcom/j256/ormlite/stmt/Where;Lco/bxvip/android/commonlib/db/info/Where;Z)Z

    move-result v6

    .line 370
    :cond_2
    const-string v8, "equal"

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 371
    if-eqz v2, :cond_3

    iget-object v8, v7, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->value:Ljava/lang/Object;

    invoke-virtual {v2, v8, v9}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 374
    :cond_3
    const-string v8, "like"

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 375
    if-eqz v2, :cond_4

    iget-object v8, v7, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->value:Ljava/lang/Object;

    invoke-virtual {v2, v8, v9}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 378
    :cond_4
    const-string v8, "between"

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 379
    if-eqz v2, :cond_5

    iget-object v8, v7, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->low:Ljava/lang/Object;

    iget-object v10, v7, Lco/bxvip/android/commonlib/db/info/Where;->high:Ljava/lang/Object;

    invoke-virtual {v2, v8, v9, v10}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 382
    :cond_5
    const-string v8, "lt"

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    const-string v10, "where.op"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-static {v8, v9, v5, v10, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 383
    if-eqz v2, :cond_6

    iget-object v8, v7, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->value:Ljava/lang/Object;

    invoke-virtual {v2, v8, v9}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 386
    :cond_6
    const-string v8, "gt"

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    const-string v11, "where.op"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9, v5, v10, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 387
    if-eqz v2, :cond_7

    iget-object v8, v7, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->value:Ljava/lang/Object;

    invoke-virtual {v2, v8, v9}, Lcom/j256/ormlite/stmt/Where;->gt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 390
    :cond_7
    const-string v8, "ge"

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    const-string v11, "where.op"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9, v5, v10, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 391
    if-eqz v2, :cond_8

    iget-object v8, v7, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->value:Ljava/lang/Object;

    invoke-virtual {v2, v8, v9}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 394
    :cond_8
    const-string v8, "le"

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    const-string v11, "where.op"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9, v5, v10, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 395
    if-eqz v2, :cond_9

    iget-object v8, v7, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->value:Ljava/lang/Object;

    invoke-virtual {v2, v8, v9}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 398
    :cond_9
    const-string v8, "ne"

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    const-string v11, "where.op"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9, v5, v10, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 399
    if-eqz v2, :cond_a

    iget-object v8, v7, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->value:Ljava/lang/Object;

    invoke-virtual {v2, v8, v9}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 402
    :cond_a
    const-string v8, "in"

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    const-string v11, "where.op"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9, v5, v10, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 403
    if-eqz v2, :cond_b

    iget-object v8, v7, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->values:[Ljava/lang/Object;

    array-length v11, v9

    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 406
    :cond_b
    const-string v8, "notIn"

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    const-string v11, "where.op"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9, v5, v10, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 407
    if-eqz v2, :cond_c

    iget-object v8, v7, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    iget-object v9, v7, Lco/bxvip/android/commonlib/db/info/Where;->values:[Ljava/lang/Object;

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    nop

    .line 361
    .end local v7    # "where":Lco/bxvip/android/commonlib/db/info/Where;
    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 361
    .end local v3    # "i":I
    goto/16 :goto_1

    .line 411
    .end local v6    # "isFirst":Z
    :cond_d
    return-object v2
.end method

.method private final orderBy(Lcom/j256/ormlite/stmt/QueryBuilder;Ljava/util/Map;)V
    .locals 5
    .param p1, "queryBuilder"    # Lcom/j256/ormlite/stmt/QueryBuilder;
    .param p2, "orders"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 443
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, p2

    .line 444
    .local v1, "value":Z
    .local v2, "key":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 445
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    nop

    .line 444
    :cond_0
    goto :goto_0

    .line 448
    .end local v1    # "value":Z
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 2
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 39
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 40
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 45
    return-object v0
.end method

.method public add(Ljava/util/List;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 3
    .param p1, "list"    # Ljava/util/List;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 50
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 51
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 56
    return-object v0
.end method

.method public addIfNotExists(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 2
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 83
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 84
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 85
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->createIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setModel(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 90
    return-object v0
.end method

.method public addOrUpdate(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 3
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 61
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 62
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 63
    .local v1, "status":Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->getNumLinesChanged()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "status":Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    goto :goto_2

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 66
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 68
    return-object v0
.end method

.method public addOrUpdate(Ljava/util/List;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 6
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 73
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 74
    .local v2, "t":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->addOrUpdate(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v3

    .line 75
    .local v3, "tResult":Lco/bxvip/android/commonlib/db/info/Result;
    invoke-virtual {v3}, Lco/bxvip/android/commonlib/db/info/Result;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v4

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V

    .line 73
    .end local v2    # "t":Ljava/lang/Object;
    .end local v3    # "tResult":Lco/bxvip/android/commonlib/db/info/Result;
    :cond_0
    goto :goto_0

    .line 79
    :cond_1
    return-object v0
.end method

.method public asyncTask(Lco/bxvip/android/commonlib/db/callback/DBRun;)V
    .locals 2
    .param p1, "easyRun"    # Lco/bxvip/android/commonlib/db/callback/DBRun;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    .line 337
    if-eqz p1, :cond_0

    .line 338
    sget-object v0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->Companion:Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;

    invoke-static {v0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;->access$getExecutorService$p(Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$asyncTask$1;

    invoke-direct {v1, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$asyncTask$1;-><init>(Lco/bxvip/android/commonlib/db/callback/DBRun;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 351
    :cond_0
    return-void
.end method

.method public callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
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

    .line 327
    nop

    .line 328
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    :cond_0
    return-object v0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    .end local v1    # "e":Ljava/lang/Exception;
    nop

    .line 333
    return-object v0
.end method

.method public callInTransaction(Ljava/util/concurrent/Callable;)V
    .locals 2
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

    .line 317
    new-instance v0, Lcom/j256/ormlite/misc/TransactionManager;

    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/j256/ormlite/misc/TransactionManager;-><init>(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 318
    .local v0, "transactionManager":Lcom/j256/ormlite/misc/TransactionManager;
    nop

    .line 319
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 324
    return-void
.end method

.method public clearTable()Lco/bxvip/android/commonlib/db/info/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 285
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 286
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 287
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    nop

    :cond_1
    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 290
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 292
    return-object v0
.end method

.method public countOf()Lco/bxvip/android/commonlib/db/info/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->countOf(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    return-object v0
.end method

.method public countOf(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 5
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 242
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 243
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 244
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 245
    .local v1, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->setCountOf(Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 246
    :cond_1
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_4

    .line 247
    move-object v4, v1

    check-cast v4, Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-direct {p0, v4, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->fetchQueryBuilder(Lcom/j256/ormlite/stmt/StatementBuilder;Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lcom/j256/ormlite/stmt/StatementBuilder;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type com.j256.ormlite.stmt.QueryBuilder<T, kotlin.Long>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    check-cast v4, Lcom/j256/ormlite/stmt/QueryBuilder;

    move-object v1, v4

    .line 248
    iget-object v4, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->countOf(Lcom/j256/ormlite/stmt/PreparedQuery;)J

    move-result-wide v2

    nop

    :cond_3
    invoke-virtual {v0, v2, v3}, Lco/bxvip/android/commonlib/db/info/Result;->setCount(J)V

    goto :goto_1

    .line 250
    :cond_4
    iget-object v4, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v2

    nop

    :cond_5
    invoke-virtual {v0, v2, v3}, Lco/bxvip/android/commonlib/db/info/Result;->setCount(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v1    # "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    :goto_1
    goto :goto_2

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 256
    return-object v0
.end method

.method public delete(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 4
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "whereInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 119
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 120
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 121
    .local v1, "deleteBuilder":Lcom/j256/ormlite/stmt/DeleteBuilder;
    :goto_0
    move-object v2, v1

    check-cast v2, Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-direct {p0, v2, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->fetchQueryBuilder(Lcom/j256/ormlite/stmt/StatementBuilder;Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lcom/j256/ormlite/stmt/StatementBuilder;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type com.j256.ormlite.stmt.DeleteBuilder<T, kotlin.Long>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    check-cast v2, Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-object v1, v2

    .line 122
    iget-object v2, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "deleteBuilder":Lcom/j256/ormlite/stmt/DeleteBuilder;
    goto :goto_2

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 127
    return-object v0
.end method

.method public delete(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 3
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "line":I
    new-instance v1, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 96
    .local v1, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 97
    :try_start_0
    iget-object v2, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 98
    invoke-virtual {v1, v0}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v2}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 103
    return-object v1
.end method

.method public delete(Ljava/util/List;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 3
    .param p1, "list"    # Ljava/util/List;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 108
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 109
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/util/Collection;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 114
    return-object v0
.end method

.method public deleteAll()I
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getLine()I

    move-result v0

    return v0
.end method

.method public dropTable()Lco/bxvip/android/commonlib/db/info/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 296
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 297
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 298
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->isTableExists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 299
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    iget-object v2, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 305
    return-object v0
.end method

.method public varargs executeRaw(Ljava/lang/String;[Ljava/lang/String;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 3
    .param p1, "statement"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "arguments"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 275
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 276
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 281
    return-object v0
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

    .line 309
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public findAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 455
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->queryAll()Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getList()Ljava/util/List;

    move-result-object v0

    const-string v1, "queryAll().list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs findByKeyValues([Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
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

    .line 476
    nop

    .line 477
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 478
    .local v1, "builder":Lcom/j256/ormlite/stmt/QueryBuilder;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 479
    .local v2, "where":Lcom/j256/ormlite/stmt/Where;
    :goto_1
    const/4 v3, 0x0

    .line 480
    .local v3, "i":I
    :goto_2
    move-object v4, p1

    check-cast v4, [Ljava/lang/Object;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 481
    if-nez v3, :cond_2

    .line 482
    if-eqz v2, :cond_3

    aget-object v4, p1, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v2, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_3

    .line 484
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    if-eqz v4, :cond_3

    aget-object v5, p1, v3

    add-int/lit8 v6, v3, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 485
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x2

    .line 480
    goto :goto_2

    .line 487
    :cond_4
    iget-object v4, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v4, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v5

    goto :goto_4

    :cond_5
    move-object v5, v0

    :goto_4
    invoke-interface {v4, v5}, Lcom/j256/ormlite/dao/Dao;->queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    nop

    :cond_6
    return-object v0

    .line 488
    .end local v1    # "builder":Lcom/j256/ormlite/stmt/QueryBuilder;
    .end local v2    # "where":Lcom/j256/ormlite/stmt/Where;
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 489
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 490
    .end local v1    # "e":Ljava/sql/SQLException;
    nop

    .line 492
    return-object v0
.end method

.method public varargs findListByKeyValues([Ljava/lang/String;)Ljava/util/List;
    .locals 5
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

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v0, "list":Ljava/util/ArrayList;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 461
    .local v1, "map":Ljava/util/HashMap;
    const/4 v2, 0x0

    .line 462
    .local v2, "i":I
    :goto_0
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 463
    aget-object v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    add-int/lit8 v2, v2, 0x2

    .line 462
    goto :goto_0

    .line 466
    :cond_0
    nop

    .line 467
    :try_start_0
    iget-object v3, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v3, :cond_1

    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Lcom/j256/ormlite/dao/Dao;->queryForFieldValuesArgs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    check-cast v3, Ljava/util/Collection;

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 468
    :catch_0
    move-exception v3

    .line 469
    .local v3, "e":Ljava/sql/SQLException;
    invoke-virtual {v3}, Ljava/sql/SQLException;->printStackTrace()V

    .line 470
    .end local v3    # "e":Ljava/sql/SQLException;
    :goto_3
    nop

    .line 472
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    return-object v3
.end method

.method public findTopOne()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 451
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->queryAll()Lco/bxvip/android/commonlib/db/info/Result;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/info/Result;->getList()Ljava/util/List;

    move-result-object v0

    const-string v1, "queryAll().list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 313
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public isExist(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 8
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "whereInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 261
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 262
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 263
    .local v1, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    :goto_0
    move-object v2, v1

    check-cast v2, Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-direct {p0, v2, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->fetchQueryBuilder(Lcom/j256/ormlite/stmt/StatementBuilder;Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lcom/j256/ormlite/stmt/StatementBuilder;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type com.j256.ormlite.stmt.QueryBuilder<T, kotlin.Long>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    check-cast v2, Lcom/j256/ormlite/stmt/QueryBuilder;

    move-object v1, v2

    .line 264
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->setCountOf(Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 265
    iget-object v3, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/j256/ormlite/dao/Dao;->countOf(Lcom/j256/ormlite/stmt/PreparedQuery;)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    cmp-long v3, v6, v4

    if-lez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lco/bxvip/android/commonlib/db/info/Result;->setExist(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1    # "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    goto :goto_3

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 268
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 270
    return-object v0
.end method

.method public query(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 5
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "whereInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 190
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 191
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 192
    .local v1, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    :goto_0
    iget-object v3, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->orders:Ljava/util/Map;

    const-string v4, "whereInfo.orders"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->orderBy(Lcom/j256/ormlite/stmt/QueryBuilder;Ljava/util/Map;)V

    .line 193
    move-object v3, v1

    check-cast v3, Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-direct {p0, v3, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->fetchQueryBuilder(Lcom/j256/ormlite/stmt/StatementBuilder;Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lcom/j256/ormlite/stmt/StatementBuilder;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type com.j256.ormlite.stmt.QueryBuilder<T, kotlin.Long>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    check-cast v3, Lcom/j256/ormlite/stmt/QueryBuilder;

    move-object v1, v3

    .line 194
    iget-object v3, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v2

    nop

    :cond_2
    invoke-virtual {v0, v2}, Lco/bxvip/android/commonlib/db/info/Result;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    goto :goto_1

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 199
    return-object v0
.end method

.method public query(Lcom/j256/ormlite/stmt/QueryBuilder;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 3
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
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 228
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 229
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 232
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 234
    return-object v0
.end method

.method public queryAll()Lco/bxvip/android/commonlib/db/info/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 165
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 166
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 167
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 172
    return-object v0
.end method

.method public queryAll(Lco/bxvip/android/commonlib/db/info/OrderInfo;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 5
    .param p1, "orderInfo"    # Lco/bxvip/android/commonlib/db/info/OrderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/OrderInfo;",
            ")",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "orderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 177
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 178
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 179
    .local v1, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    :goto_0
    iget-object v3, p1, Lco/bxvip/android/commonlib/db/info/OrderInfo;->orders:Ljava/util/Map;

    const-string v4, "orderInfo.orders"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->orderBy(Lcom/j256/ormlite/stmt/QueryBuilder;Ljava/util/Map;)V

    .line 180
    iget-object v3, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    nop

    :cond_1
    invoke-interface {v3, v2}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v2

    nop

    :cond_2
    invoke-virtual {v0, v2}, Lco/bxvip/android/commonlib/db/info/Result;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    goto :goto_1

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 185
    return-object v0
.end method

.method public queryLimit(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 7
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "whereInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 204
    .local v0, "all":Ljava/util/List;
    new-instance v1, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 205
    .local v1, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 206
    :try_start_0
    iget-object v3, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 207
    .local v3, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    :goto_0
    iget-object v4, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->orders:Ljava/util/Map;

    const-string v5, "whereInfo.orders"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->orderBy(Lcom/j256/ormlite/stmt/QueryBuilder;Ljava/util/Map;)V

    .line 208
    iget v4, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->currentPage:I

    .line 209
    .local v4, "offset":I
    if-eqz v4, :cond_1

    .line 210
    iget v5, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->currentPage:I

    sub-int/2addr v5, v2

    iget v6, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->limit:I

    mul-int v5, v5, v6

    iget v6, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->size:I

    add-int v4, v5, v6

    .line 212
    :cond_1
    move-object v5, v3

    check-cast v5, Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-direct {p0, v5, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->fetchQueryBuilder(Lcom/j256/ormlite/stmt/StatementBuilder;Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lcom/j256/ormlite/stmt/StatementBuilder;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v2, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type com.j256.ormlite.stmt.QueryBuilder<T, kotlin.Long>"

    invoke-direct {v2, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    check-cast v5, Lcom/j256/ormlite/stmt/QueryBuilder;

    move-object v3, v5

    .line 213
    int-to-long v5, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 214
    iget v5, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->limit:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 215
    iget-object v5, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    :goto_1
    move-object v0, v5

    .line 216
    iget v5, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->currentPage:I

    add-int/2addr v5, v2

    iput v5, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->currentPage:I

    iget v2, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->currentPage:I

    iput v2, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->currentPage:I

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->size:I

    .line 218
    invoke-virtual {v1, v0}, Lco/bxvip/android/commonlib/db/info/Result;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v3    # "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    .end local v4    # "offset":I
    goto :goto_2

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v2}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 221
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 223
    return-object v1
.end method

.method public update(Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 7
    .param p1, "whereInfo"    # Lco/bxvip/android/commonlib/db/info/WhereInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/android/commonlib/db/info/WhereInfo;",
            ")",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "whereInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 147
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 148
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 149
    .local v1, "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    :goto_0
    iget-object v3, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v2

    nop

    .line 150
    .local v2, "preparedUpdate":Lcom/j256/ormlite/stmt/UpdateBuilder;
    :cond_1
    iget-object v3, p1, Lco/bxvip/android/commonlib/db/info/WhereInfo;->wheres:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/bxvip/android/commonlib/db/info/Where;

    .line 151
    .local v4, "where":Lco/bxvip/android/commonlib/db/info/Where;
    iget-object v5, v4, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    const-string v6, "update"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    if-eqz v2, :cond_2

    iget-object v5, v4, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    iget-object v6, v4, Lco/bxvip/android/commonlib/db/info/Where;->value:Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/UpdateBuilder;

    nop

    .line 150
    .end local v4    # "where":Lco/bxvip/android/commonlib/db/info/Where;
    :cond_2
    goto :goto_1

    .line 155
    :cond_3
    if-eqz v2, :cond_4

    move-object v3, v1

    check-cast v3, Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-direct {p0, v3, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->fetchWhere(Lcom/j256/ormlite/stmt/StatementBuilder;Lco/bxvip/android/commonlib/db/info/WhereInfo;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 156
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    move-result v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "queryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;
    .end local v2    # "preparedUpdate":Lcom/j256/ormlite/stmt/UpdateBuilder;
    goto :goto_3

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 161
    return-object v0
.end method

.method public update(Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Result;
    .locals 2
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lco/bxvip/android/commonlib/db/info/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 135
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Result;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;-><init>(I)V

    .line 136
    .local v0, "result":Lco/bxvip/android/commonlib/db/info/Result;
    nop

    .line 137
    :try_start_0
    iget-object v1, p0, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/db/info/Result;->setException(Ljava/lang/Exception;)V

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 142
    return-object v0
.end method
