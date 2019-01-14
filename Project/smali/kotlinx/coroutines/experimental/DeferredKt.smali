.class public final Lkotlinx/coroutines/experimental/DeferredKt;
.super Ljava/lang/Object;
.source "Deferred.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001aU\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\'\u0010\u0007\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0008\u00a2\u0006\u0002\u0008\u000cH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001aU\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u000e2\'\u0010\u0007\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0008\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001aM\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\'\u0010\u0007\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0008\u00a2\u0006\u0002\u0008\u000cH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0012"
    }
    d2 = {
        "async",
        "Lkotlinx/coroutines/experimental/Deferred;",
        "T",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "start",
        "",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Deferred;",
        "Lkotlinx/coroutines/experimental/CoroutineStart;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Deferred;",
        "defer",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Deferred;",
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
.method public static final async(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Deferred;
    .locals 3
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "start"    # Lkotlinx/coroutines/experimental/CoroutineStart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlinx/coroutines/experimental/CoroutineStart;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/experimental/Deferred<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p0}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->newCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 123
    .local v0, "newContext":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/CoroutineStart;->isLazy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    new-instance v1, Lkotlinx/coroutines/experimental/LazyDeferredCoroutine;

    invoke-direct {v1, v0, p2}, Lkotlinx/coroutines/experimental/LazyDeferredCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lkotlinx/coroutines/experimental/DeferredCoroutine;

    goto :goto_0

    .line 125
    :cond_0
    new-instance v1, Lkotlinx/coroutines/experimental/DeferredCoroutine;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lkotlinx/coroutines/experimental/DeferredCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V

    .line 123
    :goto_0
    nop

    .line 126
    .local v1, "coroutine":Lkotlinx/coroutines/experimental/DeferredCoroutine;
    sget-object v2, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->initParentJob(Lkotlinx/coroutines/experimental/Job;)V

    .line 127
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p1, p2, v1, v2}, Lkotlinx/coroutines/experimental/CoroutineStart;->invoke(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 128
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/Deferred;

    return-object v2
.end method

.method public static final async(Lkotlin/coroutines/experimental/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Deferred;
    .locals 1
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "start"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/experimental/Deferred<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use `start = CoroutineStart.XXX` parameter"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "async(context, if (start) CoroutineStart.DEFAULT else CoroutineStart.LAZY, block)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    if-eqz p1, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineStart;->LAZY:Lkotlinx/coroutines/experimental/CoroutineStart;

    :goto_0
    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/experimental/DeferredKt;->async(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic async$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Deferred;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 119
    sget-object p1, Lkotlinx/coroutines/experimental/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/experimental/DeferredKt;->async(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Deferred;

    move-result-object p0

    return-object p0
.end method

.method public static final defer(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Deferred;
    .locals 2
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/experimental/Deferred<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "`defer` was renamed to `async`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "async(context, block = block)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1, v0}, Lkotlinx/coroutines/experimental/DeferredKt;->async$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Deferred;

    move-result-object v0

    return-object v0
.end method
