.class final Lkotlinx/coroutines/experimental/android/HandlerContext$scheduleResumeAfterDelay$1;
.super Ljava/lang/Object;
.source "HandlerContext.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/android/HandlerContext;->scheduleResumeAfterDelay(JLjava/util/concurrent/TimeUnit;Lkotlinx/coroutines/experimental/CancellableContinuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandlerContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerContext.kt\nkotlinx/coroutines/experimental/android/HandlerContext$scheduleResumeAfterDelay$1\n*L\n1#1,67:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $continuation:Lkotlinx/coroutines/experimental/CancellableContinuation;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/android/HandlerContext;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/android/HandlerContext;Lkotlinx/coroutines/experimental/CancellableContinuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/android/HandlerContext$scheduleResumeAfterDelay$1;->this$0:Lkotlinx/coroutines/experimental/android/HandlerContext;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/android/HandlerContext$scheduleResumeAfterDelay$1;->$continuation:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 50
    .local v0, "$i$a$1$with":I
    iget-object v1, p0, Lkotlinx/coroutines/experimental/android/HandlerContext$scheduleResumeAfterDelay$1;->$continuation:Lkotlinx/coroutines/experimental/CancellableContinuation;

    .line 50
    .local v1, "$receiver":Lkotlinx/coroutines/experimental/CancellableContinuation;
    iget-object v2, p0, Lkotlinx/coroutines/experimental/android/HandlerContext$scheduleResumeAfterDelay$1;->this$0:Lkotlinx/coroutines/experimental/android/HandlerContext;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resumeUndispatched(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Ljava/lang/Object;)V

    .line 51
    .end local v0    # "$i$a$1$with":I
    .end local v1    # "$receiver":Lkotlinx/coroutines/experimental/CancellableContinuation;
    return-void
.end method
