.class public final Lkotlinx/coroutines/experimental/CommonPool;
.super Lkotlinx/coroutines/experimental/CoroutineDispatcher;
.source "CommonPool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonPool.kt\nkotlinx/coroutines/experimental/CommonPool\n*L\n1#1,88:1\n37#1:89\n37#1:90\n37#1:91\n*E\n*S KotlinDebug\n*F\n+ 1 CommonPool.kt\nkotlinx/coroutines/experimental/CommonPool\n*L\n40#1:89\n43#1:90\n46#1:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0007\u001a\u0004\u0018\u0001H\u0008\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\nH\u0082\u0008\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0004H\u0003J\u0015\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018H\u0001\u00a2\u0006\u0002\u0008\u0019J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\r\u0010\u0005\u001a\u00020\u0011H\u0001\u00a2\u0006\u0002\u0008\u001cR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/CommonPool;",
        "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
        "()V",
        "_pool",
        "Ljava/util/concurrent/ExecutorService;",
        "usePrivatePool",
        "",
        "Try",
        "T",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "createPlainPool",
        "createPool",
        "defaultParallelism",
        "",
        "dispatch",
        "",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "Ljava/lang/Runnable;",
        "getOrCreatePoolSync",
        "shutdownAndRelease",
        "timeout",
        "",
        "shutdownAndRelease$kotlinx_coroutines_core",
        "toString",
        "",
        "usePrivatePool$kotlinx_coroutines_core",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

.field private static volatile _pool:Ljava/util/concurrent/ExecutorService;

.field private static usePrivatePool:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lkotlinx/coroutines/experimental/CommonPool;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/CommonPool;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;-><init>()V

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/CommonPool;

    sput-object v0, Lkotlinx/coroutines/experimental/CommonPool;->INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

    return-void
.end method

