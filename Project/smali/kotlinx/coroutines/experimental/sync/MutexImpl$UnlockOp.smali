.class final Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;
.super Lkotlinx/coroutines/experimental/internal/OpDescriptor;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnlockOp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;",
        "Lkotlinx/coroutines/experimental/internal/OpDescriptor;",
        "queue",
        "Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;",
        "(Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;)V",
        "perform",
        "",
        "affected",
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
.field public final queue:Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;)V
    .locals 1
    .param p1, "queue"    # Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    nop

    .line 406
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;->queue:Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    return-void
.end method


# virtual methods
.method public perform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "affected"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 414
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;->queue:Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;->isEmpty()Z

    move-result v0

    .line 415
    .local v0, "success":Z
    if-eqz v0, :cond_0

    sget-object v1, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyUnlocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;->queue:Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    .line 416
    .local v1, "update":Ljava/lang/Object;
    :goto_0
    sget-object v2, Lkotlinx/coroutines/experimental/sync/MutexImpl;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-nez p1, :cond_1

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.sync.MutexImpl"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/experimental/sync/MutexImpl;

    invoke-virtual {v2, v3, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 423
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/experimental/sync/MutexImpl;

    invoke-static {v2}, Lkotlinx/coroutines/experimental/sync/MutexImpl;->access$get_state$p(Lkotlinx/coroutines/experimental/sync/MutexImpl;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;->queue:Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    if-ne v2, v3, :cond_2

    sget-object v2, Lkotlinx/coroutines/experimental/sync/MutexImpl;->UNLOCK_FAIL:Lkotlinx/coroutines/experimental/internal/Symbol;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method
