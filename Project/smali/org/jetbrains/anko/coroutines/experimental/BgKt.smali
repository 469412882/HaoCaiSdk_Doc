.class public final Lorg/jetbrains/anko/coroutines/experimental/BgKt;
.super Ljava/lang/Object;
.source "bg.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\n0\t\"\u0004\u0008\u0000\u0010\n2\u000e\u0008\u0004\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u000cH\u0086\u0008\"$\u0010\u0000\u001a\u00020\u00018\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "POOL",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "POOL$annotations",
        "()V",
        "getPOOL",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "setPOOL",
        "(Lkotlin/coroutines/experimental/CoroutineContext;)V",
        "bg",
        "Lkotlinx/coroutines/experimental/Deferred;",
        "T",
        "block",
        "Lkotlin/Function0;",
        "anko-coroutines_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# static fields
.field private static POOL:Lkotlin/coroutines/experimental/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const-string v1, "bg"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/experimental/ThreadPoolDispatcherKt;->newFixedThreadPoolContext$default(ILjava/lang/String;Lkotlinx/coroutines/experimental/Job;ILjava/lang/Object;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    sput-object v0, Lorg/jetbrains/anko/coroutines/experimental/BgKt;->POOL:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method

.method private static synthetic POOL$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final bg(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/experimental/Deferred;
    .locals 5
    .param p0, "block"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lkotlinx/coroutines/experimental/Deferred<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 27
    .local v0, "$i$f$bg":I
    const-string v1, "block"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lorg/jetbrains/anko/coroutines/experimental/BgKt;->getPOOL()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    new-instance v2, Lorg/jetbrains/anko/coroutines/experimental/BgKt$bg$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/jetbrains/anko/coroutines/experimental/BgKt$bg$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v3}, Lkotlinx/coroutines/experimental/DeferredKt;->async$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Deferred;

    move-result-object v1

    .line 29
    return-object v1
.end method

.method public static final getPOOL()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    sget-object v0, Lorg/jetbrains/anko/coroutines/experimental/BgKt;->POOL:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object v0
.end method

.method public static final setPOOL(Lkotlin/coroutines/experimental/CoroutineContext;)V
    .locals 1
    .param p0, "<set-?>"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sput-object p0, Lorg/jetbrains/anko/coroutines/experimental/BgKt;->POOL:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method
