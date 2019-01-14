.class public final Lkotlinx/coroutines/experimental/NonCancellable;
.super Lkotlin/coroutines/experimental/AbstractCoroutineContextElement;
.source "NonCancellable.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/Job;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u000c\u0010\u000b\u001a\u00060\u000cj\u0002`\rH\u0016J\"\u0010\u000e\u001a\u00020\u000f2\u0018\u0010\u0010\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00120\u0011j\u0002`\u0013H\u0016J\u0011\u0010\u0014\u001a\u00020\u0012H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015JB\u0010\u0016\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00170\u00192\u001c\u0010\u001a\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00170\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u0011H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u0005H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/NonCancellable;",
        "Lkotlin/coroutines/experimental/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/experimental/Job;",
        "()V",
        "isActive",
        "",
        "()Z",
        "isCompleted",
        "cancel",
        "cause",
        "",
        "getCompletionException",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/experimental/CancellationException;",
        "invokeOnCompletion",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "handler",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/experimental/CompletionHandler;",
        "join",
        "(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "registerSelectJoin",
        "R",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V",
        "start",
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
.field public static final INSTANCE:Lkotlinx/coroutines/experimental/NonCancellable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lkotlinx/coroutines/experimental/NonCancellable;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/NonCancellable;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    sget-object v0, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-direct {p0, v0}, Lkotlin/coroutines/experimental/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/experimental/CoroutineContext$Key;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/NonCancellable;

    sput-object v0, Lkotlinx/coroutines/experimental/NonCancellable;->INSTANCE:Lkotlinx/coroutines/experimental/NonCancellable;

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getCompletionException()Ljava/lang/Throwable;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/NonCancellable;->getCompletionException()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getCompletionException()Ljava/util/concurrent/CancellationException;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job is always active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 1
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/experimental/DisposableHandle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lkotlinx/coroutines/experimental/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;

    check-cast v0, Lkotlinx/coroutines/experimental/DisposableHandle;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public join(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This job is always active"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public plus(Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/Job;
    .locals 1
    .param p1, "other"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/Job$DefaultImpls;->plus(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/Job;

    move-result-object v0

    return-object v0
.end method

.method public registerSelectJoin(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This job is always active"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public start()Z
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method
