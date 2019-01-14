.class public final Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;
.super Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
.source "Select.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/selects/SelectBuilder;
.implements Lkotlinx/coroutines/experimental/selects/SelectInstance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/CancellableContinuationImpl<",
        "TR;>;",
        "Lkotlinx/coroutines/experimental/selects/SelectBuilder<",
        "TR;>;",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/experimental/selects/SelectBuilderImpl\n*L\n1#1,278:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B\u0013\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000f\u001a\u00020\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0001J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0001J\u0017\u0010\u001a\u001a\u00020\u00122\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0010\u00a2\u0006\u0002\u0008\u001cJ>\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u001c\u0010\"\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00190#H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J\u0018\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u00172\u0006\u0010\'\u001a\u00020\u000cH\u0016JD\u0010(\u001a\u00020\u0012\"\u0004\u0008\u0001\u0010)*\u0008\u0012\u0004\u0012\u0002H)0*2\"\u0010\"\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H)\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00190+H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,J2\u0010-\u001a\u00020\u0012*\u00020.2\u001c\u0010\"\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00190#H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010/J<\u00100\u001a\u00020\u0012*\u0002012\u0008\u00102\u001a\u0004\u0018\u00010\u00192\u001c\u0010\"\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00190#H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u00103JD\u00104\u001a\u00020\u0012\"\u0004\u0008\u0001\u00105*\u0008\u0012\u0004\u0012\u0002H5062\"\u0010\"\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H5\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00190+H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u00107JF\u00108\u001a\u00020\u0012\"\u0004\u0008\u0001\u00105*\u0008\u0012\u0004\u0012\u0002H5062$\u0010\"\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u0001H5\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00190+H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u00107JF\u00109\u001a\u00020\u0012\"\u0004\u0008\u0001\u00105*\u0008\u0012\u0004\u0012\u0002H50:2\u0006\u0010;\u001a\u0002H52\u001c\u0010\"\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00190#H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010<R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006="
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;",
        "R",
        "Lkotlinx/coroutines/experimental/CancellableContinuationImpl;",
        "Lkotlinx/coroutines/experimental/selects/SelectBuilder;",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "delegate",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlin/coroutines/experimental/Continuation;)V",
        "completion",
        "getCompletion",
        "()Lkotlin/coroutines/experimental/Continuation;",
        "defaultResumeMode",
        "",
        "getDefaultResumeMode",
        "()I",
        "createContext",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "disposeOnSelect",
        "",
        "handle",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "handleBuilderException",
        "e",
        "",
        "initSelectResult",
        "",
        "onParentCompletion",
        "cause",
        "onParentCompletion$kotlinx_coroutines_core",
        "onTimeout",
        "time",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "block",
        "Lkotlin/Function1;",
        "(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V",
        "resumeSelectWithException",
        "exception",
        "mode",
        "onAwait",
        "T",
        "Lkotlinx/coroutines/experimental/Deferred;",
        "Lkotlin/Function2;",
        "(Lkotlinx/coroutines/experimental/Deferred;Lkotlin/jvm/functions/Function2;)V",
        "onJoin",
        "Lkotlinx/coroutines/experimental/Job;",
        "(Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function1;)V",
        "onLock",
        "Lkotlinx/coroutines/experimental/sync/Mutex;",
        "owner",
        "(Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "onReceive",
        "E",
        "Lkotlinx/coroutines/experimental/channels/ReceiveChannel;",
        "(Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;)V",
        "onReceiveOrNull",
        "onSend",
        "Lkotlinx/coroutines/experimental/channels/SendChannel;",
        "element",
        "(Lkotlinx/coroutines/experimental/channels/SendChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1
    .param p1, "delegate"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    nop

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    return-void
.end method


