.class final Lkotlinx/coroutines/experimental/ResumeUndispatchedRunnable;
.super Ljava/lang/Object;
.source "Executors.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExecutors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Executors.kt\nkotlinx/coroutines/experimental/ResumeUndispatchedRunnable\n*L\n1#1,82:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/ResumeUndispatchedRunnable;",
        "Ljava/lang/Runnable;",
        "dispatcher",
        "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
        "continuation",
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "",
        "(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Lkotlinx/coroutines/experimental/CancellableContinuation;)V",
        "run",
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
.field private final continuation:Lkotlinx/coroutines/experimental/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Lkotlinx/coroutines/experimental/CancellableContinuation;)V
    .locals 1
    .param p1, "dispatcher"    # Lkotlinx/coroutines/experimental/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "continuation"    # Lkotlinx/coroutines/experimental/CancellableContinuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/ResumeUndispatchedRunnable;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/ResumeUndispatchedRunnable;->continuation:Lkotlinx/coroutines/experimental/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 79
    .local v0, "$i$a$1$with":I
    iget-object v1, p0, Lkotlinx/coroutines/experimental/ResumeUndispatchedRunnable;->continuation:Lkotlinx/coroutines/experimental/CancellableContinuation;

    .line 79
    .local v1, "$receiver":Lkotlinx/coroutines/experimental/CancellableContinuation;
    iget-object v2, p0, Lkotlinx/coroutines/experimental/ResumeUndispatchedRunnable;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resumeUndispatched(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Ljava/lang/Object;)V

    .line 80
    .end local v0    # "$i$a$1$with":I
    .end local v1    # "$receiver":Lkotlinx/coroutines/experimental/CancellableContinuation;
    return-void
.end method
