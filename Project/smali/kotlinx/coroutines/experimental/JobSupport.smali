.class public Lkotlinx/coroutines/experimental/JobSupport;
.super Lkotlin/coroutines/experimental/AbstractCoroutineContextElement;
.source "Job.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;,
        Lkotlinx/coroutines/experimental/JobSupport$Incomplete;,
        Lkotlinx/coroutines/experimental/JobSupport$NodeList;,
        Lkotlinx/coroutines/experimental/JobSupport$CompletedIdempotentStart;,
        Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;,
        Lkotlinx/coroutines/experimental/JobSupport$Cancelled;,
        Lkotlinx/coroutines/experimental/JobSupport$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobSupport\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead\n+ 3 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationKt\n*L\n1#1,850:1\n595#2,6:851\n171#3:857\n111#3,3:858\n172#3,5:861\n121#4,9:866\n*E\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobSupport\n*L\n408#1,6:851\n593#1:857\n593#1,3:858\n593#1,5:861\n611#1,9:866\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0016\u0018\u0000 E2\u00020\u00012\u00020\u0002:\u0007CDEFGHIB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001a\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0010\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\"\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0004J\u0006\u0010\u001b\u001a\u00020\u0017J\u0010\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u0017H\u0014J\u0010\u0010\u001e\u001a\u00020\u00122\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0002J \u0010 \u001a\u00020\r2\u0018\u0010!\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0012\u0004\u0012\u00020\u00120\"j\u0002`#J\u0011\u0010$\u001a\u00020\u0012H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%J\u0011\u0010&\u001a\u00020\u0012H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%J&\u0010\'\u001a\u0006\u0012\u0002\u0008\u00030(2\u0018\u0010!\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0012\u0004\u0012\u00020\u00120\"j\u0002`#H\u0002J\u0017\u0010)\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0010\u00a2\u0006\u0002\u0008*J\u0008\u0010+\u001a\u00020\u0012H\u0014J\u0010\u0010,\u001a\u0004\u0018\u00010\u00072\u0006\u0010-\u001a\u00020.J\u0010\u0010/\u001a\u0004\u0018\u00010\u00072\u0006\u0010-\u001a\u00020.JB\u00100\u001a\u00020\u0012\"\u0004\u0008\u0000\u001012\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002H1032\u001c\u00104\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H105\u0012\u0006\u0012\u0004\u0018\u00010\u00070\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u00106J\u0019\u00107\u001a\u00020\u00122\n\u00108\u001a\u0006\u0012\u0002\u0008\u00030(H\u0000\u00a2\u0006\u0002\u00089J\u0006\u0010:\u001a\u00020\u0004J\u0017\u0010;\u001a\u00020\u00142\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007H\u0000\u00a2\u0006\u0002\u0008<J\u0008\u0010=\u001a\u00020>H\u0016J\u0010\u0010?\u001a\u00020\u00042\u0008\u0010@\u001a\u0004\u0018\u00010\u0007J\u001a\u0010A\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0007H\u0004J\"\u0010B\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0004R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u000b\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00078DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006J"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/JobSupport;",
        "Lkotlin/coroutines/experimental/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/experimental/Job;",
        "active",
        "",
        "(Z)V",
        "_state",
        "",
        "isActive",
        "()Z",
        "isCompleted",
        "isSelected",
        "parentHandle",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "state",
        "getState",
        "()Ljava/lang/Object;",
        "afterCompletion",
        "",
        "mode",
        "",
        "cancel",
        "cause",
        "",
        "completeUpdateState",
        "expect",
        "update",
        "getCompletionException",
        "handleCompletionException",
        "closeException",
        "initParentJob",
        "parent",
        "invokeOnCompletion",
        "handler",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/experimental/CompletionHandler;",
        "join",
        "(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "joinSuspend",
        "makeNode",
        "Lkotlinx/coroutines/experimental/JobNode;",
        "onParentCompletion",
        "onParentCompletion$kotlinx_coroutines_core",
        "onStart",
        "performAtomicIfNotSelected",
        "desc",
        "Lkotlinx/coroutines/experimental/internal/AtomicDesc;",
        "performAtomicTrySelect",
        "registerSelectJoin",
        "R",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V",
        "removeNode",
        "node",
        "removeNode$kotlinx_coroutines_core",
        "start",
        "startInternal",
        "startInternal$kotlinx_coroutines_core",
        "toString",
        "",
        "trySelect",
        "idempotent",
        "tryUpdateState",
        "updateState",
        "AtomicSelectOp",
        "Cancelled",
        "Companion",
        "CompletedExceptionally",
        "CompletedIdempotentStart",
        "Incomplete",
        "NodeList",
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
.field public static final Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

