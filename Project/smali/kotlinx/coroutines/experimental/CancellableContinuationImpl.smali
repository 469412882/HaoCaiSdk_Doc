.class public Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
.super Lkotlinx/coroutines/experimental/AbstractCoroutine;
.source "CancellableContinuation.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/CancellableContinuation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;,
        Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/AbstractCoroutine<",
        "TT;>;",
        "Lkotlinx/coroutines/experimental/CancellableContinuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationImpl\n+ 2 CoroutineDispatcher.kt\nkotlinx/coroutines/experimental/DispatchedContinuation\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/experimental/CoroutineContextKt\n*L\n1#1,279:1\n138#2:280\n139#2,2:284\n141#2:287\n121#2:288\n122#2,2:292\n124#2:295\n91#3,3:281\n95#3:286\n91#3,3:289\n95#3:294\n*E\n*S KotlinDebug\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationImpl\n*L\n243#1:280\n243#1,2:284\n243#1:287\n251#1:288\n251#1,2:292\n251#1:295\n243#1,3:281\n243#1:286\n251#1,3:289\n251#1:294\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u000b\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0011\u0018\u0000 %*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0002%&B\u001b\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\nH\u0014J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0014H\u0001J\u0008\u0010\u0019\u001a\u00020\u0012H\u0016J!\u0010\u001a\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001b\u001a\u00028\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0019\u0010!\u001a\u00020\u0012*\u00020\"2\u0006\u0010\u001b\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010#J\u0014\u0010$\u001a\u00020\u0012*\u00020\"2\u0006\u0010\u001f\u001a\u00020 H\u0016R\u0012\u0010\t\u001a\u00020\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0004X\u0085\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/CancellableContinuationImpl;",
        "T",
        "Lkotlinx/coroutines/experimental/AbstractCoroutine;",
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "delegate",
        "Lkotlin/coroutines/experimental/Continuation;",
        "active",
        "",
        "(Lkotlin/coroutines/experimental/Continuation;Z)V",
        "decision",
        "",
        "isCancelled",
        "()Z",
        "parentContext",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "getParentContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "afterCompletion",
        "",
        "state",
        "",
        "mode",
        "completeResume",
        "token",
        "getResult",
        "initCancellability",
        "tryResume",
        "value",
        "idempotent",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "tryResumeWithException",
        "exception",
        "",
        "resumeUndispatched",
        "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
        "(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Ljava/lang/Object;)V",
        "resumeUndispatchedWithException",
        "Companion",
        "CompletedIdempotentResult",
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


# static fields
.field public static final Companion:Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;

.field public static final DECISION:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lkotlinx/coroutines/experimental/CancellableContinuationImpl<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESUMED:I = 0x2

.field public static final SUSPENDED:I = 0x1

.field public static final UNDECIDED:I


# instance fields
.field private volatile decision:I

.field protected final delegate:Lkotlin/coroutines/experimental/Continuation;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->Companion:Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;

    .line 171
    const-class v0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    const-string v1, "decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const-string v1, "AtomicIntegerFieldUpdate\u2026::class.java, \"decision\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->DECISION:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;Z)V
    .locals 1
    .param p1, "delegate"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;Z)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    nop

    .line 161
    invoke-direct {p0, p2}, Lkotlinx/coroutines/experimental/AbstractCoroutine;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/experimental/Continuation;

    return-void
.end method


