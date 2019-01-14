.class public final Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0084\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\n\u001a\u0002H\u000b\"\u0004\u0008\u0001\u0010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0007\u00a2\u0006\u0002\u0010\rR\u001a\u0010\u0003\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;",
        "",
        "()V",
        "DECISION",
        "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
        "Lkotlinx/coroutines/experimental/CancellableContinuationImpl;",
        "RESUMED",
        "",
        "SUSPENDED",
        "UNDECIDED",
        "getSuccessfulResult",
        "T",
        "state",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
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

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 168
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSuccessfulResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 178
    instance-of v0, p1, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;

    iget-object v0, v0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl$CompletedIdempotentResult;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method
