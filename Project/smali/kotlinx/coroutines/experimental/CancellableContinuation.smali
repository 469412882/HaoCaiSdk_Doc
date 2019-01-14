.class public interface abstract Lkotlinx/coroutines/experimental/CancellableContinuation;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;
.implements Lkotlinx/coroutines/experimental/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/CancellableContinuation$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "TT;>;",
        "Lkotlinx/coroutines/experimental/Job;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u0008H&J#\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00028\u00002\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\nH&\u00a2\u0006\u0002\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0019\u0010\u0013\u001a\u00020\u0008*\u00020\u00142\u0006\u0010\r\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0015J\u0014\u0010\u0016\u001a\u00020\u0008*\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012H&R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "T",
        "Lkotlin/coroutines/experimental/Continuation;",
        "Lkotlinx/coroutines/experimental/Job;",
        "isCancelled",
        "",
        "()Z",
        "completeResume",
        "",
        "token",
        "",
        "initCancellability",
        "tryResume",
        "value",
        "idempotent",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "tryResumeWithException",
        "exception",
        "",
        "resumeUndispatched",
        "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
        "(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Ljava/lang/Object;)V",
        "resumeUndispatchedWithException",
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
.method public abstract completeResume(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract initCancellability()V
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract resumeUndispatched(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Ljava/lang/Object;)V
    .param p1    # Lkotlinx/coroutines/experimental/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract resumeUndispatchedWithException(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Ljava/lang/Throwable;)V
    .param p1    # Lkotlinx/coroutines/experimental/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
