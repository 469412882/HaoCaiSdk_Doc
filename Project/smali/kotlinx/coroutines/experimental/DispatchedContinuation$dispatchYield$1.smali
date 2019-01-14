.class final Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;
.super Ljava/lang/Object;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatchYield$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/Job;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineDispatcher.kt\nkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/experimental/CoroutineContextKt\n*L\n1#1,166:1\n91#2,5:167\n*E\n*S KotlinDebug\n*F\n+ 1 CoroutineDispatcher.kt\nkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1\n*L\n147#1,5:167\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002 \u0000H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $context:Lkotlin/coroutines/experimental/CoroutineContext;

.field final synthetic $job:Lkotlinx/coroutines/experimental/Job;

.field final synthetic $value:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/DispatchedContinuation;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/DispatchedContinuation;Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/Job;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;->this$0:Lkotlinx/coroutines/experimental/DispatchedContinuation;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;->$context:Lkotlin/coroutines/experimental/CoroutineContext;

    iput-object p3, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;->$job:Lkotlinx/coroutines/experimental/Job;

    iput-object p4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;->$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    .line 147
    .local v0, "$i$f$withCoroutineContext":I
    iget-object v1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;->$context:Lkotlin/coroutines/experimental/CoroutineContext;

    .line 167
    .local v1, "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "oldName$iv":Ljava/lang/String;
    nop

    .line 169
    const/4 v3, 0x0

    .line 148
    .local v3, "$i$a$1$withCoroutineContext":I
    :try_start_0
    iget-object v4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;->$job:Lkotlinx/coroutines/experimental/Job;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;->$job:Lkotlinx/coroutines/experimental/Job;

    invoke-interface {v4}, Lkotlinx/coroutines/experimental/Job;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;->this$0:Lkotlinx/coroutines/experimental/DispatchedContinuation;

    iget-object v4, v4, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    iget-object v5, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;->$job:Lkotlinx/coroutines/experimental/Job;

    invoke-interface {v5}, Lkotlinx/coroutines/experimental/Job;->getCompletionException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;->this$0:Lkotlinx/coroutines/experimental/DispatchedContinuation;

    iget-object v4, v4, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    iget-object v5, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$dispatchYield$1;->$value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 152
    .end local v3    # "$i$a$1$withCoroutineContext":I
    :goto_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    .line 152
    .end local v0    # "$i$f$withCoroutineContext":I
    .end local v1    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v2    # "oldName$iv":Ljava/lang/String;
    nop

    .line 153
    return-void

    .line 171
    .restart local v0    # "$i$f$withCoroutineContext":I
    .restart local v1    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local v2    # "oldName$iv":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    throw v3
.end method
