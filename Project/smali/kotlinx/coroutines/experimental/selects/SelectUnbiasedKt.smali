.class public final Lkotlinx/coroutines/experimental/selects/SelectUnbiasedKt;
.super Ljava/lang/Object;
.source "SelectUnbiased.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectUnbiased.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/experimental/selects/SelectUnbiasedKt\n*L\n1#1,99:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a8\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u001f\u0008\u0004\u0010\u0002\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0008"
    }
    d2 = {
        "selectUnbiased",
        "R",
        "builder",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/experimental/selects/SelectBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public static final selectUnbiased(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p0, "builder"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/experimental/selects/SelectBuilder<",
            "-TR;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 40
    .local v0, "$i$a$1$suspendCoroutineOrReturn":I
    const/4 v1, 0x0

    .line 40
    .local v1, "$i$f$selectUnbiased":I
    const-string v2, "builder"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$continuation"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    .line 41
    .local v2, "cont":Lkotlin/coroutines/experimental/Continuation;
    new-instance v3, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;)V

    .line 42
    .local v3, "scope":Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;
    nop

    .line 43
    :try_start_0
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v4

    .line 45
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 46
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 47
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->initSelectResult()Ljava/lang/Object;

    move-result-object v0

    .line 40
    .end local v0    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v2    # "cont":Lkotlin/coroutines/experimental/Continuation;
    .end local v3    # "scope":Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;
    nop

    .line 48
    return-object v0
.end method
