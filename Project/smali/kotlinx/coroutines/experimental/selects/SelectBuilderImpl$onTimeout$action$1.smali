.class final Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl$onTimeout$action$1;
.super Ljava/lang/Object;
.source "Select.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->onTimeout(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "R",
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
.field final synthetic $block:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl$onTimeout$action$1;->this$0:Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl$onTimeout$action$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 265
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl$onTimeout$action$1;->this$0:Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->trySelect(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl$onTimeout$action$1;->$block:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl$onTimeout$action$1;->this$0:Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/coroutines/experimental/CoroutinesKt;->startCoroutine(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V

    .line 267
    :cond_0
    return-void
.end method