# virtual methods
.method protected createContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 207
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public disposeOnSelect(Lkotlinx/coroutines/experimental/DisposableHandle;)V
    .locals 2
    .param p1, "handle"    # Lkotlinx/coroutines/experimental/DisposableHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "handle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    new-instance v0, Lkotlinx/coroutines/experimental/DisposeOnCompletion;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/Job;

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/experimental/DisposeOnCompletion;-><init>(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 276
    return-void
.end method

.method public getCompletion()Lkotlin/coroutines/experimental/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/Continuation<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 222
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 222
    .local v0, "$i$a$1$check":I
    const-string v0, "Must be selected first"

    .line 222
    .end local v0    # "$i$a$1$check":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 223
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/experimental/Continuation;

    return-object v0
.end method

.method protected getDefaultResumeMode()I
    .locals 1

    .line 219
    const/4 v0, 0x2

    return v0
.end method

.method public final handleBuilderException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->trySelect(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, "token":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->completeResume(Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 198
    .end local v0    # "token":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void
.end method

.method public final initSelectResult()Ljava/lang/Object;
    .locals 1
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 202
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->initCancellability()V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onAwait(Lkotlinx/coroutines/experimental/Deferred;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/Deferred;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/Deferred<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/experimental/Deferred;->registerSelectAwait(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    .line 237
    return-void
.end method

.method public onJoin(Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/Job;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/experimental/Job;->registerSelectJoin(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V

    .line 233
    return-void
.end method

.method public onLock(Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/sync/Mutex;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "owner"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/sync/Mutex;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-interface {p1, v0, p2, p3}, Lkotlinx/coroutines/experimental/sync/Mutex;->registerSelectLock(Lkotlinx/coroutines/experimental/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 253
    return-void
.end method

.method public onParentCompletion$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->trySelect(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 217
    :cond_0
    return-void
.end method

.method public onReceive(Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/channels/ReceiveChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/experimental/channels/ReceiveChannel;->registerSelectReceive(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    .line 245
    return-void
.end method

.method public onReceiveOrNull(Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/channels/ReceiveChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/experimental/channels/ReceiveChannel;->registerSelectReceiveOrNull(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    .line 249
    return-void
.end method

.method public onSend(Lkotlinx/coroutines/experimental/channels/SendChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/channels/SendChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/channels/SendChannel<",
            "-TE;>;TE;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-interface {p1, v0, p2, p3}, Lkotlinx/coroutines/experimental/channels/SendChannel;->registerSelectSend(Lkotlinx/coroutines/experimental/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 241
    return-void
.end method

.method public onTimeout(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    int-to-long v1, v0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 256
    .local v0, "$i$a$1$require":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " cannot be negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .end local v0    # "$i$a$1$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 257
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x0

    if-nez v2, :cond_3

    .line 258
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->trySelect(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;->startCoroutineUndispatched(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V

    .line 260
    :cond_2
    return-void

    .line 262
    :cond_3
    new-instance v1, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl$onTimeout$action$1;

    invoke-direct {v1, p0, p4}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl$onTimeout$action$1;-><init>(Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 268
    .local v1, "action":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    sget-object v3, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v3, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v2

    instance-of v3, v2, Lkotlinx/coroutines/experimental/Delay;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    check-cast v0, Lkotlinx/coroutines/experimental/Delay;

    .line 269
    .local v0, "delay":Lkotlinx/coroutines/experimental/Delay;
    if-eqz v0, :cond_5

    .line 270
    invoke-interface {v0, p1, p2, p3, v1}, Lkotlinx/coroutines/experimental/Delay;->invokeOnTimeout(JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->disposeOnSelect(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    goto :goto_2

    .line 271
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/experimental/ScheduledKt;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v2, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    const-string v3, "scheduledExecutor.schedule(action, time, unit)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-static {p0, v2}, Lkotlinx/coroutines/experimental/JobKt;->cancelFutureOnCompletion(Lkotlinx/coroutines/experimental/Job;Ljava/util/concurrent/Future;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 272
    :goto_2
    return-void
.end method

.method public resumeSelectWithException(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "mode"    # I

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 227
    .local v0, "$i$a$1$check":I
    const-string v0, "Must be selected first"

    .line 227
    .end local v0    # "$i$a$1$check":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 228
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->resumeWithException(Ljava/lang/Throwable;I)V

    .line 229
    return-void
.end method
