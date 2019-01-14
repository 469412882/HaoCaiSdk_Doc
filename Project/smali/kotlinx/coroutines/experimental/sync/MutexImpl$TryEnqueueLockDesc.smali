.class final Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TryEnqueueLockDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc<",
        "Lkotlinx/coroutines/experimental/sync/MutexImpl$LockSelect<",
        "TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00030\u0002j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0003`\u0004BN\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c\u0012\u001c\u0010\r\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u000e\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0014R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;",
        "R",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;",
        "Lkotlinx/coroutines/experimental/sync/MutexImpl$LockSelect;",
        "Lkotlinx/coroutines/experimental/internal/AddLastDesc;",
        "mutex",
        "Lkotlinx/coroutines/experimental/sync/MutexImpl;",
        "owner",
        "",
        "queue",
        "Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlinx/coroutines/experimental/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V",
        "onPrepare",
        "affected",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "next",
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
.field public final mutex:Lkotlinx/coroutines/experimental/sync/MutexImpl;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "mutex"    # Lkotlinx/coroutines/experimental/sync/MutexImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "owner"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "queue"    # Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/sync/MutexImpl;",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;",
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

    const-string v0, "mutex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "select"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    new-instance v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockSelect;

    invoke-direct {v1, p2, p4, p5}, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockSelect;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 309
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;->mutex:Lkotlinx/coroutines/experimental/sync/MutexImpl;

    return-void
.end method


# virtual methods
.method protected onPrepare(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 2
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;->mutex:Lkotlinx/coroutines/experimental/sync/MutexImpl;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/sync/MutexImpl;->access$get_state$p(Lkotlinx/coroutines/experimental/sync/MutexImpl;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;->queue:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->ENQUEUE_FAIL:Lkotlinx/coroutines/experimental/internal/Symbol;

    return-object v0

    .line 312
    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;->onPrepare(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
