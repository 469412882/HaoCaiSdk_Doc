.class public final Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;
.super Ljava/lang/Object;
.source "Undispatched.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUndispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/experimental/intrinsics/UndispatchedKt\n*L\n1#1,56:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a>\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00032\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001aR\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0008\"\u0004\u0008\u0001\u0010\u0002*\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\t2\u0006\u0010\n\u001a\u0002H\u00082\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u000c"
    }
    d2 = {
        "startCoroutineUndispatched",
        "",
        "R",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "completion",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V",
        "E",
        "Lkotlin/Function2;",
        "element",
        "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V",
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
.method public static final startCoroutineUndispatched(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 2
    .param p0, "$receiver"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "completion"    # Lkotlin/coroutines/experimental/Continuation;
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
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    nop

    .line 31
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    nop

    .line 36
    .local v0, "value":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 37
    invoke-interface {p1, v0}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 38
    :cond_0
    return-void

    .line 32
    .end local v0    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public static final startCoroutineUndispatched(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 2
    .param p0, "$receiver"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "completion"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;TE;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    nop

    .line 48
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    nop

    .line 53
    .local v0, "value":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 54
    invoke-interface {p2, v0}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void

    .line 49
    .end local v0    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p2, v0}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method
