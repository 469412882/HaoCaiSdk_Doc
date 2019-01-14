.class public final Lkotlinx/coroutines/experimental/EventLoop$Factory;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/EventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.kt\nkotlinx/coroutines/experimental/EventLoop$Factory\n*L\n1#1,202:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0086\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/EventLoop$Factory;",
        "",
        "()V",
        "invoke",
        "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
        "thread",
        "Ljava/lang/Thread;",
        "parentJob",
        "Lkotlinx/coroutines/experimental/Job;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 45
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoop$Factory;-><init>()V

    return-void
.end method

.method public static bridge synthetic invoke$default(Lkotlinx/coroutines/experimental/EventLoop$Factory;Ljava/lang/Thread;Lkotlinx/coroutines/experimental/Job;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string p4, "Thread.currentThread()"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    check-cast p2, Lkotlinx/coroutines/experimental/Job;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/experimental/EventLoop$Factory;->invoke(Ljava/lang/Thread;Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Thread;Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "parentJob"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 60
    .local v0, "$i$a$1$apply":I
    const-string v1, "thread"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v1, Lkotlinx/coroutines/experimental/EventLoopImpl;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/experimental/EventLoopImpl;-><init>(Ljava/lang/Thread;)V

    move-object v2, v1

    .line 61
    .local v2, "$receiver":Lkotlinx/coroutines/experimental/EventLoopImpl;
    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Lkotlinx/coroutines/experimental/EventLoopImpl;->initParentJob(Lkotlinx/coroutines/experimental/Job;)V

    .line 62
    .end local v0    # "$i$a$1$apply":I
    .end local v2    # "$receiver":Lkotlinx/coroutines/experimental/EventLoopImpl;
    :cond_0
    nop

    .line 60
    check-cast v1, Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    .line 62
    return-object v1
.end method
