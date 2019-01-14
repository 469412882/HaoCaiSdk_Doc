.class Lkotlinx/coroutines/experimental/DeferredCoroutine;
.super Lkotlinx/coroutines/experimental/AbstractCoroutine;
.source "Deferred.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/Deferred;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/AbstractCoroutine<",
        "TT;>;",
        "Lkotlinx/coroutines/experimental/Deferred<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeferred.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deferred.kt\nkotlinx/coroutines/experimental/DeferredCoroutine\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationKt\n*L\n1#1,242:1\n121#2,9:243\n*E\n*S KotlinDebug\n*F\n+ 1 Deferred.kt\nkotlinx/coroutines/experimental/DeferredCoroutine\n*L\n171#1,9:243\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0012\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\u000e\u001a\u00028\u0000H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0011\u0010\u0010\u001a\u00028\u0000H\u0083@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\r\u0010\u0011\u001a\u00028\u0000H\u0017\u00a2\u0006\u0002\u0010\u0012JH\u0010\u0013\u001a\u00020\u0014\"\u0004\u0008\u0001\u0010\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00172\"\u0010\u0018\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00150\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0019H\u0017\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cJV\u0010\u001d\u001a\u00020\u0014\"\u0004\u0008\u0001\u0010\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00172\"\u0010\u0018\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00150\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u00192\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001bH\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0014\u0010\t\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006!"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/DeferredCoroutine;",
        "T",
        "Lkotlinx/coroutines/experimental/AbstractCoroutine;",
        "Lkotlinx/coroutines/experimental/Deferred;",
        "parentContext",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "active",
        "",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Z)V",
        "isCancelled",
        "()Z",
        "isCompletedExceptionally",
        "getParentContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "await",
        "(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "awaitSuspend",
        "getCompleted",
        "()Ljava/lang/Object;",
        "registerSelectAwait",
        "",
        "R",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V",
        "selectAwaitCompletion",
        "state",
        "selectAwaitCompletion$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V",
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
.field private final parentContext:Lkotlin/coroutines/experimental/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V
    .locals 1
    .param p1, "parentContext"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "active"    # Z

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    nop

    .line 150
    invoke-direct {p0, p2}, Lkotlinx/coroutines/experimental/AbstractCoroutine;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/DeferredCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method

.method private final awaitSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    .line 243
    .local v0, "holdCancellability$iv":Z
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    .line 246
    .local v2, "$i$f$suspendCancellableCoroutine":I
    invoke-static {p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v3

    .line 246
    .local v3, "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    const/4 v4, 0x0

    move v5, v4

    .line 247
    .local v5, "$i$a$1$suspendCoroutineOrReturn":I
    new-instance v6, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    invoke-direct {v6, v3, v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    move-object v1, v6

    .line 248
    .local v1, "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initCancellability()V

    .line 249
    :cond_0
    move-object v6, v1

    check-cast v6, Lkotlinx/coroutines/experimental/CancellableContinuation;

    .line 172
    .local v4, "$i$a$1$suspendCancellableCoroutine":I
    .local v6, "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/experimental/Job;

    new-instance v8, Lkotlinx/coroutines/experimental/DeferredCoroutine$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {v8, v6, p0}, Lkotlinx/coroutines/experimental/DeferredCoroutine$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/DeferredCoroutine;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v8}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlinx/coroutines/experimental/JobKt;->disposeOnCompletion(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 179
    .end local v4    # "$i$a$1$suspendCancellableCoroutine":I
    .end local v6    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    nop

    .line 180
    nop

    .line 250
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 246
    .end local v0    # "holdCancellability$iv":Z
    .end local v1    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    .end local v3    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .end local v5    # "$i$a$1$suspendCoroutineOrReturn":I
    nop

    .line 251
    nop

    .line 180
    return-object v0
.end method

.method public static bridge synthetic selectAwaitCompletion$kotlinx_coroutines_core$default(Lkotlinx/coroutines/experimental/DeferredCoroutine;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    if-eqz p5, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: selectAwaitCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 207
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->getState()Ljava/lang/Object;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->selectAwaitCompletion$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public await(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    :goto_0
    nop

    .line 158
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v1, :cond_1

    .line 161
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 162
    :cond_0
    return-object v0

    .line 165
    :cond_1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->startInternal$kotlinx_coroutines_core(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 167
    .end local v0    # "state":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->awaitSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 157
    :cond_2
    goto :goto_0
.end method

.method public getCompleted()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 219
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    move v1, v2

    .line 219
    .local v1, "$i$a$1$check":I
    const-string v1, "This deferred value has not completed yet"

    .line 219
    .end local v1    # "$i$a$1$check":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 220
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 221
    :cond_2
    return-object v0
.end method

.method protected getParentContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 148
    iget-object v0, p0, Lkotlinx/coroutines/experimental/DeferredCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 152
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->getState()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/experimental/JobSupport$Cancelled;

    return v0
.end method

.method public isCompletedExceptionally()Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->getState()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    return v0
.end method

.method public isComputing()Z
    .locals 1

    .line 147
    invoke-static {p0}, Lkotlinx/coroutines/experimental/Deferred$DefaultImpls;->isComputing(Lkotlinx/coroutines/experimental/Deferred;)Z

    move-result v0

    return v0
.end method

.method public registerSelectAwait(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .param p1, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
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
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
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

    .line 185
    :goto_0
    nop

    .line 186
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v1, :cond_3

    .line 190
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v1, :cond_1

    .line 192
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->resumeSelectWithException(Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 194
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;->startCoroutineUndispatched(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 196
    :cond_2
    :goto_1
    return-void

    .line 198
    :cond_3
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->startInternal$kotlinx_coroutines_core(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_4

    .line 200
    new-instance v1, Lkotlinx/coroutines/experimental/SelectAwaitOnCompletion;

    invoke-direct {v1, p0, p1, p2}, Lkotlinx/coroutines/experimental/SelectAwaitOnCompletion;-><init>(Lkotlinx/coroutines/experimental/DeferredCoroutine;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    .line 201
    return-void

    .line 185
    .end local v0    # "state":Ljava/lang/Object;
    :cond_4
    goto :goto_0
.end method

.method public final selectAwaitCompletion$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V
    .locals 2
    .param p1, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "state"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    instance-of v0, p3, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v0, :cond_0

    .line 210
    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->resumeSelectWithException(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lkotlin/coroutines/experimental/CoroutinesKt;->startCoroutine(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 214
    :cond_1
    :goto_0
    return-void
.end method
