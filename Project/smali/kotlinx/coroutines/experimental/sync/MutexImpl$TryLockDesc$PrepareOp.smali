.class final Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc$PrepareOp;
.super Lkotlinx/coroutines/experimental/internal/OpDescriptor;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrepareOp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc$PrepareOp;",
        "Lkotlinx/coroutines/experimental/internal/OpDescriptor;",
        "op",
        "Lkotlinx/coroutines/experimental/internal/AtomicOp;",
        "(Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;Lkotlinx/coroutines/experimental/internal/AtomicOp;)V",
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
.field private final op:Lkotlinx/coroutines/experimental/internal/AtomicOp;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;Lkotlinx/coroutines/experimental/internal/AtomicOp;)V
    .locals 1
    .param p1, "$outer"    # Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "op"    # Lkotlinx/coroutines/experimental/internal/AtomicOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/internal/AtomicOp;",
            ")V"
        }
    .end annotation

    const-string v0, "op"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iput-object p1, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc$PrepareOp;->this$0:Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;

    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc$PrepareOp;->op:Lkotlinx/coroutines/experimental/internal/AtomicOp;

    return-void
.end method


# virtual methods
.method public perform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "affected"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 283
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc$PrepareOp;->op:Lkotlinx/coroutines/experimental/internal/AtomicOp;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/AtomicOp;->isDecided()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyUnlocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc$PrepareOp;->op:Lkotlinx/coroutines/experimental/internal/AtomicOp;

    .line 284
    .local v0, "update":Ljava/lang/Object;
    :goto_0
    sget-object v1, Lkotlinx/coroutines/experimental/sync/MutexImpl;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-nez p1, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.sync.MutexImpl"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/experimental/sync/MutexImpl;

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    const/4 v1, 0x0

    return-object v1
.end method
