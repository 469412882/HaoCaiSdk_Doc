.class public final Lkotlinx/coroutines/experimental/EventLoopImpl;
.super Lkotlinx/coroutines/experimental/CoroutineDispatcher;
.source "EventLoop.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/EventLoop;
.implements Lkotlinx/coroutines/experimental/Delay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;,
        Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedRunnableTask;,
        Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;,
        Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;,
        Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedRunnableTask;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.kt\nkotlinx/coroutines/experimental/EventLoopImpl\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode\n*L\n1#1,202:1\n171#2:203\n111#2,3:204\n172#2,5:207\n*E\n*S KotlinDebug\n*F\n+ 1 EventLoop.kt\nkotlinx/coroutines/experimental/EventLoopImpl\n*L\n136#1:203\n136#1,3:204\n136#1,5:207\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0005*+,-.B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u000e\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\rJ \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u001e\u001a\u00020\u001bH\u0016J\u0014\u0010\u001f\u001a\u00020 2\n\u0010!\u001a\u00060\tR\u00020\u0000H\u0002J\u0010\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020$H\u0002J&\u0010%\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00110\'H\u0016J\u0006\u0010(\u001a\u00020\u0011J\u0008\u0010)\u001a\u00020\u0011H\u0002R\"\u0010\u0007\u001a\u0016\u0012\u0008\u0012\u00060\tR\u00020\u0000\u0012\u0008\u0012\u00060\tR\u00020\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/EventLoopImpl;",
        "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
        "Lkotlinx/coroutines/experimental/EventLoop;",
        "Lkotlinx/coroutines/experimental/Delay;",
        "thread",
        "Ljava/lang/Thread;",
        "(Ljava/lang/Thread;)V",
        "delayed",
        "Ljava/util/concurrent/ConcurrentSkipListMap;",
        "Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;",
        "nextSequence",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "parentJob",
        "Lkotlinx/coroutines/experimental/Job;",
        "queue",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;",
        "dispatch",
        "",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "block",
        "Ljava/lang/Runnable;",
        "initParentJob",
        "coroutine",
        "invokeOnTimeout",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "time",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "processNextEvent",
        "scheduleDelayed",
        "",
        "delayedTask",
        "scheduleQueued",
        "queuedTask",
        "Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;",
        "scheduleResumeAfterDelay",
        "continuation",
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "shutdown",
        "unpark",
        "DelayedResumeTask",
        "DelayedRunnableTask",
        "DelayedTask",
        "QueuedRunnableTask",
        "QueuedTask",
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
.field private final delayed:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;",
            "Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;",
            ">;"
        }
    .end annotation
.end field

.field private final nextSequence:Ljava/util/concurrent/atomic/AtomicLong;

.field private parentJob:Lkotlinx/coroutines/experimental/Job;

.field private final queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

.field private final thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    nop

    .line 68
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->thread:Ljava/lang/Thread;

    .line 69
    new-instance v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->delayed:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->nextSequence:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static final synthetic access$getDelayed$p(Lkotlinx/coroutines/experimental/EventLoopImpl;)Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/EventLoopImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->delayed:Ljava/util/concurrent/ConcurrentSkipListMap;

    return-object v0
.end method

