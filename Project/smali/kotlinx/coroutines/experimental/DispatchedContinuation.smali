.class public final Lkotlinx/coroutines/experimental/DispatchedContinuation;
.super Ljava/lang/Object;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineDispatcher.kt\nkotlinx/coroutines/experimental/DispatchedContinuation\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/experimental/CoroutineContextKt\n*L\n1#1,166:1\n121#1:167\n122#1,2:171\n124#1:174\n138#1:180\n139#1,2:184\n141#1:187\n91#2,3:168\n95#2:173\n91#2,5:175\n91#2,3:181\n95#2:186\n91#2,5:188\n*E\n*S KotlinDebug\n*F\n+ 1 CoroutineDispatcher.kt\nkotlinx/coroutines/experimental/DispatchedContinuation\n*L\n116#1:167\n116#1,2:171\n116#1:174\n133#1:180\n133#1,2:184\n133#1:187\n116#1,3:168\n116#1:173\n121#1,5:175\n133#1,3:181\n133#1:186\n138#1,5:188\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0002\u0010\u0006J!\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0016\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00028\u0000H\u0087\u0008\u00a2\u0006\u0002\u0010\u0013J\u0011\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0017H\u0087\u0008J\u0010\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\u0007\u001a\u00020\u0008X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00028\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/DispatchedContinuation;",
        "T",
        "Lkotlin/coroutines/experimental/Continuation;",
        "dispatcher",
        "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
        "continuation",
        "(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Lkotlin/coroutines/experimental/Continuation;)V",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "dispatchYield",
        "",
        "job",
        "Lkotlinx/coroutines/experimental/Job;",
        "value",
        "dispatchYield$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/experimental/Job;Ljava/lang/Object;)V",
        "resume",
        "(Ljava/lang/Object;)V",
        "resumeUndispatched",
        "resumeUndispatchedWithException",
        "exception",
        "",
        "resumeWithException",
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
.field public final continuation:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1
    .param p1, "dispatcher"    # Lkotlinx/coroutines/experimental/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    return-void
.end method