.field private static final STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlinx/coroutines/experimental/JobSupport;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile _state:Ljava/lang/Object;

.field private volatile parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/experimental/JobSupport$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/JobSupport$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    .line 330
    const-class v0, Lkotlinx/coroutines/experimental/JobSupport;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const-string v1, "AtomicReferenceFieldUpda\u2026ny::class.java, \"_state\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/JobSupport;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 278
    sget-object v0, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-direct {p0, v0}, Lkotlin/coroutines/experimental/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/experimental/CoroutineContext$Key;)V

    .line 323
    if-eqz p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyActive$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyNew$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getSTATE$cp()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 278
    sget-object v0, Lkotlinx/coroutines/experimental/JobSupport;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic access$get_state$p(Lkotlinx/coroutines/experimental/JobSupport;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/JobSupport;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 278
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$set_state$p(Lkotlinx/coroutines/experimental/JobSupport;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/JobSupport;
    .param p1, "<set-?>"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 278
    iput-object p1, p0, Lkotlinx/coroutines/experimental/JobSupport;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final joinSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
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

    .line 611
    const/4 v0, 0x0

    .line 866
    .local v0, "holdCancellability$iv":Z
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    .line 869
    .local v2, "$i$f$suspendCancellableCoroutine":I
    invoke-static {p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v3

    .line 869
    .local v3, "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    const/4 v4, 0x0

    move v5, v4

    .line 870
    .local v5, "$i$a$1$suspendCoroutineOrReturn":I
    new-instance v6, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    invoke-direct {v6, v3, v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    move-object v1, v6

    .line 871
    .local v1, "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initCancellability()V

    .line 872
    :cond_0
    move-object v6, v1

    check-cast v6, Lkotlinx/coroutines/experimental/CancellableContinuation;

    .line 612
    .local v4, "$i$a$1$suspendCancellableCoroutine":I
    .local v6, "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/experimental/Job;

    new-instance v8, Lkotlinx/coroutines/experimental/ResumeOnCompletion;

    move-object v9, p0

    check-cast v9, Lkotlinx/coroutines/experimental/Job;

    move-object v10, v6

    check-cast v10, Lkotlin/coroutines/experimental/Continuation;

    invoke-direct {v8, v9, v10}, Lkotlinx/coroutines/experimental/ResumeOnCompletion;-><init>(Lkotlinx/coroutines/experimental/Job;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v8}, Lkotlinx/coroutines/experimental/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlinx/coroutines/experimental/JobKt;->disposeOnCompletion(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 613
    .end local v4    # "$i$a$1$suspendCancellableCoroutine":I
    .end local v6    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    nop

    .line 873
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 869
    .end local v0    # "holdCancellability$iv":Z
    .end local v1    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    .end local v3    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .end local v5    # "$i$a$1$suspendCoroutineOrReturn":I
    nop

    .line 874
    nop

    .line 613
    return-object v0
.end method

.method private final makeNode(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/JobNode;
    .locals 6
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/experimental/JobNode<",
            "*>;"
        }
    .end annotation

    .line 677
    instance-of v0, p1, Lkotlinx/coroutines/experimental/JobNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v0, :cond_3

    move-object v1, v0

    .line 677
    .local v1, "it":Lkotlinx/coroutines/experimental/JobNode;
    const/4 v2, 0x0

    move v3, v2

    .line 677
    .local v3, "$i$a$1$also":I
    iget-object v4, v1, Lkotlinx/coroutines/experimental/JobNode;->job:Lkotlinx/coroutines/experimental/Job;

    move-object v5, p0

    check-cast v5, Lkotlinx/coroutines/experimental/JobSupport;

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    if-nez v2, :cond_2

    const-string v0, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 677
    .end local v1    # "it":Lkotlinx/coroutines/experimental/JobNode;
    .end local v3    # "$i$a$1$also":I
    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    .line 678
    :cond_3
    new-instance v0, Lkotlinx/coroutines/experimental/InvokeOnCompletion;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/Job;

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/experimental/InvokeOnCompletion;-><init>(Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlinx/coroutines/experimental/JobNode;

    :goto_1
    return-object v0
.end method


# virtual methods
.method protected afterCompletion(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "mode"    # I

    .line 674
    return-void
.end method

.method public final cancel(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 658
    :goto_0
    nop

    .line 659
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 660
    .local v0, "state":Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    new-instance v2, Lkotlinx/coroutines/experimental/JobSupport$Cancelled;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->getIdempotentStart()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lkotlinx/coroutines/experimental/JobSupport$Cancelled;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2, v1}, Lkotlinx/coroutines/experimental/JobSupport;->updateState(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    .line 658
    .end local v0    # "state":Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    :cond_1
    goto :goto_0

    .line 659
    :cond_2
    return v1
.end method

.method protected final completeUpdateState(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 12
    .param p1, "expect"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "update"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "mode"    # I

    const-string v0, "expect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    instance-of v0, p2, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->cause:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 399
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_1
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, v2

    .line 400
    .local v1, "completionException":Lkotlin/jvm/internal/Ref$ObjectRef;
    nop

    .line 402
    instance-of v2, p1, Lkotlinx/coroutines/experimental/JobNode;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 403
    :try_start_0
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/experimental/JobNode;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/experimental/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 404
    :catch_0
    move-exception v2

    .line 405
    .local v2, "ex":Ljava/lang/Throwable;
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 406
    .end local v2    # "ex":Ljava/lang/Throwable;
    :goto_2
    goto :goto_5

    .line 408
    :cond_2
    instance-of v2, p1, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    .line 408
    .local v2, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
    move v4, v3

    .line 851
    .local v4, "$i$f$forEach":I
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v3, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v3, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 852
    .local v5, "cur$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .local v6, "$i$a$1$forEach":I
    .local v7, "$i$a$1$apply":I
    :goto_3
    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    .line 853
    instance-of v8, v5, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v8, :cond_5

    move-object v8, v5

    check-cast v8, Lkotlinx/coroutines/experimental/JobNode;

    .line 409
    .local v8, "node":Lkotlinx/coroutines/experimental/JobNode;
    nop

    .line 410
    :try_start_1
    invoke-virtual {v8, v0}, Lkotlinx/coroutines/experimental/JobNode;->invoke(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 411
    :catch_1
    move-exception v9

    .line 412
    .local v9, "ex":Ljava/lang/Throwable;
    iget-object v10, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_4

    move-object v11, v10

    .line 412
    .local v11, "$receiver":Ljava/lang/Throwable;
    invoke-static {v11, v9}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 412
    .end local v7    # "$i$a$1$apply":I
    .end local v11    # "$receiver":Ljava/lang/Throwable;
    if-eqz v10, :cond_4

    goto :goto_4

    .line 412
    .local v7, "$i$a$2$run":I
    :cond_4
    move-object v10, p0

    check-cast v10, Lkotlinx/coroutines/experimental/JobSupport;

    .line 412
    .local v10, "$receiver":Lkotlinx/coroutines/experimental/JobSupport;
    iput-object v9, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 412
    .end local v7    # "$i$a$2$run":I
    .end local v10    # "$receiver":Lkotlinx/coroutines/experimental/JobSupport;
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 413
    .end local v6    # "$i$a$1$forEach":I
    .end local v8    # "node":Lkotlinx/coroutines/experimental/JobNode;
    .end local v9    # "ex":Ljava/lang/Throwable;
    .local v7, "$i$a$1$apply":I
    :goto_4
    nop

    .line 415
    nop

    .line 854
    .restart local v6    # "$i$a$1$forEach":I
    :cond_5
    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v5

    .line 852
    goto :goto_3

    .line 856
    .end local v2    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "cur$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v6    # "$i$a$1$forEach":I
    .end local v7    # "$i$a$1$apply":I
    :cond_6
    goto :goto_5

    .line 417
    :cond_7
    instance-of v2, p1, Lkotlinx/coroutines/experimental/Empty;

    if-nez v2, :cond_8

    const-string v2, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 418
    :cond_8
    :goto_5
    nop

    .line 420
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 420
    .local v2, "it":Ljava/lang/Throwable;
    .local v3, "$i$a$2$let":I
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/experimental/JobSupport;->handleCompletionException(Ljava/lang/Throwable;)V

    .line 422
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$2$let":I
    :cond_9
    invoke-virtual {p0, p2, p3}, Lkotlinx/coroutines/experimental/JobSupport;->afterCompletion(Ljava/lang/Object;I)V

    const/4 v1, 0x0

    .line 423
    return-void
.end method

.method public final getCompletionException()Ljava/lang/Throwable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 561
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 562
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 563
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Job has not completed yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 564
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 565
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Job has completed normally"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    .line 562
    :goto_0
    return-object v1
.end method

.method protected final getState()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 366
    :goto_0
    nop

    .line 367
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport;->_state:Ljava/lang/Object;

    .line 368
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-nez v1, :cond_0

    return-object v0

    .line 369
    :cond_0
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .end local v0    # "state":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected handleCompletionException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "closeException"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "closeException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    throw p1
.end method

.method public final initParentJob(Lkotlinx/coroutines/experimental/Job;)V
    .locals 2
    .param p1, "parent"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 343
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport;->parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 344
    :cond_1
    if-nez p1, :cond_2

    .line 345
    sget-object v0, Lkotlinx/coroutines/experimental/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;

    check-cast v0, Lkotlinx/coroutines/experimental/DisposableHandle;

    iput-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport;->parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 346
    return-void

    .line 349
    :cond_2
    new-instance v0, Lkotlinx/coroutines/experimental/ParentOnCompletion;

    invoke-direct {v0, p1, p0}, Lkotlinx/coroutines/experimental/ParentOnCompletion;-><init>(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/JobSupport;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/experimental/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v0

    .line 350
    .local v0, "newRegistration":Lkotlinx/coroutines/experimental/DisposableHandle;
    iput-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport;->parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 352
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/DisposableHandle;->dispose()V

    .line 353
    :cond_3
    return-void
.end method

.method public final invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 14
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

    .line 570
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/JobNode;

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 571
    .local v0, "nodeCache":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "$i$a$1$also":I
    .local v4, "$i$f$addLastIf":I
    .local v5, "$i$f$makeCondAddOp":I
    :goto_0
    nop

    .line 572
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v6

    .line 573
    .local v6, "state":Ljava/lang/Object;
    nop

    .line 574
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyActive$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 576
    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->makeNode(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/JobNode;

    move-result-object v7

    move-object v8, v7

    .line 576
    .local v8, "it":Lkotlinx/coroutines/experimental/JobNode;
    iput-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 577
    .end local v8    # "it":Lkotlinx/coroutines/experimental/JobNode;
    .local v7, "node":Lkotlinx/coroutines/experimental/JobNode;
    :goto_1
    sget-object v8, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    invoke-static {v8}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->access$getSTATE$p(Lkotlinx/coroutines/experimental/JobSupport$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    invoke-virtual {v8, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 577
    .end local v3    # "$i$a$1$also":I
    .end local v4    # "$i$f$addLastIf":I
    .end local v5    # "$i$f$makeCondAddOp":I
    move-object v1, v7

    check-cast v1, Lkotlinx/coroutines/experimental/DisposableHandle;

    return-object v1

    .line 579
    .end local v7    # "node":Lkotlinx/coroutines/experimental/JobNode;
    .restart local v3    # "$i$a$1$also":I
    .restart local v4    # "$i$f$addLastIf":I
    .restart local v5    # "$i$f$makeCondAddOp":I
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyNew$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 581
    sget-object v7, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    invoke-static {v7}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->access$getSTATE$p(Lkotlinx/coroutines/experimental/JobSupport$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    new-instance v8, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    invoke-direct {v8, v2}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;-><init>(Z)V

    invoke-virtual {v7, p0, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 583
    :cond_2
    instance-of v7, v6, Lkotlinx/coroutines/experimental/JobNode;

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 585
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/experimental/JobNode;

    new-instance v9, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    invoke-direct {v9, v8}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;-><init>(Z)V

    check-cast v9, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v7, v9}, Lkotlinx/coroutines/experimental/JobNode;->addOneIfEmpty(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z

    .line 587
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/experimental/JobNode;

    invoke-virtual {v7}, Lkotlinx/coroutines/experimental/JobNode;->getNext()Ljava/lang/Object;

    move-result-object v7

    .line 589
    .local v7, "list":Ljava/lang/Object;
    sget-object v8, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    invoke-static {v8}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->access$getSTATE$p(Lkotlinx/coroutines/experimental/JobSupport$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    invoke-virtual {v8, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 589
    .end local v7    # "list":Ljava/lang/Object;
    goto :goto_5

    .line 591
    :cond_3
    instance-of v7, v6, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    if-eqz v7, :cond_7

    .line 592
    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->makeNode(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/JobNode;

    move-result-object v7

    move-object v9, v7

    .line 592
    .local v3, "$i$a$2$also":I
    .local v9, "it":Lkotlinx/coroutines/experimental/JobNode;
    iput-object v9, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 593
    .end local v9    # "it":Lkotlinx/coroutines/experimental/JobNode;
    .local v3, "$i$a$1$also":I
    .local v7, "node":Lkotlinx/coroutines/experimental/JobNode;
    :goto_2
    move-object v9, v6

    check-cast v9, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    .line 857
    .local v9, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v10, v9

    .line 858
    .local v10, "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    new-instance v11, Lkotlinx/coroutines/experimental/JobSupport$invokeOnCompletion$$inlined$addLastIf$1;

    move-object v12, v7

    check-cast v12, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-object v13, v7

    check-cast v13, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {v11, v12, v13, p0, v6}, Lkotlinx/coroutines/experimental/JobSupport$invokeOnCompletion$$inlined$addLastIf$1;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/JobSupport;Ljava/lang/Object;)V

    check-cast v11, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;

    .line 860
    .end local v5    # "$i$f$makeCondAddOp":I
    .end local v10    # "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    nop

    .line 857
    nop

    .line 861
    .local v11, "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_3
    nop

    .line 862
    invoke-virtual {v9}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    .line 862
    .end local v3    # "$i$a$1$also":I
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 862
    .restart local v3    # "$i$a$1$also":I
    .restart local v5    # "$i$f$makeCondAddOp":I
    :cond_5
    check-cast v10, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 863
    .local v10, "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v12, v7

    check-cast v12, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v10, v12, v9, v11}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 861
    .end local v10    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    goto :goto_3

    .line 865
    .restart local v10    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :pswitch_0
    nop

    .line 861
    const/4 v8, 0x0

    goto :goto_4

    .line 864
    :pswitch_1
    nop

    .line 861
    .end local v9    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v10    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v11    # "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_4
    if-eqz v8, :cond_6

    .line 593
    .end local v3    # "$i$a$1$also":I
    .end local v4    # "$i$f$addLastIf":I
    .end local v5    # "$i$f$makeCondAddOp":I
    move-object v1, v7

    check-cast v1, Lkotlinx/coroutines/experimental/DisposableHandle;

    return-object v1

    .line 599
    .end local v6    # "state":Ljava/lang/Object;
    .end local v7    # "node":Lkotlinx/coroutines/experimental/JobNode;
    .restart local v3    # "$i$a$1$also":I
    .restart local v4    # "$i$f$addLastIf":I
    .restart local v5    # "$i$f$makeCondAddOp":I
    :cond_6
    :goto_5
    nop

    .line 571
    goto/16 :goto_0

    .line 596
    .end local v3    # "$i$a$1$also":I
    .end local v4    # "$i$f$addLastIf":I
    .end local v5    # "$i$f$makeCondAddOp":I
    .restart local v6    # "state":Ljava/lang/Object;
    :cond_7
    instance-of v2, v6, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-nez v2, :cond_8

    move-object v2, v1

    goto :goto_6

    :cond_8
    move-object v2, v6

    :goto_6
    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    nop

    :cond_9
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v1, Lkotlinx/coroutines/experimental/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;

    check-cast v1, Lkotlinx/coroutines/experimental/DisposableHandle;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isActive()Z
    .locals 2

    .line 426
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 427
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    invoke-interface {v1}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isCompleted()Z
    .locals 1

    .line 430
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSelected()Z
    .locals 2

    .line 434
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 435
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    invoke-interface {v1}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public final join(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
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

    .line 604
    :goto_0
    nop

    .line 605
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v0, :cond_2

    .line 606
    .local v0, "state":Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;->startInternal$kotlinx_coroutines_core(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 608
    .end local v0    # "state":Lkotlinx/coroutines/experimental/JobSupport$Incomplete;
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->joinSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 604
    :cond_1
    goto :goto_0

    .line 605
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public onParentCompletion$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 359
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;->cancel(Ljava/lang/Throwable;)Z

    .line 360
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 558
    return-void
.end method

.method public final performAtomicIfNotSelected(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;
    .locals 2
    .param p1, "desc"    # Lkotlinx/coroutines/experimental/internal/AtomicDesc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    new-instance v0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;-><init>(Lkotlinx/coroutines/experimental/JobSupport;Lkotlinx/coroutines/experimental/internal/AtomicDesc;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final performAtomicTrySelect(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;
    .locals 2
    .param p1, "desc"    # Lkotlinx/coroutines/experimental/internal/AtomicDesc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    new-instance v0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;-><init>(Lkotlinx/coroutines/experimental/JobSupport;Lkotlinx/coroutines/experimental/internal/AtomicDesc;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 278
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

    .line 617
    :goto_0
    nop

    .line 618
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 619
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 620
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v1, :cond_2

    .line 622
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;->startCoroutineUndispatched(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V

    .line 624
    :cond_1
    return-void

    .line 626
    :cond_2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;->startInternal$kotlinx_coroutines_core(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_3

    .line 628
    new-instance v1, Lkotlinx/coroutines/experimental/SelectJoinOnCompletion;

    invoke-direct {v1, p0, p1, p2}, Lkotlinx/coroutines/experimental/SelectJoinOnCompletion;-><init>(Lkotlinx/coroutines/experimental/JobSupport;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/experimental/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    .line 629
    return-void

    .line 617
    .end local v0    # "state":Ljava/lang/Object;
    :cond_3
    goto :goto_0
.end method

.method public final removeNode$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobNode;)V
    .locals 3
    .param p1, "node"    # Lkotlinx/coroutines/experimental/JobNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/JobNode<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    :goto_0
    nop

    .line 637
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 638
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 640
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v1, :cond_2

    .line 641
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport;

    if-eq v0, v1, :cond_0

    return-void

    .line 643
    :cond_0
    sget-object v1, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    invoke-static {v1}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->access$getSTATE$p(Lkotlinx/coroutines/experimental/JobSupport$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyActive$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 653
    .end local v0    # "state":Ljava/lang/Object;
    :cond_1
    nop

    .line 636
    goto :goto_0

    .line 646
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    if-eqz v1, :cond_3

    .line 648
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/JobNode;->remove()Z

    .line 649
    return-void

    .line 652
    :cond_3
    return-void
.end method

.method public final start()Z
    .locals 1

    .line 439
    :goto_0
    nop

    .line 440
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;->startInternal$kotlinx_coroutines_core(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 443
    nop

    .line 439
    goto :goto_0

    .line 442
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 441
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final startInternal$kotlinx_coroutines_core(Ljava/lang/Object;)I
    .locals 5
    .param p1, "state"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 449
    nop

    .line 450
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyNew$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v0, :cond_1

    .line 451
    sget-object v0, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->access$getSTATE$p(Lkotlinx/coroutines/experimental/JobSupport$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyActive$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 452
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->onStart()V

    .line 453
    return v1

    .line 455
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 456
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    .line 457
    :cond_2
    sget-object v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->ACTIVE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    sget-object v4, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->ACTIVE_STATE:Lkotlinx/coroutines/experimental/internal/Symbol;

    invoke-virtual {v0, p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 458
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->onStart()V

    .line 459
    return v1

    .line 461
    :cond_4
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->stateToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trySelect(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "idempotent"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 467
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->start()Z

    move-result v0

    return v0

    .line 468
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    move v0, v2

    .line 468
    .local v0, "$i$a$1$check":I
    const-string v0, "cannot use OpDescriptor as idempotent marker"

    .line 468
    .end local v0    # "$i$a$1$check":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 469
    :cond_2
    :goto_1
    nop

    .line 470
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 471
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 472
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyNew$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v3

    if-ne v0, v3, :cond_3

    .line 474
    sget-object v3, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    invoke-static {v3}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->access$getSTATE$p(Lkotlinx/coroutines/experimental/JobSupport$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    new-instance v4, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    invoke-direct {v4, v2}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;-><init>(Z)V

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 476
    :cond_3
    instance-of v3, v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    if-eqz v3, :cond_7

    .line 477
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->getActive()Ljava/lang/Object;

    move-result-object v3

    .line 478
    .local v3, "active":Ljava/lang/Object;
    if-ne v3, p1, :cond_4

    return v1

    .line 479
    :cond_4
    if-eqz v3, :cond_5

    return v2

    .line 480
    :cond_5
    sget-object v4, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->ACTIVE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 481
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport;->onStart()V

    .line 482
    return v1

    .line 489
    .end local v0    # "state":Ljava/lang/Object;
    .end local v3    # "active":Ljava/lang/Object;
    :cond_6
    :goto_2
    nop

    .line 469
    goto :goto_1

    .line 485
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_7
    instance-of v3, v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedIdempotentStart;

    if-eqz v3, :cond_9

    .line 486
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/JobSupport$CompletedIdempotentStart;

    iget-object v3, v3, Lkotlinx/coroutines/experimental/JobSupport$CompletedIdempotentStart;->idempotentStart:Ljava/lang/Object;

    if-ne v3, p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 488
    :cond_9
    return v2
.end method

.method protected final tryUpdateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "expect"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "update"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "expect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    instance-of v0, p1, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p2, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 387
    :cond_1
    sget-object v0, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->access$getSTATE$p(Lkotlinx/coroutines/experimental/JobSupport$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 389
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport;->parentHandle:Lkotlinx/coroutines/experimental/DisposableHandle;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/DisposableHandle;->dispose()V

    .line 390
    :cond_3
    return v2
.end method

.method protected final updateState(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "expect"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "update"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "mode"    # I

    const-string v0, "expect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/experimental/JobSupport;->tryUpdateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 378
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/experimental/JobSupport;->completeUpdateState(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 379
    const/4 v0, 0x1

    return v0
.end method
