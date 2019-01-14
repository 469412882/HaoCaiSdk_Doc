.class public final Lkotlinx/coroutines/experimental/JobSupport$Companion;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0084\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001R\"\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/JobSupport$Companion;",
        "",
        "()V",
        "STATE",
        "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
        "Lkotlinx/coroutines/experimental/JobSupport;",
        "getSTATE",
        "()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
        "stateToString",
        "",
        "state",
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

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 328
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/JobSupport$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSTATE$p(Lkotlinx/coroutines/experimental/JobSupport$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/JobSupport$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 328
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->getSTATE()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private final getSTATE()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlinx/coroutines/experimental/JobSupport;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 329
    invoke-static {}, Lkotlinx/coroutines/experimental/JobSupport;->access$getSTATE$cp()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final stateToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 333
    instance-of v0, p1, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v0, :cond_1

    .line 334
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Active"

    goto :goto_0

    :cond_0
    const-string v0, "New"

    goto :goto_0

    .line 335
    :cond_1
    const-string v0, "Completed"

    .line 333
    :goto_0
    nop

    .line 335
    return-object v0
.end method
