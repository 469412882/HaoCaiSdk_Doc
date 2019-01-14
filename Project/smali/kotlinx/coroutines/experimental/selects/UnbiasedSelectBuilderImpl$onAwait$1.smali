.class final Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onAwait$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectUnbiased.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->onAwait(Lkotlinx/coroutines/experimental/Deferred;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0006\u0008\u0001\u0010\u0003 \u0000H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
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
.field final synthetic $block:Lkotlin/jvm/functions/Function2;

.field final synthetic receiver$0:Lkotlinx/coroutines/experimental/Deferred;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;Lkotlinx/coroutines/experimental/Deferred;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onAwait$1;->this$0:Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onAwait$1;->receiver$0:Lkotlinx/coroutines/experimental/Deferred;

    iput-object p3, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onAwait$1;->$block:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onAwait$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 77
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onAwait$1;->receiver$0:Lkotlinx/coroutines/experimental/Deferred;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onAwait$1;->this$0:Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->getInstance()Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/experimental/selects/SelectInstance;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onAwait$1;->$block:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/experimental/Deferred;->registerSelectAwait(Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
