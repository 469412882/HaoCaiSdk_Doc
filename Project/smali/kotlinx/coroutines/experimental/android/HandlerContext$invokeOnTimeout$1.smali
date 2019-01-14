.class public final Lkotlinx/coroutines/experimental/android/HandlerContext$invokeOnTimeout$1;
.super Ljava/lang/Object;
.source "HandlerContext.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/android/HandlerContext;->invokeOnTimeout(JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)Lkotlinx/coroutines/experimental/DisposableHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "kotlinx/coroutines/experimental/android/HandlerContext$invokeOnTimeout$1",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "(Lkotlinx/coroutines/experimental/android/HandlerContext;Ljava/lang/Runnable;)V",
        "dispose",
        "",
        "kotlinx-coroutines-android"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $block:Ljava/lang/Runnable;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/android/HandlerContext;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/android/HandlerContext;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "$outer"    # Lkotlinx/coroutines/experimental/android/HandlerContext;
    .param p2, "$captured_local_variable$1"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lkotlinx/coroutines/experimental/android/HandlerContext$invokeOnTimeout$1;->this$0:Lkotlinx/coroutines/experimental/android/HandlerContext;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/android/HandlerContext$invokeOnTimeout$1;->$block:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 58
    iget-object v0, p0, Lkotlinx/coroutines/experimental/android/HandlerContext$invokeOnTimeout$1;->this$0:Lkotlinx/coroutines/experimental/android/HandlerContext;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/android/HandlerContext;->access$getHandler$p(Lkotlinx/coroutines/experimental/android/HandlerContext;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/android/HandlerContext$invokeOnTimeout$1;->$block:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    return-void
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

    .line 56
    invoke-static {p0}, Lkotlinx/coroutines/experimental/DisposableHandle$DefaultImpls;->unregister(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    return-void
.end method
