.class final Lkotlinx/coroutines/experimental/DeferredCoroutine$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Deferred.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/DeferredCoroutine;->awaitSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeferred.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deferred.kt\nkotlinx/coroutines/experimental/DeferredCoroutine$awaitSuspend$1$1\n*L\n1#1,242:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/DeferredCoroutine;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/DeferredCoroutine;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/DeferredCoroutine$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->$cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/DeferredCoroutine$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->this$0:Lkotlinx/coroutines/experimental/DeferredCoroutine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 147
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/DeferredCoroutine$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "it"    # Ljava/lang/Throwable;

    .line 173
    iget-object v0, p0, Lkotlinx/coroutines/experimental/DeferredCoroutine$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->this$0:Lkotlinx/coroutines/experimental/DeferredCoroutine;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 175
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lkotlinx/coroutines/experimental/DeferredCoroutine$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->$cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resumeWithException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/experimental/DeferredCoroutine$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->$cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resume(Ljava/lang/Object;)V

    .line 179
    .end local v0    # "state":Ljava/lang/Object;
    :goto_1
    return-void
.end method
