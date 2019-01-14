.class public Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;
.super Lkotlinx/coroutines/experimental/JobSupport$CompletedIdempotentStart;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletedExceptionally"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally\n*L\n1#1,850:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;",
        "Lkotlinx/coroutines/experimental/JobSupport$CompletedIdempotentStart;",
        "idempotentStart",
        "",
        "cause",
        "",
        "(Ljava/lang/Object;Ljava/lang/Throwable;)V",
        "_exception",
        "exception",
        "getException",
        "()Ljava/lang/Throwable;",
        "toString",
        "",
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
.field private volatile _exception:Ljava/lang/Throwable;

.field public final cause:Ljava/lang/Throwable;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "idempotentStart"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 745
    nop

    .line 748
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport$CompletedIdempotentStart;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 750
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->cause:Ljava/lang/Throwable;

    iput-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->_exception:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getException()Ljava/lang/Throwable;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 756
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->_exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 757
    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Job was cancelled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 757
    .local v1, "it":Ljava/util/concurrent/CancellationException;
    const/4 v2, 0x0

    .line 757
    .local v2, "$i$a$1$also":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    iput-object v3, p0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->_exception:Ljava/lang/Throwable;

    .line 757
    .end local v1    # "it":Ljava/util/concurrent/CancellationException;
    .end local v2    # "$i$a$1$also":I
    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
