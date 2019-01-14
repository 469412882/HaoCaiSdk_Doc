.class public final Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;
.super Ljava/lang/Object;
.source "Atomic.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/internal/AtomicOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;",
        "",
        "()V",
        "CONSENSUS",
        "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
        "Lkotlinx/coroutines/experimental/internal/AtomicOp;",
        "getCONSENSUS",
        "()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
        "UNDECIDED",
        "getUNDECIDED",
        "()Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 50
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCONSENSUS$p(Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;->getCONSENSUS()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getUNDECIDED$p(Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/AtomicOp$Companion;->getUNDECIDED()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final getCONSENSUS()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlinx/coroutines/experimental/internal/AtomicOp;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-static {}, Lkotlinx/coroutines/experimental/internal/AtomicOp;->access$getCONSENSUS$cp()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private final getUNDECIDED()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-static {}, Lkotlinx/coroutines/experimental/internal/AtomicOp;->access$getUNDECIDED$cp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
