.class public Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;,
        Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;,
        Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;,
        Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;,
        Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode\n*L\n1#1,618:1\n111#1,3:619\n111#1,3:622\n*E\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode\n*L\n171#1,3:619\n194#1,3:622\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0017\u0018\u0000 <2\u00020\u0001:\u0005:;<=>B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000f\u001a\u00020\u00102\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0012J%\u0010\u0013\u001a\u00020\u00082\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00122\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0015H\u0086\u0008J-\u0010\u0016\u001a\u00020\u00082\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00122\u0016\u0010\u0017\u001a\u0012\u0012\u0008\u0012\u00060\u0000j\u0002`\u0012\u0012\u0004\u0012\u00020\u00080\u0018H\u0086\u0008J=\u0010\u0019\u001a\u00020\u00082\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00122\u0016\u0010\u0017\u001a\u0012\u0012\u0008\u0012\u00060\u0000j\u0002`\u0012\u0012\u0004\u0012\u00020\u00080\u00182\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0015H\u0086\u0008J \u0010\u001a\u001a\u00020\u00082\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00122\n\u0010\n\u001a\u00060\u0000j\u0002`\u0012H\u0001J\u0012\u0010\u001b\u001a\u00020\u00082\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0012J\'\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\u001e0\u001d\"\u000c\u0008\u0000\u0010\u001e*\u00060\u0000j\u0002`\u00122\u0006\u0010\u0011\u001a\u0002H\u001e\u00a2\u0006\u0002\u0010\u001fJ\n\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010\"\u001a\u000c\u0012\u0008\u0012\u00060\u0000j\u0002`\u00120#J\u0014\u0010$\u001a\u00020\u00102\n\u0010\n\u001a\u00060\u0000j\u0002`\u0012H\u0002J\u0014\u0010%\u001a\u00020\u00102\n\u0010\n\u001a\u00060\u0000j\u0002`\u0012H\u0002J\u0008\u0010&\u001a\u00020\u0010H\u0001J\u001e\u0010\'\u001a\u00020\u00102\n\u0010\u0004\u001a\u00060\u0000j\u0002`\u00122\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0002J%\u0010*\u001a\u00020+2\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00122\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0015H\u0081\u0008J\u000c\u0010,\u001a\u00060\u0000j\u0002`\u0012H\u0002J\u0008\u0010-\u001a\u00020\u0008H\u0016J\u0018\u0010.\u001a\u0004\u0018\u0001H\u001e\"\u0006\u0008\u0000\u0010\u001e\u0018\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010\u000cJ,\u0010/\u001a\u0004\u0018\u0001H\u001e\"\u0006\u0008\u0000\u0010\u001e\u0018\u00012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u00020\u00080\u0018H\u0086\u0008\u00a2\u0006\u0002\u00100J\u000e\u00101\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0012J\u0008\u00102\u001a\u00020\u0006H\u0002J\u0008\u00103\u001a\u000204H\u0016J(\u00105\u001a\u0002062\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00122\n\u0010\n\u001a\u00060\u0000j\u0002`\u00122\u0006\u00107\u001a\u00020+H\u0001J%\u00108\u001a\u00020\u00102\n\u0010\r\u001a\u00060\u0000j\u0002`\u00122\n\u0010\n\u001a\u00060\u0000j\u0002`\u0012H\u0000\u00a2\u0006\u0002\u00089R\u0012\u0010\u0003\u001a\u00020\u00018\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00020\u00018\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u0011\u0010\n\u001a\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006?"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "",
        "()V",
        "_next",
        "_prev",
        "_removedRef",
        "Lkotlinx/coroutines/experimental/internal/Removed;",
        "isRemoved",
        "",
        "()Z",
        "next",
        "getNext",
        "()Ljava/lang/Object;",
        "prev",
        "getPrev",
        "addLast",
        "",
        "node",
        "Lkotlinx/coroutines/experimental/internal/Node;",
        "addLastIf",
        "condition",
        "Lkotlin/Function0;",
        "addLastIfPrev",
        "predicate",
        "Lkotlin/Function1;",
        "addLastIfPrevAndIf",
        "addNext",
        "addOneIfEmpty",
        "describeAddLast",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;",
        "T",
        "(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;",
        "describeRemove",
        "Lkotlinx/coroutines/experimental/internal/AtomicDesc;",
        "describeRemoveFirst",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;",
        "finishAdd",
        "finishRemove",
        "helpDelete",
        "helpInsert",
        "op",
        "Lkotlinx/coroutines/experimental/internal/OpDescriptor;",
        "makeCondAddOp",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;",
        "markPrev",
        "remove",
        "removeFirstIfIsInstanceOf",
        "removeFirstIfIsInstanceOfOrPeekIf",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "removeFirstOrNull",
        "removed",
        "toString",
        "",
        "tryCondAddNext",
        "",
        "condAdd",
        "validateNode",
        "validateNode$kotlinx_coroutines_core",
        "AbstractAtomicDesc",
        "AddLastDesc",
        "Companion",
        "CondAddOp",
        "RemoveFirstDesc",
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
.field public static final Companion:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$Companion;

