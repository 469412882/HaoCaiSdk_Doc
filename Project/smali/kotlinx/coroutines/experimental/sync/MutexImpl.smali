.class public final Lkotlinx/coroutines/experimental/sync/MutexImpl;
.super Ljava/lang/Object;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/sync/Mutex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;,
        Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;,
        Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;,
        Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;,
        Lkotlinx/coroutines/experimental/sync/MutexImpl$LockWaiter;,
        Lkotlinx/coroutines/experimental/sync/MutexImpl$LockCont;,
        Lkotlinx/coroutines/experimental/sync/MutexImpl$LockSelect;,
        Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;,
        Lkotlinx/coroutines/experimental/sync/MutexImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/experimental/sync/MutexImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationKt\n+ 3 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode\n*L\n1#1,427:1\n124#2,4:428\n128#2,2:441\n171#3:432\n111#3,3:433\n172#3,5:436\n*E\n*S KotlinDebug\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/experimental/sync/MutexImpl\n*L\n201#1,4:428\n201#1,2:441\n201#1:432\n201#1,3:433\n201#1,5:436\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\t\u001c\u001d\u001e\u001f !\"#$B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001b\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u001b\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJL\u0010\u0010\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00132\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u001c\u0010\u0014\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0015H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u001b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0016R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u00038@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006%"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/sync/MutexImpl;",
        "Lkotlinx/coroutines/experimental/sync/Mutex;",
        "locked",
        "",
        "(Z)V",
        "_state",
        "",
        "isLocked",
        "()Z",
        "isLockedEmptyQueueState",
        "isLockedEmptyQueueState$kotlinx_coroutines_core",
        "lock",
        "",
        "owner",
        "(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "lockSuspend",
        "registerSelectLock",
        "R",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "toString",
        "",
        "tryLock",
        "unlock",
        "Companion",
        "Empty",
        "LockCont",
        "LockSelect",
        "LockWaiter",
        "LockedQueue",
        "TryEnqueueLockDesc",
        "TryLockDesc",
        "UnlockOp",
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
.field public static final Companion:Lkotlinx/coroutines/experimental/sync/MutexImpl$Companion;