# virtual methods
.method public final dispatchYield$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/Job;Ljava/lang/Object;)V
    .locals 3
    .param p1, "job"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/Job;",
            "TT;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 146
    .local v0, "context":Lkotlin/coroutines/experimental/CoroutineContext;
    iget-object v1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    new-instance v2, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;-><init>(Lkotlinx/coroutines/experimental/DispatchedContinuation;Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/Job;Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 111
    .local v0, "context":Lkotlin/coroutines/experimental/CoroutineContext;
    iget-object v1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/experimental/CoroutineContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    new-instance v2, Lkotlinx/coroutines/experimental/DispatchedContinuation$resume$1;

    invoke-direct {v2, p0, p1}, Lkotlinx/coroutines/experimental/DispatchedContinuation$resume$1;-><init>(Lkotlinx/coroutines/experimental/DispatchedContinuation;Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 116
    :cond_0
    move-object v1, p0

    .line 116
    .local v1, "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    const/4 v2, 0x0

    move v3, v2

    .line 167
    .local v3, "$i$f$resumeUndispatched":I
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v4

    .line 167
    .local v4, "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    move v5, v2

    .line 168
    .local v5, "$i$f$withCoroutineContext":I
    invoke-static {v4}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "oldName$iv$iv":Ljava/lang/String;
    nop

    .line 170
    nop

    .line 171
    .local v2, "$i$a$1$withCoroutineContext":I
    :try_start_0
    iget-object v7, v1, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v7, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 172
    .end local v2    # "$i$a$1$withCoroutineContext":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-static {v6}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    .line 174
    .end local v1    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .end local v3    # "$i$f$resumeUndispatched":I
    .end local v4    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v5    # "$i$f$withCoroutineContext":I
    .end local v6    # "oldName$iv$iv":Ljava/lang/String;
    :goto_0
    nop

    .line 116
    nop

    .line 117
    return-void

    .line 173
    .restart local v1    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .restart local v3    # "$i$f$resumeUndispatched":I
    .restart local v4    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local v5    # "$i$f$withCoroutineContext":I
    .restart local v6    # "oldName$iv$iv":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v6}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    throw v2
.end method

.method public final resumeUndispatched(Ljava/lang/Object;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    .local v0, "$i$f$withCoroutineContext":I
    const/4 v1, 0x0

    .line 121
    .local v1, "$i$f$resumeUndispatched":I
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    .line 175
    .local v2, "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "oldName$iv":Ljava/lang/String;
    nop

    .line 177
    const/4 v4, 0x0

    .line 122
    .local v4, "$i$a$1$withCoroutineContext":I
    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v6, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 123
    .end local v4    # "$i$a$1$withCoroutineContext":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 179
    invoke-static {v3}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 124
    .end local v0    # "$i$f$withCoroutineContext":I
    .end local v2    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v3    # "oldName$iv":Ljava/lang/String;
    return-void

    .line 179
    .restart local v0    # "$i$f$withCoroutineContext":I
    .restart local v2    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local v3    # "oldName$iv":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v3}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v4
.end method

.method public final resumeUndispatchedWithException(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 138
    .local v0, "$i$f$withCoroutineContext":I
    const/4 v1, 0x0

    .line 138
    .local v1, "$i$f$resumeUndispatchedWithException":I
    const-string v2, "exception"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    .line 188
    .local v2, "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "oldName$iv":Ljava/lang/String;
    nop

    .line 190
    const/4 v4, 0x0

    .line 139
    .local v4, "$i$a$1$withCoroutineContext":I
    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v6, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 140
    .end local v4    # "$i$a$1$withCoroutineContext":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 192
    invoke-static {v3}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 141
    .end local v0    # "$i$f$withCoroutineContext":I
    .end local v2    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v3    # "oldName$iv":Ljava/lang/String;
    return-void

    .line 192
    .restart local v0    # "$i$f$withCoroutineContext":I
    .restart local v2    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local v3    # "oldName$iv":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v3}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v4
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 128
    .local v0, "context":Lkotlin/coroutines/experimental/CoroutineContext;
    iget-object v1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/experimental/CoroutineContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    new-instance v2, Lkotlinx/coroutines/experimental/DispatchedContinuation$resumeWithException$1;

    invoke-direct {v2, p0, p1}, Lkotlinx/coroutines/experimental/DispatchedContinuation$resumeWithException$1;-><init>(Lkotlinx/coroutines/experimental/DispatchedContinuation;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 133
    :cond_0
    move-object v1, p0

    .line 133
    .local v1, "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    const/4 v2, 0x0

    move v3, v2

    .line 180
    .local v3, "$i$f$resumeUndispatchedWithException":I
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v4

    .line 180
    .local v4, "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    move v5, v2

    .line 181
    .local v5, "$i$f$withCoroutineContext":I
    invoke-static {v4}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, "oldName$iv$iv":Ljava/lang/String;
    nop

    .line 183
    nop

    .line 184
    .local v2, "$i$a$1$withCoroutineContext":I
    :try_start_0
    iget-object v7, v1, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v7, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 185
    .end local v2    # "$i$a$1$withCoroutineContext":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-static {v6}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    .line 187
    .end local v1    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .end local v3    # "$i$f$resumeUndispatchedWithException":I
    .end local v4    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v5    # "$i$f$withCoroutineContext":I
    .end local v6    # "oldName$iv$iv":Ljava/lang/String;
    :goto_0
    nop

    .line 133
    nop

    .line 134
    return-void

    .line 186
    .restart local v1    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .restart local v3    # "$i$f$resumeUndispatchedWithException":I
    .restart local v4    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local v5    # "$i$f$withCoroutineContext":I
    .restart local v6    # "oldName$iv$iv":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v6}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    throw v2
.end method