.field public static final NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREV:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REMOVED_REF:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            "Lkotlinx/coroutines/experimental/internal/Removed;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _next:Ljava/lang/Object;

.field private volatile _prev:Ljava/lang/Object;

.field private volatile _removedRef:Lkotlinx/coroutines/experimental/internal/Removed;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->Companion:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$Companion;

    .line 80
    const-class v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const-string v1, "AtomicReferenceFieldUpda\u2026Any::class.java, \"_next\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 83
    const-class v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_prev"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const-string v1, "AtomicReferenceFieldUpda\u2026Any::class.java, \"_prev\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->PREV:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 86
    const-class v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const-class v1, Lkotlinx/coroutines/experimental/internal/Removed;

    const-string v2, "_removedRef"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const-string v1, "AtomicReferenceFieldUpda\u2026lass.java, \"_removedRef\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->REMOVED_REF:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 73
    iput-object p0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p1, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    return-void
.end method

.method public static final synthetic access$finishRemove(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p1, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->finishRemove(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    return-void
.end method

.method public static final synthetic access$get_next$p(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$get_prev$p(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$helpInsert(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/OpDescriptor;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p1, "_prev"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "op"    # Lkotlinx/coroutines/experimental/internal/OpDescriptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpInsert(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/OpDescriptor;)V

    return-void
.end method

.method public static final synthetic access$removed(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/internal/Removed;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->removed()Lkotlinx/coroutines/experimental/internal/Removed;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$set_next$p(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p1, "<set-?>"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 69
    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$set_prev$p(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p1, "<set-?>"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 69
    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    return-void
.end method

.method private final finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 3
    .param p1, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 465
    :goto_0
    nop

    .line 466
    iget-object v0, p1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 467
    .local v0, "nextPrev":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/Removed;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 468
    :cond_0
    sget-object v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->PREV:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 469
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v1, :cond_2

    .line 471
    if-nez v0, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpInsert(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/OpDescriptor;)V

    .line 473
    :cond_2
    return-void

    .line 465
    .end local v0    # "nextPrev":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 467
    .restart local v0    # "nextPrev":Ljava/lang/Object;
    :cond_4
    :goto_1
    return-void
.end method

.method private final finishRemove(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 2
    .param p1, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 479
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpDelete()V

    .line 480
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpInsert(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/OpDescriptor;)V

    .line 481
    return-void
.end method

.method private final helpInsert(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/OpDescriptor;)V
    .locals 6
    .param p1, "_prev"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .param p2, "op"    # Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    .line 532
    move-object v0, p1

    .line 533
    .local v0, "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 534
    .local v2, "last":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_0
    nop

    .line 536
    iget-object v3, v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 537
    .local v3, "prevNext":Ljava/lang/Object;
    if-ne v3, p2, :cond_0

    return-void

    .line 538
    :cond_0
    instance-of v4, v3, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v4, :cond_1

    .line 539
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v4, v0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    goto :goto_0

    .line 542
    :cond_1
    instance-of v4, v3, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v4, :cond_3

    .line 543
    if-eqz v2, :cond_2

    .line 544
    invoke-direct {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->markPrev()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 545
    sget-object v4, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/experimental/internal/Removed;

    iget-object v5, v5, Lkotlinx/coroutines/experimental/internal/Removed;->ref:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v4, v2, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 546
    move-object v0, v2

    .line 547
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    goto :goto_1

    .line 549
    :cond_2
    iget-object v4, v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    invoke-static {v4}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v0

    .line 550
    :goto_1
    nop

    .line 551
    goto :goto_0

    .line 553
    :cond_3
    iget-object v4, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 554
    .local v4, "oldPrev":Ljava/lang/Object;
    instance-of v5, v4, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v5, :cond_4

    return-void

    .line 555
    :cond_4
    move-object v5, p0

    check-cast v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-eq v3, v5, :cond_6

    .line 557
    move-object v2, v0

    .line 558
    if-nez v3, :cond_5

    new-instance v1, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object v0, v3

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 559
    goto :goto_0

    .line 561
    :cond_6
    if-ne v4, v0, :cond_7

    return-void

    .line 562
    :cond_7
    sget-object v5, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->PREV:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 563
    iget-object v5, v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    instance-of v5, v5, Lkotlinx/coroutines/experimental/internal/Removed;

    if-nez v5, :cond_8

    return-void

    .line 534
    .end local v3    # "prevNext":Ljava/lang/Object;
    .end local v4    # "oldPrev":Ljava/lang/Object;
    :cond_8
    goto :goto_0
.end method

.method private final markPrev()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 3

    .line 484
    :goto_0
    nop

    .line 485
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 486
    .local v0, "prev":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/Removed;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/internal/Removed;->ref:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-object v1

    .line 487
    :cond_0
    sget-object v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->PREV:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-nez v0, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->removed()Lkotlinx/coroutines/experimental/internal/Removed;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-object v1

    .line 484
    .end local v0    # "prev":Ljava/lang/Object;
    :cond_2
    goto :goto_0
.end method

.method private final removeFirstIfIsInstanceOf()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 275
    .local v0, "$i$f$removeFirstIfIsInstanceOf":I
    :goto_0
    nop

    .line 276
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 277
    .local v1, "first":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    return-object v3

    .line 278
    :cond_1
    const/4 v2, 0x3

    const-string v4, "T"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v2, v1, Ljava/lang/Object;

    if-nez v2, :cond_2

    return-object v3

    .line 279
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->remove()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 280
    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpDelete()V

    .line 275
    .end local v1    # "first":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    goto :goto_0
.end method

.method private final removeFirstIfIsInstanceOfOrPeekIf(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 5
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    .local v0, "$i$f$removeFirstIfIsInstanceOfOrPeekIf":I
    :goto_0
    nop

    .line 287
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 288
    .local v1, "first":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    return-object v3

    .line 289
    :cond_1
    const/4 v2, 0x3

    const-string v4, "T"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v2, v1, Ljava/lang/Object;

    if-nez v2, :cond_2

    return-object v3

    .line 290
    :cond_2
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 291
    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->remove()Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 292
    :cond_4
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpDelete()V

    .line 286
    .end local v1    # "first":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    goto :goto_0
.end method

.method private final removed()Lkotlinx/coroutines/experimental/internal/Removed;
    .locals 4

    .line 90
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_removedRef:Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Removed;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/experimental/internal/Removed;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    move-object v1, v0

    .line 90
    .local v1, "it":Lkotlinx/coroutines/experimental/internal/Removed;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$a$1$also":I
    sget-object v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->REMOVED_REF:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .end local v1    # "it":Lkotlinx/coroutines/experimental/internal/Removed;
    .end local v2    # "$i$a$1$also":I
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final addLast(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 2
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    :goto_0
    nop

    .line 160
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 161
    .local v0, "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    invoke-virtual {v0, p1, p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 159
    .end local v0    # "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_1
    goto :goto_0
.end method

.method public final addLastIf(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Z
    .locals 4
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "condition"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    .local v0, "$i$f$makeCondAddOp":I
    const/4 v1, 0x0

    .line 171
    .local v1, "$i$f$addLastIf":I
    const-string v2, "node"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "condition"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    move-object v2, p0

    .line 619
    .local v2, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    new-instance v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1;

    invoke-direct {v3, p2, p1, p1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;

    .line 621
    .end local v0    # "$i$f$makeCondAddOp":I
    .end local v2    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    nop

    .line 171
    nop

    .line 172
    .local v3, "condAdd":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_0
    nop

    .line 173
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 174
    .local v0, "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    invoke-virtual {v0, p1, p0, v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 177
    .end local v0    # "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    nop

    .line 172
    goto :goto_0

    .line 176
    .restart local v0    # "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :pswitch_0
    const/4 v2, 0x0

    return v2

    .line 175
    :pswitch_1
    const/4 v2, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final addLastIfPrev(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;)Z
    .locals 3
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    .local v0, "$i$f$addLastIfPrev":I
    const-string v1, "node"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "predicate"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :goto_0
    nop

    .line 183
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 184
    .local v1, "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    .line 185
    :cond_1
    invoke-virtual {v1, p1, p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2

    .line 182
    .end local v1    # "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :cond_2
    goto :goto_0
.end method

.method public final addLastIfPrevAndIf(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z
    .locals 5
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "condition"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 194
    .local v0, "$i$f$makeCondAddOp":I
    const/4 v1, 0x0

    .line 194
    .local v1, "$i$f$addLastIfPrevAndIf":I
    const-string v2, "node"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "predicate"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "condition"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    move-object v2, p0

    .line 622
    .local v2, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    new-instance v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1;

    invoke-direct {v3, p3, p1, p1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;

    .line 624
    .end local v0    # "$i$f$makeCondAddOp":I
    .end local v2    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    nop

    .line 194
    nop

    .line 195
    .local v3, "condAdd":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    :goto_0
    nop

    .line 196
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getPrev()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 197
    .local v0, "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    return v4

    .line 198
    :cond_1
    invoke-virtual {v0, p1, p0, v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 201
    .end local v0    # "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    nop

    .line 195
    goto :goto_0

    .line 200
    .restart local v0    # "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :pswitch_0
    return v4

    .line 199
    :pswitch_1
    const/4 v2, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final addNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z
    .locals 1
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->PREV:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    invoke-direct {p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public final addOneIfEmpty(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Z
    .locals 2
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->PREV:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    :goto_0
    nop

    .line 143
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, "next":Ljava/lang/Object;
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 145
    :cond_0
    sget-object v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-direct {p1, p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 148
    const/4 v1, 0x1

    return v1

    .line 142
    .end local v0    # "next":Ljava/lang/Object;
    :cond_1
    goto :goto_0
.end method

.method public final describeAddLast(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;
    .locals 1
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            ">(TT;)",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AddLastDesc;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    return-object v0
.end method

.method public describeRemove()Lkotlinx/coroutines/experimental/internal/AtomicDesc;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 248
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$describeRemove$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$describeRemove$1;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    check-cast v0, Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    return-object v0
.end method

.method public final describeRemoveFirst()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc<",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 272
    new-instance v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$RemoveFirstDesc;-><init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    return-object v0
.end method

.method public final getNext()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 119
    :goto_0
    nop

    .line 120
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 121
    .local v0, "next":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-nez v1, :cond_0

    return-object v0

    .line 122
    :cond_0
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v0    # "next":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final getPrev()Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 128
    :goto_0
    nop

    .line 129
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 130
    .local v0, "prev":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v1, :cond_0

    return-object v0

    .line 131
    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 132
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-ne v1, v2, :cond_2

    return-object v0

    .line 133
    :cond_2
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpInsert(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/OpDescriptor;)V

    .line 128
    .end local v0    # "prev":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final helpDelete()V
    .locals 8
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 494
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 495
    .local v1, "last":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->markPrev()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v2

    .line 496
    .local v2, "prev":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    iget-object v3, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    if-nez v3, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Removed"

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v3, Lkotlinx/coroutines/experimental/internal/Removed;

    iget-object v3, v3, Lkotlinx/coroutines/experimental/internal/Removed;->ref:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 497
    .local v3, "next":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    :goto_0
    nop

    .line 499
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v4

    .line 500
    .local v4, "nextNext":Ljava/lang/Object;
    instance-of v5, v4, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v5, :cond_1

    .line 501
    invoke-direct {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->markPrev()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 502
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/experimental/internal/Removed;

    iget-object v3, v5, Lkotlinx/coroutines/experimental/internal/Removed;->ref:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 503
    goto :goto_0

    .line 506
    :cond_1
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v5

    .line 507
    .local v5, "prevNext":Ljava/lang/Object;
    instance-of v6, v5, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v6, :cond_3

    .line 508
    if-eqz v1, :cond_2

    .line 509
    invoke-direct {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->markPrev()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 510
    sget-object v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/experimental/internal/Removed;

    iget-object v7, v7, Lkotlinx/coroutines/experimental/internal/Removed;->ref:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-virtual {v6, v1, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    move-object v2, v1

    .line 512
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    goto :goto_1

    .line 514
    :cond_2
    iget-object v6, v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    invoke-static {v6}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v2

    .line 515
    :goto_1
    nop

    .line 516
    goto :goto_0

    .line 518
    :cond_3
    move-object v6, p0

    check-cast v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-eq v5, v6, :cond_6

    .line 520
    move-object v1, v2

    .line 521
    if-nez v5, :cond_4

    new-instance v0, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v2, v5

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 522
    if-ne v2, v3, :cond_5

    return-void

    .line 523
    :cond_5
    goto :goto_0

    .line 526
    :cond_6
    sget-object v6, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v2, p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    return-void

    .line 497
    .end local v4    # "nextNext":Ljava/lang/Object;
    .end local v5    # "prevNext":Ljava/lang/Object;
    :cond_7
    goto :goto_0
.end method

.method public final isRemoved()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/experimental/internal/Removed;

    return v0
.end method

.method public final makeCondAddOp(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
    .locals 2
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "condition"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 111
    .local v0, "$i$f$makeCondAddOp":I
    const-string v1, "node"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "condition"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1;

    invoke-direct {v1, p2, p1, p1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$makeCondAddOp$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;

    .line 113
    return-object v1
.end method

.method public remove()Z
    .locals 4

    .line 234
    :goto_0
    nop

    .line 235
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "next":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/Removed;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 237
    :cond_0
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    if-nez v2, :cond_2

    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 238
    :cond_2
    if-nez v0, :cond_3

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {v1}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->removed()Lkotlinx/coroutines/experimental/internal/Removed;

    move-result-object v1

    .line 239
    .local v1, "removed":Lkotlinx/coroutines/experimental/internal/Removed;
    sget-object v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->finishRemove(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 242
    return v3

    .line 234
    .end local v0    # "next":Ljava/lang/Object;
    .end local v1    # "removed":Lkotlinx/coroutines/experimental/internal/Removed;
    :cond_4
    goto :goto_0
.end method

.method public final removeFirstOrNull()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 264
    :goto_0
    nop

    .line 265
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 266
    .local v0, "first":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    .line 267
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->remove()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 268
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->helpDelete()V

    .line 264
    .end local v0    # "first":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

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

.method public final tryCondAddNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;)I
    .locals 1
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "condAdd"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condAdd"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->PREV:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    iput-object p2, p3, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->oldNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    .line 223
    sget-object v0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->NEXT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 225
    :cond_0
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$CondAddOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public final validateNode$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 3
    .param p1, "prev"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "prev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

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

    .line 570
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    if-nez v1, :cond_3

    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 571
    :cond_3
    return-void
.end method