.method private final Try(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    .local v0, "$i$f$Try":I
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 37
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method

.method private final createPlainPool()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 53
    .local v0, "threadId":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CommonPool;->defaultParallelism()I

    move-result v1

    new-instance v2, Lkotlinx/coroutines/experimental/CommonPool$createPlainPool$1;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/experimental/CommonPool$createPlainPool$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    check-cast v2, Ljava/util/concurrent/ThreadFactory;

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "Executors.newFixedThread\u2026Daemon = true }\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final createPool()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 40
    move-object v0, p0

    .line 40
    .local v0, "this_$iv":Lkotlinx/coroutines/experimental/CommonPool;
    const/4 v1, 0x0

    move v2, v1

    .line 89
    .local v2, "$i$f$Try":I
    move v3, v1

    .line 40
    .local v3, "$i$a$1$Try":I
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "java.util.concurrent.ForkJoinPool"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v3    # "$i$a$1$Try":I
    goto :goto_0

    :catch_0
    move-exception v5

    move-object v5, v4

    .line 40
    .end local v0    # "this_$iv":Lkotlinx/coroutines/experimental/CommonPool;
    .end local v2    # "$i$f$Try":I
    :goto_0
    if-eqz v5, :cond_5

    move-object v0, v5

    .line 42
    .local v0, "fjpClass":Ljava/lang/Class;
    sget-boolean v5, Lkotlinx/coroutines/experimental/CommonPool;->usePrivatePool:Z

    if-nez v5, :cond_2

    .line 43
    nop

    .line 44
    nop

    .line 43
    move-object v5, p0

    .line 90
    .restart local v2    # "$i$f$Try":I
    .local v5, "this_$iv":Lkotlinx/coroutines/experimental/CommonPool;
    nop

    .line 43
    .restart local v3    # "$i$a$1$Try":I
    :try_start_1
    const-string v6, "commonPool"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_0

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v4

    :goto_1
    instance-of v7, v6, Ljava/util/concurrent/ExecutorService;

    if-nez v7, :cond_1

    move-object v6, v4

    :cond_1
    check-cast v6, Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    .end local v3    # "$i$a$1$Try":I
    goto :goto_2

    :catch_1
    move-exception v6

    move-object v6, v4

    .line 43
    .end local v5    # "this_$iv":Lkotlinx/coroutines/experimental/CommonPool;
    :goto_2
    if-eqz v6, :cond_2

    .line 44
    .end local v2    # "$i$f$Try":I
    move-object v2, v6

    .line 44
    .local v1, "$i$a$2$let":I
    .local v2, "it":Ljava/util/concurrent/ExecutorService;
    return-object v2

    .line 46
    .end local v1    # "$i$a$2$let":I
    .local v2, "$i$f$Try":I
    .restart local v3    # "$i$a$1$Try":I
    :cond_2
    nop

    .line 47
    nop

    .line 46
    move-object v5, p0

    .line 91
    .restart local v5    # "this_$iv":Lkotlinx/coroutines/experimental/CommonPool;
    nop

    .line 46
    .local v3, "$i$a$3$Try":I
    const/4 v6, 0x1

    :try_start_2
    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v8, Lkotlinx/coroutines/experimental/CommonPool;->INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

    invoke-direct {v8}, Lkotlinx/coroutines/experimental/CommonPool;->defaultParallelism()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/util/concurrent/ExecutorService;

    if-nez v7, :cond_3

    move-object v6, v4

    :cond_3
    move-object v3, v6

    check-cast v3, Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 46
    .end local v3    # "$i$a$3$Try":I
    goto :goto_3

    :catch_2
    move-exception v3

    move-object v3, v4

    .line 46
    .end local v2    # "$i$f$Try":I
    .end local v5    # "this_$iv":Lkotlinx/coroutines/experimental/CommonPool;
    :goto_3
    if-eqz v3, :cond_4

    .line 47
    move-object v2, v3

    .line 47
    .local v1, "$i$a$4$let":I
    .local v2, "it":Ljava/util/concurrent/ExecutorService;
    return-object v2

    .line 48
    .end local v1    # "$i$a$4$let":I
    .end local v2    # "it":Ljava/util/concurrent/ExecutorService;
    :cond_4
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CommonPool;->createPlainPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    return-object v1

    .line 41
    .end local v0    # "fjpClass":Ljava/lang/Class;
    :cond_5
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CommonPool;->createPlainPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private final defaultParallelism()I
    .locals 2

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    return v0
.end method

.method private final declared-synchronized getOrCreatePoolSync()Ljava/util/concurrent/ExecutorService;
    .locals 3

    monitor-enter p0

    .line 62
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/experimental/CommonPool;->_pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CommonPool;->createPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    move-object v1, v0

    .line 62
    .local v1, "it":Ljava/util/concurrent/ExecutorService;
    const/4 v2, 0x0

    .line 62
    .local v2, "$i$a$1$also":I
    sput-object v1, Lkotlinx/coroutines/experimental/CommonPool;->_pool:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v1    # "it":Ljava/util/concurrent/ExecutorService;
    .end local v2    # "$i$a$1$also":I
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lkotlinx/coroutines/experimental/CommonPool;->_pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CommonPool;->getOrCreatePoolSync()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized shutdownAndRelease$kotlinx_coroutines_core(J)V
    .locals 6
    .param p1, "timeout"    # J

    monitor-enter p0

    .line 77
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/experimental/CommonPool;->_pool:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    .local v0, "$receiver":Ljava/util/concurrent/ExecutorService;
    move v2, v1

    .line 78
    .local v2, "$i$a$1$apply":I
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 79
    int-to-long v3, v1

    cmp-long v5, p1, v3

    if-lez v5, :cond_0

    .line 80
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 81
    :cond_0
    const/4 v3, 0x0

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    sput-object v3, Lkotlinx/coroutines/experimental/CommonPool;->_pool:Ljava/util/concurrent/ExecutorService;

    .line 82
    .end local v0    # "$receiver":Ljava/util/concurrent/ExecutorService;
    .end local v2    # "$i$a$1$apply":I
    nop

    .line 77
    nop

    .line 83
    :cond_1
    sput-boolean v1, Lkotlinx/coroutines/experimental/CommonPool;->usePrivatePool:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 76
    .end local p1    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 86
    const-string v0, "CommonPool"

    return-object v0
.end method

.method public final declared-synchronized usePrivatePool$kotlinx_coroutines_core()V
    .locals 2

    monitor-enter p0

    .line 70
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/experimental/CommonPool;->shutdownAndRelease$kotlinx_coroutines_core(J)V

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lkotlinx/coroutines/experimental/CommonPool;->usePrivatePool:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
