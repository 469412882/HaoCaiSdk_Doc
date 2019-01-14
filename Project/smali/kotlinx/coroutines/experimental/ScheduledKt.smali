.class public final Lkotlinx/coroutines/experimental/ScheduledKt;
.super Ljava/lang/Object;
.source "Scheduled.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScheduled.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scheduled.kt\nkotlinx/coroutines/experimental/ScheduledKt\n*L\n1#1,171:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u001a\u0008\u0010\t\u001a\u00020\u0005H\u0003\u001a\u0008\u0010\n\u001a\u00020\u000bH\u0001\u001a\u0008\u0010\u000c\u001a\u00020\u000bH\u0001\u001aG\u0010\r\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e2\u0006\u0010\u000f\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u001c\u0010\u0012\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\u001aI\u0010\u0017\u001a\u0004\u0018\u0001H\u000e\"\u0004\u0008\u0000\u0010\u000e2\u0006\u0010\u000f\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u001c\u0010\u0012\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\"\u0018\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0006\u001a\u00020\u00058@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0018"
    }
    d2 = {
        "KEEP_ALIVE",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/Long;",
        "_scheduledExecutor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "scheduledExecutor",
        "getScheduledExecutor",
        "()Ljava/util/concurrent/ScheduledExecutorService;",
        "getOrCreateScheduledExecutorSync",
        "scheduledExecutorShutdownNow",
        "",
        "scheduledExecutorShutdownNowAndRelease",
        "withTimeout",
        "T",
        "time",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "withTimeoutOrNull",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field private static final KEEP_ALIVE:Ljava/lang/Long;

.field private static volatile _scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const-string v0, "kotlinx.coroutines.ScheduledExecutor.keepAlive"

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/experimental/ScheduledKt;->KEEP_ALIVE:Ljava/lang/Long;

    return-void
.end method

.method private static final declared-synchronized getOrCreateScheduledExecutorSync()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 10

    const-class v0, Lkotlinx/coroutines/experimental/ScheduledKt;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/experimental/ScheduledKt;->_scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    nop

    .line 40
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Lkotlinx/coroutines/experimental/ScheduledKt$getOrCreateScheduledExecutorSync$1;->INSTANCE:Lkotlinx/coroutines/experimental/ScheduledKt$getOrCreateScheduledExecutorSync$1;

    check-cast v2, Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 42
    move-object v2, v1

    .line 42
    .local v2, "$receiver":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    const/4 v4, 0x0

    move v5, v4

    .line 43
    .local v5, "$i$a$2$apply":I
    sget-object v6, Lkotlinx/coroutines/experimental/ScheduledKt;->KEEP_ALIVE:Ljava/lang/Long;

    const-string v7, "KEEP_ALIVE"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 45
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    nop

    .line 48
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setRemoveOnCancelPolicy"

    new-array v8, v3, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/JvmClassMappingKt;->getJavaPrimitiveType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 49
    .local v6, "m":Ljava/lang/reflect/Method;
    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .end local v6    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 50
    :catch_0
    move-exception v3

    .line 51
    :goto_0
    :try_start_2
    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    sput-object v3, Lkotlinx/coroutines/experimental/ScheduledKt;->_scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    .end local v2    # "$receiver":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .end local v5    # "$i$a$2$apply":I
    nop

    .line 42
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :goto_1
    monitor-exit v0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    sget-object v0, Lkotlinx/coroutines/experimental/ScheduledKt;->_scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/experimental/ScheduledKt;->getOrCreateScheduledExecutorSync()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final declared-synchronized scheduledExecutorShutdownNow()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/experimental/ScheduledKt;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/experimental/ScheduledKt;->_scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit v0

    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized scheduledExecutorShutdownNowAndRelease()V
    .locals 4

    const-class v0, Lkotlinx/coroutines/experimental/ScheduledKt;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/experimental/ScheduledKt;->_scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 62
    .local v1, "$receiver":Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v2, 0x0

    .line 63
    .local v2, "$i$a$1$apply":I
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 64
    const/4 v3, 0x0

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    sput-object v3, Lkotlinx/coroutines/experimental/ScheduledKt;->_scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v1    # "$receiver":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v2    # "$i$a$1$apply":I
    nop

    .line 62
    nop

    .line 66
    :cond_0
    monitor-exit v0

    return-void

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final withTimeout(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    int-to-long v1, v0

    cmp-long v3, p0, v1

    const/4 v1, 0x1

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 87
    .local v0, "$i$a$1$require":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " cannot be negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .end local v0    # "$i$a$1$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 88
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-gtz v4, :cond_2

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Timed out immediately"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 89
    :cond_2
    invoke-static {p4}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    .line 90
    .local v0, "$i$a$2$suspendCoroutineOrReturn":I
    .local v2, "cont":Lkotlin/coroutines/experimental/Continuation;
    invoke-interface {v2}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v3

    .line 91
    .local v3, "context":Lkotlin/coroutines/experimental/CoroutineContext;
    new-instance v4, Lkotlinx/coroutines/experimental/TimeoutExceptionCoroutine;

    invoke-direct {v4, p0, p1, p2, v2}, Lkotlinx/coroutines/experimental/TimeoutExceptionCoroutine;-><init>(JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)V

    .line 92
    .local v4, "coroutine":Lkotlinx/coroutines/experimental/TimeoutExceptionCoroutine;
    sget-object v5, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v5, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v3, v5}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v5

    instance-of v6, v5, Lkotlinx/coroutines/experimental/Delay;

    if-nez v6, :cond_3

    const/4 v5, 0x0

    :cond_3
    check-cast v5, Lkotlinx/coroutines/experimental/Delay;

    .line 94
    .local v5, "delay":Lkotlinx/coroutines/experimental/Delay;
    if-eqz v5, :cond_4

    .line 95
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/experimental/Job;

    move-object v7, v4

    check-cast v7, Ljava/lang/Runnable;

    invoke-interface {v5, p0, p1, p2, v7}, Lkotlinx/coroutines/experimental/Delay;->invokeOnTimeout(JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlinx/coroutines/experimental/JobKt;->disposeOnCompletion(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)Lkotlinx/coroutines/experimental/DisposableHandle;

    goto :goto_1

    .line 96
    :cond_4
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/experimental/Job;

    invoke-static {}, Lkotlinx/coroutines/experimental/ScheduledKt;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    move-object v8, v4

    check-cast v8, Ljava/lang/Runnable;

    invoke-interface {v7, v8, p0, p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    const-string v8, "scheduledExecutor.schedule(coroutine, time, unit)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/util/concurrent/Future;

    invoke-static {v6, v7}, Lkotlinx/coroutines/experimental/JobKt;->cancelFutureOnCompletion(Lkotlinx/coroutines/experimental/Job;Ljava/util/concurrent/Future;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 97
    :goto_1
    sget-object v6, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v6, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v3, v6}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {v4, v6}, Lkotlinx/coroutines/experimental/TimeoutExceptionCoroutine;->initParentJob(Lkotlinx/coroutines/experimental/Job;)V

    .line 100
    invoke-static {p3, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .end local v0    # "$i$a$2$suspendCoroutineOrReturn":I
    .end local v2    # "cont":Lkotlin/coroutines/experimental/Continuation;
    .end local v3    # "context":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v4    # "coroutine":Lkotlinx/coroutines/experimental/TimeoutExceptionCoroutine;
    .end local v5    # "delay":Lkotlinx/coroutines/experimental/Delay;
    return-object v0
.end method

.method public static bridge synthetic withTimeout$default(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 86
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/experimental/ScheduledKt;->withTimeout(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final withTimeoutOrNull(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    int-to-long v1, v0

    cmp-long v3, p0, v1

    const/4 v1, 0x1

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 134
    .local v0, "$i$a$1$require":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " cannot be negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .end local v0    # "$i$a$1$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 135
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    const/4 v2, 0x0

    if-gtz v4, :cond_2

    return-object v2

    .line 136
    :cond_2
    invoke-static {p4}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v3

    .line 137
    .local v0, "$i$a$2$suspendCoroutineOrReturn":I
    .local v3, "cont":Lkotlin/coroutines/experimental/Continuation;
    invoke-interface {v3}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v4

    .line 138
    .local v4, "context":Lkotlin/coroutines/experimental/CoroutineContext;
    new-instance v5, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;

    invoke-direct {v5, p0, p1, p2, v3}, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;-><init>(JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)V

    .line 139
    .local v5, "coroutine":Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;
    sget-object v6, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v6, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v4, v6}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v6

    instance-of v7, v6, Lkotlinx/coroutines/experimental/Delay;

    if-nez v7, :cond_3

    move-object v6, v2

    :cond_3
    check-cast v6, Lkotlinx/coroutines/experimental/Delay;

    .line 141
    .local v6, "delay":Lkotlinx/coroutines/experimental/Delay;
    if-eqz v6, :cond_4

    .line 142
    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/experimental/Job;

    move-object v8, v5

    check-cast v8, Ljava/lang/Runnable;

    invoke-interface {v6, p0, p1, p2, v8}, Lkotlinx/coroutines/experimental/Delay;->invokeOnTimeout(JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlinx/coroutines/experimental/JobKt;->disposeOnCompletion(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)Lkotlinx/coroutines/experimental/DisposableHandle;

    goto :goto_1

    .line 143
    :cond_4
    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/experimental/Job;

    invoke-static {}, Lkotlinx/coroutines/experimental/ScheduledKt;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    move-object v9, v5

    check-cast v9, Ljava/lang/Runnable;

    invoke-interface {v8, v9, p0, p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v8

    const-string v9, "scheduledExecutor.schedule(coroutine, time, unit)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/util/concurrent/Future;

    invoke-static {v7, v8}, Lkotlinx/coroutines/experimental/JobKt;->cancelFutureOnCompletion(Lkotlinx/coroutines/experimental/Job;Ljava/util/concurrent/Future;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 144
    :goto_1
    sget-object v7, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v7, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v4, v7}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v7

    check-cast v7, Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {v5, v7}, Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;->initParentJob(Lkotlinx/coroutines/experimental/Job;)V

    .line 147
    nop

    .line 148
    :try_start_0
    invoke-static {p3, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v7, v5

    check-cast v7, Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lkotlinx/coroutines/experimental/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Lkotlinx/coroutines/experimental/TimeoutException;
    nop

    .line 147
    .end local v1    # "e":Lkotlinx/coroutines/experimental/TimeoutException;
    move-object v1, v2

    .line 151
    .end local v0    # "$i$a$2$suspendCoroutineOrReturn":I
    .end local v3    # "cont":Lkotlin/coroutines/experimental/Continuation;
    .end local v4    # "context":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v5    # "coroutine":Lkotlinx/coroutines/experimental/TimeoutNullCoroutine;
    .end local v6    # "delay":Lkotlinx/coroutines/experimental/Delay;
    :goto_2
    nop

    .line 136
    return-object v1
.end method

.method public static bridge synthetic withTimeoutOrNull$default(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 133
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/experimental/ScheduledKt;->withTimeoutOrNull(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