# virtual methods
.method protected afterCompletion(Ljava/lang/Object;I)V
    .locals 9
    .param p1, "state"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "mode"    # I

    .line 236
    iget v0, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->decision:I

    .line 237
    .local v0, "decision":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->DECISION:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 239
    :cond_0
    instance-of v2, p1, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v2, :cond_2

    .line 240
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v2

    .line 241
    .local v2, "exception":Ljava/lang/Throwable;
    packed-switch p2, :pswitch_data_0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 244
    :pswitch_0
    iget-object v1, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-static {v1, v2}, Lkotlinx/coroutines/experimental/CoroutineDispatcherKt;->resumeDirectWithException(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v3, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/experimental/Continuation;

    if-nez v3, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.DispatchedContinuation<T>"

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v3, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    .line 243
    .local v3, "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    move v4, v1

    .line 280
    .local v4, "$i$f$resumeUndispatchedWithException":I
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v5

    .line 280
    .local v5, "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    move v6, v1

    .line 281
    .local v6, "$i$f$withCoroutineContext":I
    invoke-static {v5}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "oldName$iv$iv":Ljava/lang/String;
    nop

    .line 283
    nop

    .line 284
    .local v1, "$i$a$1$withCoroutineContext":I
    :try_start_0
    iget-object v8, v3, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v8, v2}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 285
    .end local v1    # "$i$a$1$withCoroutineContext":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-static {v7}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    .line 287
    .end local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .end local v4    # "$i$f$resumeUndispatchedWithException":I
    .end local v5    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v6    # "$i$f$withCoroutineContext":I
    .end local v7    # "oldName$iv$iv":Ljava/lang/String;
    goto :goto_0

    .line 286
    .restart local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .restart local v4    # "$i$f$resumeUndispatchedWithException":I
    .restart local v5    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local v6    # "$i$f$withCoroutineContext":I
    .restart local v7    # "oldName$iv$iv":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {v7}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    throw v1

    .line 242
    .end local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .end local v4    # "$i$f$resumeUndispatchedWithException":I
    .end local v5    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v6    # "$i$f$withCoroutineContext":I
    .end local v7    # "oldName$iv$iv":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v1, v2}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 246
    .end local v2    # "exception":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 248
    :cond_2
    sget-object v2, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->Companion:Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;

    invoke-virtual {v2, p1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;->getSuccessfulResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 249
    .local v2, "value":Ljava/lang/Object;
    packed-switch p2, :pswitch_data_1

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 252
    :pswitch_3
    iget-object v1, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-static {v1, v2}, Lkotlinx/coroutines/experimental/CoroutineDispatcherKt;->resumeDirect(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V

    goto :goto_1

    .line 251
    :pswitch_4
    iget-object v3, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/experimental/Continuation;

    if-nez v3, :cond_3

    new-instance v1, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.DispatchedContinuation<T>"

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    check-cast v3, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    .line 251
    .restart local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    move v4, v1

    .line 288
    .local v4, "$i$f$resumeUndispatched":I
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v5

    .line 288
    .restart local v5    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    move v6, v1

    .line 289
    .restart local v6    # "$i$f$withCoroutineContext":I
    invoke-static {v5}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v7

    .line 290
    .restart local v7    # "oldName$iv$iv":Ljava/lang/String;
    nop

    .line 291
    nop

    .line 292
    .restart local v1    # "$i$a$1$withCoroutineContext":I
    :try_start_1
    iget-object v8, v3, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v8, v2}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 293
    .end local v1    # "$i$a$1$withCoroutineContext":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    invoke-static {v7}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    .line 295
    .end local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .end local v4    # "$i$f$resumeUndispatched":I
    .end local v5    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v6    # "$i$f$withCoroutineContext":I
    .end local v7    # "oldName$iv$iv":Ljava/lang/String;
    goto :goto_1

    .line 294
    .restart local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .restart local v4    # "$i$f$resumeUndispatched":I
    .restart local v5    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local v6    # "$i$f$withCoroutineContext":I
    .restart local v7    # "oldName$iv$iv":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-static {v7}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    throw v1

    .line 250
    .end local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .end local v4    # "$i$f$resumeUndispatched":I
    .end local v5    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v6    # "$i$f$withCoroutineContext":I
    .end local v7    # "oldName$iv$iv":Ljava/lang/String;
    :pswitch_5
    iget-object v1, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v1, v2}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 254
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    nop

    .line 255
    nop

    .line 256
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public completeResume(Ljava/lang/Object;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getDefaultResumeMode()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->completeUpdateState(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 233
    return-void
.end method

.method protected getParentContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 166
    iget-object v0, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 4
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 187
    iget v0, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->decision:I

    .line 188
    .local v0, "decision":I
    if-nez v0, :cond_0

    sget-object v1, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->DECISION:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getState()Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, "state":Ljava/lang/Object;
    instance-of v2, v1, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2

    .line 192
    :cond_1
    sget-object v2, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->Companion:Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;

    invoke-virtual {v2, v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;->getSuccessfulResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public initCancellability()V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getParentContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initParentJob(Lkotlinx/coroutines/experimental/Job;)V

    .line 183
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 195
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getState()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/experimental/JobSupport$Cancelled;

    return v0
.end method

.method public resumeUndispatched(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Ljava/lang/Object;)V
    .locals 4
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/experimental/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-eqz v0, :cond_3

    .line 260
    .local v0, "dc":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    iget-object v1, v0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    move v1, v3

    .line 260
    .local v1, "$i$a$1$check":I
    const-string v1, "Must be invoked from the context CoroutineDispatcher"

    .line 260
    .end local v1    # "$i$a$1$check":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 261
    :cond_2
    invoke-virtual {p0, p2, v2}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->resume(Ljava/lang/Object;I)V

    .line 262
    return-void

    .line 259
    .end local v0    # "dc":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be used with DispatchedContinuation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public resumeUndispatchedWithException(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/experimental/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-eqz v0, :cond_3

    .line 266
    .local v0, "dc":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    iget-object v1, v0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    move v1, v3

    .line 266
    .local v1, "$i$a$1$check":I
    const-string v1, "Must be invoked from the context CoroutineDispatcher"

    .line 266
    .end local v1    # "$i$a$1$check":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 267
    :cond_2
    invoke-virtual {p0, p2, v2}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->resumeWithException(Ljava/lang/Throwable;I)V

    .line 268
    return-void

    .line 265
    .end local v0    # "dc":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be used with DispatchedContinuation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "idempotent"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 198
    :goto_0
    nop

    .line 199
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 201
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v1, :cond_2

    .line 202
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    invoke-interface {v1}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->getIdempotentStart()Ljava/lang/Object;

    move-result-object v1

    .line 203
    .local v1, "idempotentStart":Ljava/lang/Object;
    if-nez p2, :cond_0

    if-nez v1, :cond_0

    move-object v2, p1

    goto :goto_1

    .line 204
    :cond_0
    new-instance v2, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    invoke-direct {v2, v1, p2, p1, v3}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/experimental/JobSupport$Incomplete;)V

    .line 203
    :goto_1
    nop

    .line 205
    .local v2, "update":Ljava/lang/Object;
    invoke-virtual {p0, v0, v2}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->tryUpdateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    .line 215
    .end local v0    # "state":Ljava/lang/Object;
    .end local v1    # "idempotentStart":Ljava/lang/Object;
    .end local v2    # "update":Ljava/lang/Object;
    :cond_1
    nop

    .line 198
    goto :goto_0

    .line 207
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 208
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;->idempotentResume:Ljava/lang/Object;

    if-ne v1, p2, :cond_5

    .line 209
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;->result:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_4

    move v1, v2

    .line 209
    .local v1, "$i$a$1$check":I
    const-string v1, "Non-idempotent resume"

    .line 209
    .end local v1    # "$i$a$1$check":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 210
    :cond_4
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;->token:Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    return-object v1

    .line 212
    :cond_5
    return-object v2

    .line 214
    :cond_6
    return-object v2
.end method

.method public tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    :goto_0
    nop

    .line 221
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 223
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v1, :cond_1

    .line 224
    new-instance v1, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    invoke-interface {v2}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->getIdempotentStart()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->tryUpdateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 227
    .end local v0    # "state":Ljava/lang/Object;
    :cond_0
    nop

    .line 220
    goto :goto_0

    .line 226
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
