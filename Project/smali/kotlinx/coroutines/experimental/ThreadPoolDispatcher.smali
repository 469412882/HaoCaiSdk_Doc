.class public final Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;
.super Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;
.source "ThreadPoolDispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000f\u001a\u00020\u0005H\u0016R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;",
        "Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;",
        "nThreads",
        "",
        "name",
        "",
        "job",
        "Lkotlinx/coroutines/experimental/Job;",
        "(ILjava/lang/String;Lkotlinx/coroutines/experimental/Job;)V",
        "executor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "getExecutor",
        "()Ljava/util/concurrent/ScheduledExecutorService;",
        "threadNo",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "toString",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nThreads:I

.field private final name:Ljava/lang/String;

.field private final threadNo:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lkotlinx/coroutines/experimental/Job;)V
    .locals 2
    .param p1, "nThreads"    # I
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "job"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    nop

    .line 59
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/ExecutorCoroutineDispatcherBase;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->nThreads:I

    iput-object p2, p0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->name:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->threadNo:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    iget v0, p0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->nThreads:I

    new-instance v1, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher$executor$1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher$executor$1;-><init>(Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;)V

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, "Executors.newScheduledTh\u2026.incrementAndGet())\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 67
    new-instance v0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher$1;-><init>(Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, v0}, Lkotlinx/coroutines/experimental/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    return-void
.end method

.method public static final synthetic access$getNThreads$p(Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;)I
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;

    .line 55
    iget v0, p0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->nThreads:I

    return v0
.end method

.method public static final synthetic access$getName$p(Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 55
    iget-object v0, p0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getThreadNo$p(Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 55
    iget-object v0, p0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->threadNo:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->getExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 62
    iget-object v0, p0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreadPoolDispatcher["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->nThreads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/ThreadPoolDispatcher;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
