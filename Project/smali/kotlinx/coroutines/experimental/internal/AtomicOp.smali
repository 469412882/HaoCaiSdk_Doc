.class public abstract Lkotlinx/coroutines/experimental/internal/AtomicOp;
.super Lkotlinx/coroutines/experimental/internal/OpDescriptor;
.source "Atomic.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtomic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Atomic.kt\nkotlinx/coroutines/experimental/internal/AtomicOp\n*L\n1#1,90:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008&\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004H&J\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0004H&J\u0010\u0010\u0010\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/internal/AtomicOp;",
        "Lkotlinx/coroutines/experimental/internal/OpDescriptor;",
        "()V",
        "_consensus",
        "",
        "isDecided",
        "",
        "()Z",
        "complete",
        "",
        "affected",
        "failure",
        "decide",
        "decision",
        "perform",
        "prepare",
        "tryDecide",
        "Companion",
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
.field private static final CONSENSUS:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlinx/coroutines/experimental/internal/AtomicOp;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;

.field private static final UNDECIDED:Ljava/lang/Object;


# instance fields
.field private volatile _consensus:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->Companion:Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;

    .line 52
    const-class v0, Lkotlinx/coroutines/experimental/internal/AtomicOp;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_consensus"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const-string v1, "AtomicReferenceFieldUpda\u2026class.java, \"_consensus\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->CONSENSUS:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 54
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "UNDECIDED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->UNDECIDED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;-><init>()V

    .line 48
    sget-object v0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->Companion:Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;->access$getUNDECIDED$p(Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->_consensus:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getCONSENSUS$cp()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    sget-object v0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->CONSENSUS:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic access$getUNDECIDED$cp()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    sget-object v0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->UNDECIDED:Ljava/lang/Object;

    return-object v0
.end method

.method private final decide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "decision"    # Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/internal/AtomicOp;->tryDecide(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->_consensus:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract complete(Ljava/lang/Object;Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final isDecided()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->_consensus:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/experimental/internal/AtomicOp;->Companion:Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;

    invoke-static {v1}, Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;->access$getUNDECIDED$p(Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final perform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "affected"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 73
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->_consensus:Ljava/lang/Object;

    .line 74
    .local v0, "decision":Ljava/lang/Object;
    sget-object v1, Lkotlinx/coroutines/experimental/internal/AtomicOp;->Companion:Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;

    invoke-static {v1}, Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;->access$getUNDECIDED$p(Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/internal/AtomicOp;->prepare()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlinx/coroutines/experimental/internal/AtomicOp;->decide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    :cond_0
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/experimental/internal/AtomicOp;->complete(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-object v0
.end method

.method public abstract prepare()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final tryDecide(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "decision"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 60
    sget-object v0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->Companion:Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;->access$getUNDECIDED$p(Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

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

    .line 61
    :cond_1
    sget-object v0, Lkotlinx/coroutines/experimental/internal/AtomicOp;->Companion:Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;->access$getCONSENSUS$p(Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/experimental/internal/AtomicOp;->Companion:Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;

    invoke-static {v1}, Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;->access$getUNDECIDED$p(Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