.field public static final ENQUEUE_FAIL:Lkotlinx/coroutines/experimental/internal/Symbol;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EmptyLocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EmptyUnlocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOCK_FAIL:Lkotlinx/coroutines/experimental/internal/Symbol;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SELECT_SUCCESS:Lkotlinx/coroutines/experimental/internal/Symbol;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlinx/coroutines/experimental/sync/MutexImpl;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNLOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNLOCK_FAIL:Lkotlinx/coroutines/experimental/internal/Symbol;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/sync/MutexImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->Companion:Lkotlinx/coroutines/experimental/sync/MutexImpl$Companion;

    .line 129
    const-class v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const-string v1, "AtomicReferenceFieldUpda\u2026ny::class.java, \"_state\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 132
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "LOCK_FAIL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->LOCK_FAIL:Lkotlinx/coroutines/experimental/internal/Symbol;

    .line 135
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "ENQUEUE_FAIL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->ENQUEUE_FAIL:Lkotlinx/coroutines/experimental/internal/Symbol;

    .line 138
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "UNLOCK_FAIL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->UNLOCK_FAIL:Lkotlinx/coroutines/experimental/internal/Symbol;

    .line 141
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "SELECT_SUCCESS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->SELECT_SUCCESS:Lkotlinx/coroutines/experimental/internal/Symbol;

    .line 144
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->LOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;

    .line 147
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "UNLOCKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->UNLOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;

    .line 150
    new-instance v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    sget-object v1, Lkotlinx/coroutines/experimental/sync/MutexImpl;->LOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyLocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    .line 153
    new-instance v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    sget-object v1, Lkotlinx/coroutines/experimental/sync/MutexImpl;->UNLOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyUnlocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    if-eqz p1, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyLocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyUnlocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    :goto_0
    iput-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$get_state$p(Lkotlinx/coroutines/experimental/sync/MutexImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/sync/MutexImpl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 121
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$set_state$p(Lkotlinx/coroutines/experimental/sync/MutexImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/sync/MutexImpl;
    .param p1, "<set-?>"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 121
    iput-object p1, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 24
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    .line 201
    .local v8, "$i$f$suspendCancellableCoroutine":I
    const/4 v9, 0x1

    .line 428
    .local v9, "holdCancellability$iv":Z
    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v10

    .line 428
    .local v10, "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    const/4 v11, 0x0

    move v12, v11

    .line 429
    .local v12, "$i$a$1$suspendCoroutineOrReturn":I
    new-instance v0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    const/4 v13, 0x1

    invoke-direct {v0, v10, v13}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    move-object v14, v0

    .line 430
    .local v14, "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    if-nez v9, :cond_0

    invoke-virtual {v14}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initCancellability()V

    .line 431
    :cond_0
    move-object v15, v14

    check-cast v15, Lkotlinx/coroutines/experimental/CancellableContinuation;

    .line 431
    .local v15, "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    move/from16 v16, v11

    .line 202
    .local v16, "$i$a$1$suspendCancellableCoroutine":I
    new-instance v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockCont;

    invoke-direct {v0, v7, v15}, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockCont;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/experimental/CancellableContinuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 202
    .local v0, "waiter":Lkotlinx/coroutines/experimental/sync/MutexImpl$LockCont;
    .local v1, "$i$f$addLastIf":I
    .local v2, "$i$f$makeCondAddOp":I
    :goto_0
    move-object/from16 v17, v0

    .line 203
    .end local v0    # "waiter":Lkotlinx/coroutines/experimental/sync/MutexImpl$LockCont;
    .local v17, "waiter":Lkotlinx/coroutines/experimental/sync/MutexImpl$LockCont;
    nop

    .line 204
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/experimental/sync/MutexImpl;->access$get_state$p(Lkotlinx/coroutines/experimental/sync/MutexImpl;)Ljava/lang/Object;

    move-result-object v5

    .line 205
    .local v5, "state":Ljava/lang/Object;
    nop

    .line 206
    instance-of v0, v5, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    if-eqz v0, :cond_4

    .line 207
    move-object v0, v5

    check-cast v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    iget-object v0, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;->locked:Ljava/lang/Object;

    sget-object v3, Lkotlinx/coroutines/experimental/sync/MutexImpl;->UNLOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-eq v0, v3, :cond_1

    .line 208
    sget-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    move-object v4, v5

    check-cast v4, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    iget-object v4, v4, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;->locked:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 211
    :cond_1
    if-nez v7, :cond_2

    sget-object v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyLocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    goto :goto_1

    :cond_2
    new-instance v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    invoke-direct {v0, v7}, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;-><init>(Ljava/lang/Object;)V

    .line 212
    .local v0, "update":Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;
    :goto_1
    sget-object v3, Lkotlinx/coroutines/experimental/sync/MutexImpl;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v6, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    .end local v1    # "$i$f$addLastIf":I
    .end local v2    # "$i$f$makeCondAddOp":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v15, v1}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resume(Ljava/lang/Object;)V

    .line 214
    goto/16 :goto_6

    .line 216
    .end local v0    # "update":Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;
    .restart local v1    # "$i$f$addLastIf":I
    .restart local v2    # "$i$f$makeCondAddOp":I
    :cond_3
    :goto_2
    goto/16 :goto_7

    .line 218
    :cond_4
    instance-of v0, v5, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    if-eqz v0, :cond_9

    .line 219
    move-object v0, v5

    check-cast v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    iget-object v4, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    .line 220
    .local v4, "curOwner":Ljava/lang/Object;
    if-eq v4, v7, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_6

    .line 220
    .end local v1    # "$i$f$addLastIf":I
    .end local v2    # "$i$f$makeCondAddOp":I
    move v0, v11

    .line 220
    .local v0, "$i$a$1$check":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already locked by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .end local v0    # "$i$a$1$check":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 221
    .restart local v1    # "$i$f$addLastIf":I
    .restart local v2    # "$i$f$makeCondAddOp":I
    :cond_6
    move-object v3, v5

    check-cast v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    .line 221
    .local v3, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move/from16 v18, v1

    .line 432
    .end local v1    # "$i$f$addLastIf":I
    .local v18, "$i$f$addLastIf":I
    move-object/from16 v19, v3

    .line 432
    .local v19, "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move/from16 v20, v2

    .line 433
    .end local v2    # "$i$f$makeCondAddOp":I
    .local v20, "$i$f$makeCondAddOp":I
    new-instance v21, Lkotlinx/coroutines/experimental/sync/MutexImpl$lockSuspend$$inlined$suspendCancellableCoroutine$lambda$1;

    move-object/from16 v1, v17

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-object/from16 v2, v17

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-object/from16 v0, v21

    move-object v11, v3

    move-object v3, v5

    .line 433
    .end local v3    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .local v11, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object/from16 v22, v4

    move-object v4, v6

    .line 433
    .end local v4    # "curOwner":Ljava/lang/Object;
    .local v22, "curOwner":Ljava/lang/Object;
    move-object v13, v5

    move-object v5, v7

    .line 433
    .end local v5    # "state":Ljava/lang/Object;
    .local v13, "state":Ljava/lang/Object;
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/experimental/sync/MutexImpl$lockSuspend$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;Lkotlinx/coroutines/experimental/sync/MutexImpl;Ljava/lang/Object;)V

    check-cast v21, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;

    .line 435
    .end local v19    # "this_$iv$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v20    # "$i$f$makeCondAddOp":I
    nop

    .line 432
    nop

    .line 432
    .local v21, "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_4
    move-object/from16 v0, v21

    .line 436
    .end local v21    # "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    .local v0, "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    nop

    .line 437
    invoke-virtual {v11}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    .restart local v20    # "$i$f$makeCondAddOp":I
    :cond_7
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 438
    .local v1, "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object/from16 v2, v17

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v1, v2, v11, v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 436
    .end local v1    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    nop

    .line 432
    move-object/from16 v21, v0

    goto :goto_4

    .line 440
    .restart local v1    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :pswitch_0
    nop

    .line 436
    const/4 v0, 0x0

    goto :goto_5

    .line 439
    :pswitch_1
    nop

    .line 436
    const/4 v0, 0x1

    .line 436
    .end local v0    # "condAdd$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    .end local v1    # "prev$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v11    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_5
    if-eqz v0, :cond_8

    .line 223
    .end local v18    # "$i$f$addLastIf":I
    .end local v20    # "$i$f$makeCondAddOp":I
    invoke-interface {v15}, Lkotlinx/coroutines/experimental/CancellableContinuation;->initCancellability()V

    .line 224
    move-object/from16 v0, v17

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-static {v15, v0}, Lkotlinx/coroutines/experimental/CancellableContinuationKt;->removeOnCancel(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 225
    nop

    .line 441
    .end local v13    # "state":Ljava/lang/Object;
    .end local v15    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    .end local v16    # "$i$a$1$suspendCancellableCoroutine":I
    .end local v17    # "waiter":Lkotlinx/coroutines/experimental/sync/MutexImpl$LockCont;
    .end local v22    # "curOwner":Ljava/lang/Object;
    :goto_6
    invoke-virtual {v14}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 428
    .end local v8    # "$i$f$suspendCancellableCoroutine":I
    .end local v9    # "holdCancellability$iv":Z
    .end local v10    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .end local v12    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v14    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    nop

    .line 442
    nop

    .line 232
    return-object v0

    .line 203
    .restart local v8    # "$i$f$suspendCancellableCoroutine":I
    .restart local v9    # "holdCancellability$iv":Z
    .restart local v10    # "cont$iv":Lkotlin/coroutines/experimental/Continuation;
    .restart local v12    # "$i$a$1$suspendCoroutineOrReturn":I
    .restart local v13    # "state":Ljava/lang/Object;
    .restart local v14    # "cancellable$iv":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    .restart local v15    # "cont":Lkotlinx/coroutines/experimental/CancellableContinuation;
    .restart local v16    # "$i$a$1$suspendCancellableCoroutine":I
    .restart local v17    # "waiter":Lkotlinx/coroutines/experimental/sync/MutexImpl$LockCont;
    .restart local v18    # "$i$f$addLastIf":I
    .restart local v20    # "$i$f$makeCondAddOp":I
    :cond_8
    move/from16 v1, v18

    move/from16 v2, v20

    goto :goto_7

    .line 228
    .end local v13    # "state":Ljava/lang/Object;
    .end local v18    # "$i$f$addLastIf":I
    .end local v20    # "$i$f$makeCondAddOp":I
    .local v1, "$i$f$addLastIf":I
    .restart local v2    # "$i$f$makeCondAddOp":I
    .restart local v5    # "state":Ljava/lang/Object;
    :cond_9
    move-object v13, v5

    .line 228
    .end local v5    # "state":Ljava/lang/Object;
    .restart local v13    # "state":Ljava/lang/Object;
    instance-of v0, v13, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v0, :cond_a

    move-object v0, v13

    check-cast v0, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v0, v6}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v13    # "state":Ljava/lang/Object;
    :goto_7
    nop

    .line 202
    move-object/from16 v0, v17

    const/4 v11, 0x0

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 229
    .end local v1    # "$i$f$addLastIf":I
    .end local v2    # "$i$f$makeCondAddOp":I
    .restart local v13    # "state":Ljava/lang/Object;
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isLocked()Z
    .locals 4

    .line 158
    :goto_0
    nop

    .line 159
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 160
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 161
    instance-of v1, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;->locked:Ljava/lang/Object;

    sget-object v3, Lkotlinx/coroutines/experimental/sync/MutexImpl;->UNLOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 162
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_2

    return v2

    .line 163
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v0    # "state":Ljava/lang/Object;
    nop

    .line 158
    goto :goto_0

    .line 164
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final isLockedEmptyQueueState$kotlinx_coroutines_core()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 172
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public lock(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "owner"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/sync/MutexImpl;->tryLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 198
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/sync/MutexImpl;->lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public registerSelectLock(Lkotlinx/coroutines/experimental/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Ljava/lang/Object;",
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

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    :goto_0
    nop

    .line 236
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 238
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 239
    instance-of v1, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    if-eqz v1, :cond_5

    .line 240
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;->locked:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/experimental/sync/MutexImpl;->UNLOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-eq v1, v2, :cond_1

    .line 241
    sget-object v1, Lkotlinx/coroutines/experimental/sync/MutexImpl;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    iget-object v3, v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;->locked:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 244
    :cond_1
    new-instance v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;

    invoke-direct {v1, p0, p2}, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryLockDesc;-><init>(Lkotlinx/coroutines/experimental/sync/MutexImpl;Ljava/lang/Object;)V

    check-cast v1, Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v1

    .line 245
    .local v1, "failure":Ljava/lang/Object;
    nop

    .line 246
    if-nez v1, :cond_2

    .line 247
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;->startCoroutineUndispatched(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V

    .line 248
    return-void

    .line 250
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-void

    .line 251
    :cond_3
    sget-object v2, Lkotlinx/coroutines/experimental/sync/MutexImpl;->LOCK_FAIL:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-ne v1, v2, :cond_4

    .line 253
    .end local v1    # "failure":Ljava/lang/Object;
    :goto_1
    nop

    .line 254
    goto/16 :goto_3

    .line 252
    .restart local v1    # "failure":Ljava/lang/Object;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performAtomicTrySelect(TryLockDesc) returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 256
    .end local v1    # "failure":Ljava/lang/Object;
    :cond_5
    instance-of v1, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_b

    .line 257
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v1, p2, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_7

    move v1, v2

    .line 257
    .local v1, "$i$a$1$check":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already locked by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    .end local v1    # "$i$a$1$check":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 258
    :cond_7
    new-instance v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;-><init>(Lkotlinx/coroutines/experimental/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V

    .line 259
    .local v1, "enqueueOp":Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->performAtomicIfNotSelected(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v2

    .line 260
    .local v2, "failure":Ljava/lang/Object;
    nop

    .line 261
    if-nez v2, :cond_8

    .line 262
    iget-object v3, v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;->node:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    check-cast v3, Lkotlinx/coroutines/experimental/DisposableHandle;

    invoke-interface {p1, v3}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    .line 263
    return-void

    .line 265
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_9

    return-void

    .line 266
    :cond_9
    sget-object v3, Lkotlinx/coroutines/experimental/sync/MutexImpl;->ENQUEUE_FAIL:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-ne v2, v3, :cond_a

    .line 268
    .end local v1    # "enqueueOp":Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;
    .end local v2    # "failure":Ljava/lang/Object;
    goto :goto_3

    .line 267
    .restart local v1    # "enqueueOp":Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;
    .restart local v2    # "failure":Ljava/lang/Object;
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performAtomicIfNotSelected(TryEnqueueLockDesc) returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 270
    .end local v1    # "enqueueOp":Lkotlinx/coroutines/experimental/sync/MutexImpl$TryEnqueueLockDesc;
    .end local v2    # "failure":Ljava/lang/Object;
    :cond_b
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v0    # "state":Ljava/lang/Object;
    :goto_3
    nop

    .line 235
    goto/16 :goto_0

    .line 271
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 350
    :goto_0
    nop

    .line 351
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 352
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 353
    instance-of v1, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mutex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    iget-object v2, v2, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;->locked:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 354
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .end local v0    # "state":Ljava/lang/Object;
    nop

    .line 350
    goto :goto_0

    .line 355
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mutex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    iget-object v2, v2, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 356
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public tryLock(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "owner"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 176
    :goto_0
    nop

    .line 177
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 178
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 179
    instance-of v1, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 180
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;->locked:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/experimental/sync/MutexImpl;->UNLOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-eq v1, v4, :cond_0

    return v3

    .line 181
    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyLocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    goto :goto_1

    :cond_1
    new-instance v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;-><init>(Ljava/lang/Object;)V

    .line 182
    .local v1, "update":Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;
    :goto_1
    sget-object v3, Lkotlinx/coroutines/experimental/sync/MutexImpl;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v2

    .line 184
    .end local v1    # "update":Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_5

    .line 185
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-eq v1, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_4

    move v1, v3

    .line 185
    .local v1, "$i$a$1$check":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already locked by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .end local v1    # "$i$a$1$check":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 186
    :cond_4
    return v3

    .line 188
    :cond_5
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v0    # "state":Ljava/lang/Object;
    :cond_6
    nop

    .line 176
    goto :goto_0

    .line 189
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 5
    .param p1, "owner"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 317
    :goto_0
    nop

    .line 318
    iget-object v0, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 319
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 320
    instance-of v1, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 321
    if-nez p1, :cond_1

    .line 322
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;->locked:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/experimental/sync/MutexImpl;->UNLOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-eq v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    move v1, v3

    .line 322
    .local v1, "$i$a$1$check":I
    const-string v1, "Mutex is not locked"

    .line 322
    .end local v1    # "$i$a$1$check":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 324
    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;->locked:Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    move v1, v3

    .line 324
    .local v1, "$i$a$2$check":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mutex is locked by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    iget-object v3, v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;->locked:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .end local v1    # "$i$a$2$check":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 325
    :cond_3
    sget-object v1, Lkotlinx/coroutines/experimental/sync/MutexImpl;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lkotlinx/coroutines/experimental/sync/MutexImpl;->EmptyUnlocked:Lkotlinx/coroutines/experimental/sync/MutexImpl$Empty;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 327
    :cond_4
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 328
    :cond_5
    instance-of v1, v0, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_c

    .line 329
    if-eqz p1, :cond_7

    .line 330
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-ne v1, p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_7

    move v1, v3

    .line 330
    .local v1, "$i$a$3$check":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mutex is locked by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    iget-object v3, v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .end local v1    # "$i$a$3$check":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 331
    :cond_7
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;->removeFirstOrNull()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v1

    .line 332
    .local v1, "waiter":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    if-nez v1, :cond_8

    .line 333
    new-instance v2, Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    invoke-direct {v2, v3}, Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;-><init>(Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;)V

    .line 334
    .local v2, "op":Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;
    sget-object v3, Lkotlinx/coroutines/experimental/sync/MutexImpl;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    return-void

    .line 336
    .end local v2    # "op":Lkotlinx/coroutines/experimental/sync/MutexImpl$UnlockOp;
    :cond_8
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockWaiter;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockWaiter;->tryResumeLockWaiter()Ljava/lang/Object;

    move-result-object v2

    .line 337
    .local v2, "token":Ljava/lang/Object;
    if-eqz v2, :cond_a

    .line 338
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockWaiter;

    iget-object v4, v4, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockWaiter;->owner:Ljava/lang/Object;

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    sget-object v4, Lkotlinx/coroutines/experimental/sync/MutexImpl;->LOCKED:Lkotlinx/coroutines/experimental/internal/Symbol;

    :goto_4
    iput-object v4, v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    .line 339
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockWaiter;

    invoke-virtual {v3, v2}, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockWaiter;->completeResumeLockWaiter(Ljava/lang/Object;)V

    .line 340
    return-void

    .line 342
    .end local v1    # "waiter":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v2    # "token":Ljava/lang/Object;
    :cond_a
    nop

    .line 345
    .end local v0    # "state":Ljava/lang/Object;
    :cond_b
    :goto_5
    nop

    .line 317
    goto/16 :goto_0

    .line 344
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
