.class public interface abstract Lkotlinx/coroutines/experimental/selects/SelectInstance;
.super Ljava/lang/Object;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0018\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0012\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H&R\u0018\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "R",
        "",
        "completion",
        "Lkotlin/coroutines/experimental/Continuation;",
        "getCompletion",
        "()Lkotlin/coroutines/experimental/Continuation;",
        "isSelected",
        "",
        "()Z",
        "disposeOnSelect",
        "",
        "handle",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "performAtomicIfNotSelected",
        "desc",
        "Lkotlinx/coroutines/experimental/internal/AtomicDesc;",
        "performAtomicTrySelect",
        "resumeSelectWithException",
        "exception",
        "",
        "mode",
        "",
        "trySelect",
        "idempotent",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# virtual methods
.method public abstract disposeOnSelect(Lkotlinx/coroutines/experimental/DisposableHandle;)V
    .param p1    # Lkotlinx/coroutines/experimental/DisposableHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getCompletion()Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/Continuation<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isSelected()Z
.end method

.method public abstract performAtomicIfNotSelected(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;
    .param p1    # Lkotlinx/coroutines/experimental/internal/AtomicDesc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract performAtomicTrySelect(Lkotlinx/coroutines/experimental/internal/AtomicDesc;)Ljava/lang/Object;
    .param p1    # Lkotlinx/coroutines/experimental/internal/AtomicDesc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract resumeSelectWithException(Ljava/lang/Throwable;I)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract trySelect(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
