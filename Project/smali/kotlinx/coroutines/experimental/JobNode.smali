.class public abstract Lkotlinx/coroutines/experimental/JobNode;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.source "Job.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/DisposableHandle;
.implements Lkotlin/jvm/functions/Function1;
.implements Lkotlinx/coroutines/experimental/JobSupport$Incomplete;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/experimental/Job;",
        ">",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlinx/coroutines/experimental/JobSupport$Incomplete;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008 \u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u00022\u00020\u00032\u00020\u00042\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u00082\u00020\tB\r\u0012\u0006\u0010\n\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u0014\u001a\u00020\u0007J\u0013\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0006H\u00a6\u0002R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0012R\u0012\u0010\n\u001a\u00028\u00008\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/JobNode;",
        "J",
        "Lkotlinx/coroutines/experimental/Job;",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "Lkotlin/Function1;",
        "",
        "",
        "Lkotlinx/coroutines/experimental/CompletionHandler;",
        "Lkotlinx/coroutines/experimental/JobSupport$Incomplete;",
        "job",
        "(Lkotlinx/coroutines/experimental/Job;)V",
        "idempotentStart",
        "",
        "getIdempotentStart",
        "()Ljava/lang/Object;",
        "isActive",
        "",
        "()Z",
        "Lkotlinx/coroutines/experimental/Job;",
        "dispose",
        "invoke",
        "reason",
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
.field public final job:Lkotlinx/coroutines/experimental/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/Job;)V
    .locals 1
    .param p1, "job"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    nop

    .line 783
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/JobNode;->job:Lkotlinx/coroutines/experimental/Job;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 788
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobNode;->job:Lkotlinx/coroutines/experimental/Job;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.experimental.JobSupport"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/experimental/JobSupport;->removeNode$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobNode;)V

    return-void
.end method

.method public final getIdempotentStart()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 785
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract invoke(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final isActive()Z
    .locals 1

    .line 784
    const/4 v0, 0x1

    return v0
.end method

.method public unregister()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Replace with `dispose`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "dispose()"
            imports = {}
        .end subannotation
    .end annotation

    .line 781
    invoke-static {p0}, Lkotlinx/coroutines/experimental/DisposableHandle$DefaultImpls;->unregister(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    return-void
.end method
