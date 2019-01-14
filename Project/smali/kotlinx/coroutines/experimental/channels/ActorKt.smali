.class public final Lkotlinx/coroutines/experimental/channels/ActorKt;
.super Ljava/lang/Object;
.source "Actor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001ae\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082-\u0010\t\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\n\u00a2\u0006\u0002\u0008\u000f\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0011"
    }
    d2 = {
        "actor",
        "Lkotlinx/coroutines/experimental/channels/ActorJob;",
        "E",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "capacity",
        "",
        "start",
        "Lkotlinx/coroutines/experimental/CoroutineStart;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/experimental/channels/ActorScope;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/channels/ActorJob;",
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
.method public static final actor(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/channels/ActorJob;
    .locals 4
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "capacity"    # I
    .param p2, "start"    # Lkotlinx/coroutines/experimental/CoroutineStart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/experimental/CoroutineStart;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/channels/ActorScope<",
            "TE;>;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/experimental/channels/ActorJob<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {p0}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->newCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 89
    .local v0, "newContext":Lkotlin/coroutines/experimental/CoroutineContext;
    sget-object v1, Lkotlinx/coroutines/experimental/channels/Channel;->Factory:Lkotlinx/coroutines/experimental/channels/Channel$Factory;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/experimental/channels/Channel$Factory;->invoke(I)Lkotlinx/coroutines/experimental/channels/Channel;

    move-result-object v1

    .line 90
    .local v1, "channel":Lkotlinx/coroutines/experimental/channels/Channel;
    invoke-virtual {p2}, Lkotlinx/coroutines/experimental/CoroutineStart;->isLazy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    new-instance v2, Lkotlinx/coroutines/experimental/channels/LazyActorCoroutine;

    invoke-direct {v2, v0, v1, p3}, Lkotlinx/coroutines/experimental/channels/LazyActorCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/channels/Channel;Lkotlin/jvm/functions/Function2;)V

    check-cast v2, Lkotlinx/coroutines/experimental/channels/ActorCoroutine;

    goto :goto_0

    .line 92
    :cond_0
    new-instance v2, Lkotlinx/coroutines/experimental/channels/ActorCoroutine;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lkotlinx/coroutines/experimental/channels/ActorCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/channels/Channel;Z)V

    .line 90
    :goto_0
    nop

    .line 93
    .local v2, "coroutine":Lkotlinx/coroutines/experimental/channels/ActorCoroutine;
    sget-object v3, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v3, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v3}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/experimental/channels/ActorCoroutine;->initParentJob(Lkotlinx/coroutines/experimental/Job;)V

    .line 94
    move-object v3, v2

    check-cast v3, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p2, p3, v2, v3}, Lkotlinx/coroutines/experimental/CoroutineStart;->invoke(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 95
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/experimental/channels/ActorJob;

    return-object v3
.end method

.method public static bridge synthetic actor$default(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/channels/ActorJob;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 84
    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 85
    sget-object p2, Lkotlinx/coroutines/experimental/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/experimental/channels/ActorKt;->actor(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/channels/ActorJob;

    move-result-object p0

    return-object p0
.end method