.method public static final synthetic access$getNextSequence$p(Lkotlinx/coroutines/experimental/EventLoopImpl;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/EventLoopImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->nextSequence:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public static final synthetic access$getParentJob$p(Lkotlinx/coroutines/experimental/EventLoopImpl;)Lkotlinx/coroutines/experimental/Job;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/EventLoopImpl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 66
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->parentJob:Lkotlinx/coroutines/experimental/Job;

    return-object v0
.end method

.method public static final synthetic access$setParentJob$p(Lkotlinx/coroutines/experimental/EventLoopImpl;Lkotlinx/coroutines/experimental/Job;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/EventLoopImpl;
    .param p1, "<set-?>"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 66
    iput-object p1, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->parentJob:Lkotlinx/coroutines/experimental/Job;

    return-void
.end method

.method private final scheduleDelayed(Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;)Z
    .locals 3
    .param p1, "delayedTask"    # Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;

    .line 140
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->delayed:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->parentJob:Lkotlinx/coroutines/experimental/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/Job;->isActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    return v2

    .line 142
    :cond_1
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->dispose()V

    .line 143
    return v1
.end method

.method private final scheduleQueued(Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;)Z
    .locals 9
    .param p1, "queuedTask"    # Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;

    .line 132
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->parentJob:Lkotlinx/coroutines/experimental/Job;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->addLast(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 134
    return v1

    .line 136
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    .line 136
    .local v0, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    const/4 v2, 0x0

    move v3, v2

    .line 203
    .local v3, "$i$f$addLastIf":I
    move-object v4, v0

    .line 203
    .local v4, "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move v5, v2

    .line 204
    .local v5, "$i$f$makeCondAddOp":I
    new-instance v6, Lkotlinx/coroutines/experimental/EventLoopImpl$scheduleQueued$$inlined$addLastIf$1;

    move-object v7, p1

    check-cast v7, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-object v8, p1

    check-cast v8, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {v6, v7, v8, p0}, Lkotlinx/coroutines/experimental/EventLoopImpl$scheduleQueued$$inlined$addLastIf$1;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/EventLoopImpl;)V

    check-cast v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;

    .line 206
    .end local v4    # "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v5    # "$i$f$makeCondAddOp":I
    nop

    .line 203
    nop

    .line 207
    .local v6, "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_0
    nop

    .line 208
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v4, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 209
    .local v4, "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v4, v5, v0, v6}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 207
    .end local v4    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    goto :goto_0

    .line 211
    .restart local v4    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :pswitch_0
    nop

    .line 207
    const/4 v1, 0x0

    goto :goto_1

    .line 210
    :pswitch_1
    nop

    .line 207
    .end local v0    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v3    # "$i$f$addLastIf":I
    .end local v4    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v6    # "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final unpark()V
    .locals 2

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->thread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->thread:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public delay(JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/experimental/Delay$DefaultImpls;->delay(Lkotlinx/coroutines/experimental/Delay;JLjava/util/concurrent/TimeUnit;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

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

    .line 80
    new-instance v0, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedRunnableTask;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedRunnableTask;-><init>(Ljava/lang/Runnable;)V

    check-cast v0, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/EventLoopImpl;->scheduleQueued(Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoopImpl;->unpark()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 84
    :goto_0
    nop

    .line 85
    return-void
.end method

.method public final initParentJob(Lkotlinx/coroutines/experimental/Job;)V
    .locals 2
    .param p1, "coroutine"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "coroutine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->parentJob:Lkotlinx/coroutines/experimental/Job;

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

    .line 76
    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->parentJob:Lkotlinx/coroutines/experimental/Job;

    .line 77
    return-void
.end method

.method public invokeOnTimeout(JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 8
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "block"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 97
    .local v0, "$i$a$1$also":I
    const-string v1, "unit"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v1, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedRunnableTask;

    move-object v2, v1

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedRunnableTask;-><init>(Lkotlinx/coroutines/experimental/EventLoopImpl;JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)V

    .line 97
    .local v2, "it":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedRunnableTask;
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;

    invoke-direct {p0, v3}, Lkotlinx/coroutines/experimental/EventLoopImpl;->scheduleDelayed(Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;)Z

    .line 97
    .end local v0    # "$i$a$1$also":I
    .end local v2    # "it":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedRunnableTask;
    check-cast v1, Lkotlinx/coroutines/experimental/DisposableHandle;

    return-object v1
.end method

.method public processNextEvent()J
    .locals 11

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->thread:Ljava/lang/Thread;

    const-wide v2, 0x7fffffffffffffffL

    if-eq v0, v1, :cond_0

    return-wide v2

    .line 102
    :cond_0
    :goto_0
    nop

    .line 103
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->delayed:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;

    if-eqz v0, :cond_3

    .line 104
    .local v0, "delayedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 105
    .local v4, "now":J
    iget-wide v6, v0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->nanoTime:J

    sub-long v8, v6, v4

    int-to-long v6, v1

    cmp-long v10, v8, v6

    if-lez v10, :cond_1

    .line 105
    .end local v0    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
    .end local v4    # "now":J
    goto :goto_1

    .line 106
    .restart local v0    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
    .restart local v4    # "now":J
    :cond_1
    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;

    invoke-direct {p0, v6}, Lkotlinx/coroutines/experimental/EventLoopImpl;->scheduleQueued(Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 106
    .end local v0    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
    .end local v4    # "now":J
    goto :goto_1

    .line 107
    .restart local v0    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
    .restart local v4    # "now":J
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->delayed:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v0    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
    .end local v4    # "now":J
    goto :goto_0

    .line 110
    :cond_3
    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->removeFirstOrNull()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v0

    instance-of v4, v0, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;

    if-nez v4, :cond_4

    const/4 v0, 0x0

    :cond_4
    check-cast v0, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;

    if-eqz v0, :cond_5

    .line 111
    .local v0, "queuedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;
    .local v1, "$i$a$1$let":I
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;->invoke()Ljava/lang/Object;

    .line 112
    .end local v0    # "queuedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;
    .end local v1    # "$i$a$1$let":I
    nop

    .line 110
    nop

    .line 113
    :cond_5
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-wide/16 v0, 0x0

    return-wide v0

    .line 114
    :cond_6
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->delayed:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;

    if-eqz v0, :cond_7

    .line 115
    .local v0, "nextDelayedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
    iget-wide v1, v0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->nanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v5, v1, v3

    return-wide v5

    .line 114
    .end local v0    # "nextDelayedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
    :cond_7
    return-wide v2
.end method

.method public scheduleResumeAfterDelay(JLjava/util/concurrent/TimeUnit;Lkotlinx/coroutines/experimental/CancellableContinuation;)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "continuation"    # Lkotlinx/coroutines/experimental/CancellableContinuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedResumeTask;-><init>(Lkotlinx/coroutines/experimental/EventLoopImpl;JLjava/util/concurrent/TimeUnit;Lkotlinx/coroutines/experimental/CancellableContinuation;)V

    check-cast v0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/EventLoopImpl;->scheduleDelayed(Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoopImpl;->unpark()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/experimental/ScheduledKt;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/experimental/ResumeRunnable;

    move-object v2, p4

    check-cast v2, Lkotlin/coroutines/experimental/Continuation;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/experimental/ResumeRunnable;-><init>(Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 93
    :goto_0
    nop

    .line 94
    return-void
.end method

.method public final shutdown()V
    .locals 2

    .line 120
    :goto_0
    nop

    .line 121
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->removeFirstOrNull()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.experimental.EventLoopImpl.QueuedTask"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;

    .line 122
    .local v0, "queuedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;->invoke()Ljava/lang/Object;

    .line 120
    .end local v0    # "queuedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$QueuedTask;
    goto :goto_0

    .line 125
    :cond_1
    :goto_1
    nop

    .line 126
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopImpl;->delayed:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;

    if-eqz v0, :cond_2

    .line 127
    .local v0, "delayedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;->cancel()V

    .line 125
    .end local v0    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopImpl$DelayedTask;
    goto :goto_1

    .line 129
    :cond_2
    return-void
.end method
