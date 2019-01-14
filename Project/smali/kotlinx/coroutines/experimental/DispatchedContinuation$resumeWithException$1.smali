.class final Lkotlinx/coroutines/experimental/DispatchedContinuation$resumeWithException$1;
.super Ljava/lang/Object;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/DispatchedContinuation;->resumeWithException(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineDispatcher.kt\nkotlinx/coroutines/experimental/DispatchedContinuation$resumeWithException$1\n+ 2 CoroutineDispatcher.kt\nkotlinx/coroutines/experimental/DispatchedContinuation\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/experimental/CoroutineContextKt\n*L\n1#1,166:1\n138#2:167\n139#2,2:171\n141#2:174\n91#3,3:168\n95#3:173\n*E\n*S KotlinDebug\n*F\n+ 1 CoroutineDispatcher.kt\nkotlinx/coroutines/experimental/DispatchedContinuation$resumeWithException$1\n*L\n130#1:167\n130#1,2:171\n130#1:174\n130#1,3:168\n130#1:173\n*E\n"
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
.field final synthetic $exception:Ljava/lang/Throwable;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/DispatchedContinuation;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/DispatchedContinuation;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$resumeWithException$1;->this$0:Lkotlinx/coroutines/experimental/DispatchedContinuation;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$resumeWithException$1;->$exception:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    .line 130
    .local v0, "$i$f$resumeUndispatchedWithException":I
    iget-object v1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$resumeWithException$1;->this$0:Lkotlinx/coroutines/experimental/DispatchedContinuation;

    .line 130
    .local v1, "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    iget-object v2, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation$resumeWithException$1;->$exception:Ljava/lang/Throwable;

    .line 167
    .local v2, "exception$iv":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v3

    .line 167
    .local v3, "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    const/4 v4, 0x0

    move v5, v4

    .line 168
    .local v5, "$i$f$withCoroutineContext":I
    invoke-static {v3}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "oldName$iv$iv":Ljava/lang/String;
    nop

    .line 170
    nop

    .line 171
    .local v4, "$i$a$1$withCoroutineContext":I
    :try_start_0
    iget-object v7, v1, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v7, v2}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 172
    .end local v4    # "$i$a$1$withCoroutineContext":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-static {v6}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    .line 174
    .end local v0    # "$i$f$resumeUndispatchedWithException":I
    .end local v1    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .end local v2    # "exception$iv":Ljava/lang/Throwable;
    .end local v3    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v5    # "$i$f$withCoroutineContext":I
    .end local v6    # "oldName$iv$iv":Ljava/lang/String;
    nop

    .line 130
    nop

    .line 131
    return-void

    .line 173
    .restart local v0    # "$i$f$resumeUndispatchedWithException":I
    .restart local v1    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .restart local v2    # "exception$iv":Ljava/lang/Throwable;
    .restart local v3    # "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local v5    # "$i$f$withCoroutineContext":I
    .restart local v6    # "oldName$iv$iv":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-static {v6}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    throw v4
.end method
