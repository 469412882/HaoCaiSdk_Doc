.class public interface abstract Lkotlinx/coroutines/experimental/Deferred;
.super Ljava/lang/Object;
.source "Deferred.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/Deferred$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002J\u0011\u0010\n\u001a\u00028\u0000H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\r\u0010\u000c\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\rJH\u0010\u000e\u001a\u00020\u000f\"\u0004\u0008\u0001\u0010\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u00122\"\u0010\u0013\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00100\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0014H&\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005R\u001a\u0010\u0007\u001a\u00020\u00048VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0007\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/Deferred;",
        "T",
        "Lkotlinx/coroutines/experimental/Job;",
        "isCancelled",
        "",
        "()Z",
        "isCompletedExceptionally",
        "isComputing",
        "isComputing$annotations",
        "()V",
        "await",
        "(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "getCompleted",
        "()Ljava/lang/Object;",
        "registerSelectAwait",
        "",
        "R",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V",
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
.method public abstract await(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCompleted()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isCompletedExceptionally()Z
.end method

.method public abstract isComputing()Z
.end method

.method public abstract registerSelectAwait(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .param p1    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
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
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
