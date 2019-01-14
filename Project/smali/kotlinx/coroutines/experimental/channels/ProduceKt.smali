.class public final Lkotlinx/coroutines/experimental/channels/ProduceKt;
.super Ljava/lang/Object;
.source "Produce.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/experimental/channels/ProduceKt\n*L\n1#1,114:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a]\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062-\u0010\u0007\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0008\u00a2\u0006\u0002\u0008\rH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001a[\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062-\u0010\u0007\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0008\u00a2\u0006\u0002\u0008\r\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e*J\u0008\u0007\u0010\u0010\u001a\u0004\u0008\u0000\u0010\u0002\"\u0008\u0012\u0004\u0012\u0002H\u00020\t2\u0008\u0012\u0004\u0012\u0002H\u00020\tB*\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u001c\u0008\u0014\u0012\u0018\u0008\u000bB\u0014\u0008\u0015\u0012\u0006\u0008\u0016\u0012\u0002\u0008\u000c\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018*J\u0008\u0007\u0010\u0019\u001a\u0004\u0008\u0000\u0010\u0002\"\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0008\u0012\u0004\u0012\u0002H\u00020\u0001B*\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u001a\u0012\u001c\u0008\u0014\u0012\u0018\u0008\u000bB\u0014\u0008\u0015\u0012\u0006\u0008\u0016\u0012\u0002\u0008\u000c\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u001b\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u001c"
    }
    d2 = {
        "buildChannel",
        "Lkotlinx/coroutines/experimental/channels/ProducerJob;",
        "E",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "capacity",
        "",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/experimental/channels/ProducerScope;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/channels/ProducerJob;",
        "produce",
        "ChannelBuilder",
        "Lkotlin/Deprecated;",
        "message",
        "Renamed to `ProducerScope`",
        "replaceWith",
        "Lkotlin/ReplaceWith;",
        "imports",
        "expression",
        "ProducerScope",
        "ChannelJob",
        "Renamed to `ProducerJob`",
        "ProducerJob",
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
.method public static synthetic ChannelBuilder$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Renamed to `ProducerScope`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "ProducerScope"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static synthetic ChannelJob$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Renamed to `ProducerJob`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "ProducerJob"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final buildChannel(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/channels/ProducerJob;
    .locals 1
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "capacity"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
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
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/channels/ProducerScope<",
            "-TE;>;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/experimental/channels/ProducerJob<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Renamed to `produce`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "produce(context, capacity, block)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/ProduceKt;->produce(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/channels/ProducerJob;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic buildChannel$default(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/channels/ProducerJob;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Renamed to `produce`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "produce(context, capacity, block)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 107
    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/ProduceKt;->buildChannel(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/channels/ProducerJob;

    move-result-object p0

    return-object p0
.end method

.method public static final produce(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/channels/ProducerJob;
    .locals 5
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "capacity"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
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
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/experimental/channels/ProducerScope<",
            "-TE;>;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/experimental/channels/ProducerJob<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lkotlinx/coroutines/experimental/channels/Channel;->Factory:Lkotlinx/coroutines/experimental/channels/Channel$Factory;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/experimental/channels/Channel$Factory;->invoke(I)Lkotlinx/coroutines/experimental/channels/Channel;

    move-result-object v0

    .line 95
    .local v0, "channel":Lkotlinx/coroutines/experimental/channels/Channel;
    new-instance v1, Lkotlinx/coroutines/experimental/channels/ProducerCoroutine;

    invoke-static {p0}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->newCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/experimental/channels/ProducerCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/channels/Channel;)V

    move-object v2, v1

    .line 95
    .local v2, "$receiver":Lkotlinx/coroutines/experimental/channels/ProducerCoroutine;
    const/4 v3, 0x0

    .line 96
    .local v3, "$i$a$1$apply":I
    sget-object v4, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v4, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v4}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {v2, v4}, Lkotlinx/coroutines/experimental/channels/ProducerCoroutine;->initParentJob(Lkotlinx/coroutines/experimental/Job;)V

    .line 97
    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/experimental/Continuation;

    invoke-static {p2, v2, v4}, Lkotlin/coroutines/experimental/CoroutinesKt;->startCoroutine(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 98
    .end local v2    # "$receiver":Lkotlinx/coroutines/experimental/channels/ProducerCoroutine;
    .end local v3    # "$i$a$1$apply":I
    nop

    .line 95
    check-cast v1, Lkotlinx/coroutines/experimental/channels/ProducerJob;

    return-object v1
.end method

.method public static bridge synthetic produce$default(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/channels/ProducerJob;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 91
    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/ProduceKt;->produce(Lkotlin/coroutines/experimental/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/channels/ProducerJob;

    move-result-object p0

    return-object p0
.end method
