.class final Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onDismiss$1;
.super Ljava/lang/Object;
.source "ListenersWithCoroutines.kt"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt;->onDismiss(Landroid/widget/AutoCompleteTextView;Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "onDismiss"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field final synthetic $context:Lkotlin/coroutines/experimental/CoroutineContext;

.field final synthetic $handler:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onDismiss$1;->$context:Lkotlin/coroutines/experimental/CoroutineContext;

    iput-object p2, p0, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onDismiss$1;->$handler:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 4

    .line 607
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onDismiss$1;->$context:Lkotlin/coroutines/experimental/CoroutineContext;

    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onDismiss$1;->$handler:Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v2}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 608
    return-void
.end method
