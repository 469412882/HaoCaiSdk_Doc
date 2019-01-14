.class final Lkotlinx/coroutines/experimental/selects/WhileSelectKt$whileSelect$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "WhileSelect.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/selects/WhileSelectKt;->whileSelect(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWhileSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/experimental/selects/WhileSelectKt\n+ 2 Select.kt\nkotlinx/coroutines/experimental/selects/SelectKt\n*L\n1#1,40:1\n170#2,9:41\n*E\n*S KotlinDebug\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/experimental/selects/WhileSelectKt\n*L\n38#1,9:41\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $builder:Lkotlin/jvm/functions/Function1;

.field private L$0:Ljava/lang/Object;

.field private L$1:Ljava/lang/Object;

.field private p$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/selects/WhileSelectKt$whileSelect$1;->$builder:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v1, :pswitch_data_0

    .line 39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :pswitch_0
    iget-object v1, p0, Lkotlinx/coroutines/experimental/selects/WhileSelectKt$whileSelect$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/selects/WhileSelectKt$whileSelect$1;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/selects/WhileSelectKt$whileSelect$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_0

    throw p2

    :cond_0
    move-object p2, p0

    goto :goto_2

    :pswitch_1
    if-eqz p2, :cond_1

    throw p2

    .line 38
    :cond_1
    move-object p1, p0

    :goto_0
    iget-object p2, p1, Lkotlinx/coroutines/experimental/selects/WhileSelectKt$whileSelect$1;->$builder:Lkotlin/jvm/functions/Function1;

    iput-object p2, p1, Lkotlinx/coroutines/experimental/selects/WhileSelectKt$whileSelect$1;->L$0:Ljava/lang/Object;

    iput-object p1, p1, Lkotlinx/coroutines/experimental/selects/WhileSelectKt$whileSelect$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    .line 41
    invoke-static {p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    .line 42
    new-instance v2, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;)V

    .line 43
    nop

    .line 44
    :try_start_0
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 45
    :catch_0
    move-exception p2

    .line 46
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 47
    :goto_1
    nop

    .line 48
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->initSelectResult()Ljava/lang/Object;

    move-result-object p2

    .line 41
    nop

    .line 49
    if-ne p2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 38
    move-object p1, p2

    goto :goto_0

    .line 39
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
