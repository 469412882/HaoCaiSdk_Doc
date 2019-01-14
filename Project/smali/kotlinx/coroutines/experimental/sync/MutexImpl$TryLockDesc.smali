.class final Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;
.super Lkotlinx/coroutines/experimental/internal/AtomicDesc;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TryLockDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc$PrepareOp;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nH\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;",
        "Lkotlinx/coroutines/experimental/internal/AtomicDesc;",
        "mutex",
        "Lkotlinx/coroutines/experimental/sync/MutexImpl;",
        "owner",
        "",
        "(Lkotlinx/coroutines/experimental/sync/MutexImpl;Ljava/lang/Object;)V",
        "complete",
        "",
        "op",
        "Lkotlinx/coroutines/experimental/internal/AtomicOp;",
        "failure",
        "prepare",
        "PrepareOp",
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

.field public final owner:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/sync/MutexImpl;Ljava/lang/Object;)V
    .locals 1
    .param p1, "mutex"    # Lkotlinx/coroutines/experimental/sync/MutexImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "owner"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "mutex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    nop

    .line 279
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/AtomicDesc;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;->mutex:Lkotlinx/coroutines/experimental/sync/MutexImpl;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;->owner:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public complete(Lkotlinx/coroutines/experimental/internal/AtomicOp;Ljava/lang/Object;)V
    .locals 3
    .param p1, "op"    # Lkotlinx/coroutines/experimental/internal/AtomicOp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "failure"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    if-eqz p2, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyUnlocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;->owner:Ljava/lang/Object;

    if-nez v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyLocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;->owner:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;-><init>(Ljava/lang/Object;)V

    .line 296
    :goto_0
    nop

    .line 299
    .local v0, "update":Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;
    sget-object v1, Lkotlinx/coroutines/experimental/sync/MutexImpl;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;->mutex:Lkotlinx/coroutines/experimental/sync/MutexImpl;

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public prepare(Lkotlinx/coroutines/experimental/internal/AtomicOp;)Ljava/lang/Object;
    .locals 4
    .param p1, "op"    # Lkotlinx/coroutines/experimental/internal/AtomicOp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    new-instance v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc$PrepareOp;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc$PrepareOp;-><init>(Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;Lkotlinx/coroutines/experimental/internal/AtomicOp;)V

    .line 291
    .local v0, "prepare":Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc$PrepareOp;
    sget-object v1, Lkotlinx/coroutines/experimental/sync/MutexImpl;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;->mutex:Lkotlinx/coroutines/experimental/sync/MutexImpl;

    sget-object v3, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyUnlocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lkotlinx/coroutines/experimental/sync/MutexImpl;->LOCK_FAIL:Lkotlinx/coroutines/experimental/internal/Symbol;

    return-object v1

    .line 292
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;->mutex:Lkotlinx/coroutines/experimental/sync/MutexImpl;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc$PrepareOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
