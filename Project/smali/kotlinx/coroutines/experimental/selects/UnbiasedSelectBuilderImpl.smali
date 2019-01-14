.class public final Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;
.super Ljava/lang/Object;
.source "SelectUnbiased.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/selects/SelectBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/experimental/selects/SelectBuilder<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectUnbiased.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1477#2,2:100\n*E\n*S KotlinDebug\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl\n*L\n64#1,2:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0013H\u0001J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0001J>\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u001c\u0010\u001b\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u001cH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJD\u0010\u001e\u001a\u00020\t\"\u0004\u0008\u0001\u0010\u001f*\u0008\u0012\u0004\u0012\u0002H\u001f0 2\"\u0010\u001b\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00150!H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\"J2\u0010#\u001a\u00020\t*\u00020$2\u001c\u0010\u001b\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u001cH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%J<\u0010&\u001a\u00020\t*\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010\u00152\u001c\u0010\u001b\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u001cH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010)JD\u0010*\u001a\u00020\t\"\u0004\u0008\u0001\u0010+*\u0008\u0012\u0004\u0012\u0002H+0,2\"\u0010\u001b\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H+\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00150!H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010-JF\u0010.\u001a\u00020\t\"\u0004\u0008\u0001\u0010+*\u0008\u0012\u0004\u0012\u0002H+0,2$\u0010\u001b\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u0001H+\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00150!H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010-JF\u0010/\u001a\u00020\t\"\u0004\u0008\u0001\u0010+*\u0008\u0012\u0004\u0012\u0002H+002\u0006\u00101\u001a\u0002H+2\u001c\u0010\u001b\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u001cH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u00102R-\u0010\u0006\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008`\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u00063"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;",
        "R",
        "Lkotlinx/coroutines/experimental/selects/SelectBuilder;",
        "cont",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlin/coroutines/experimental/Continuation;)V",
        "clauses",
        "Ljava/util/ArrayList;",
        "Lkotlin/Function0;",
        "",
        "Lkotlin/collections/ArrayList;",
        "getClauses",
        "()Ljava/util/ArrayList;",
        "instance",
        "Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;",
        "getInstance",
        "()Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;",
        "handleBuilderException",
        "e",
        "",
        "initSelectResult",
        "",
        "onTimeout",
        "time",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "block",
        "Lkotlin/Function1;",
        "(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V",
        "onAwait",
        "T",
        "Lkotlinx/coroutines/experimental/Deferred;",
        "Lkotlin/Function2;",
        "(Lkotlinx/coroutines/experimental/Deferred;Lkotlin/jvm/functions/Function2;)V",
        "onJoin",
        "Lkotlinx/coroutines/experimental/Job;",
        "(Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function1;)V",
        "onLock",
        "Lkotlinx/coroutines/experimental/sync/Mutex;",
        "owner",
        "(Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "onReceive",
        "E",
        "Lkotlinx/coroutines/experimental/channels/ReceiveChannel;",
        "(Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;)V",
        "onReceiveOrNull",
        "onSend",
        "Lkotlinx/coroutines/experimental/channels/SendChannel;",
        "element",
        "(Lkotlinx/coroutines/experimental/channels/SendChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# instance fields
.field private final clauses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final instance:Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1
    .param p1, "cont"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;)V"
        }
    .end annotation

    const-string v0, "cont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;)V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->instance:Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->clauses:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getClauses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->clauses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getInstance()Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->instance:Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    return-object v0
.end method

.method public final handleBuilderException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->instance:Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final initSelectResult()Ljava/lang/Object;
    .locals 6
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 61
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->instance:Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    nop

    .line 63
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->clauses:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->clauses:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 64
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    move v2, v1

    .line 100
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 100
    .local v1, "$i$a$1$forEach":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 100
    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 64
    .local v5, "it":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "$i$a$1$forEach":I
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lkotlin/jvm/functions/Function0;
    goto :goto_0

    .line 101
    .end local v0    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    :cond_0
    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->instance:Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    nop

    .line 69
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->instance:Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->initSelectResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onAwait(Lkotlinx/coroutines/experimental/Deferred;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/Deferred;
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
            "Lkotlinx/coroutines/experimental/Deferred<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->clauses:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onAwait$1;

    invoke-direct {v1, p0, p1, p2}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onAwait$1;-><init>(Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;Lkotlinx/coroutines/experimental/Deferred;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public onJoin(Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/Job;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->clauses:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onJoin$1;

    invoke-direct {v1, p0, p1, p2}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onJoin$1;-><init>(Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public onLock(Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/sync/Mutex;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "owner"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/sync/Mutex;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->clauses:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onLock$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onLock$1;-><init>(Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public onReceive(Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/channels/ReceiveChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->clauses:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onReceive$1;

    invoke-direct {v1, p0, p1, p2}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onReceive$1;-><init>(Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public onReceiveOrNull(Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/channels/ReceiveChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->clauses:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onReceiveOrNull$1;

    invoke-direct {v1, p0, p1, p2}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onReceiveOrNull$1;-><init>(Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;Lkotlinx/coroutines/experimental/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public onSend(Lkotlinx/coroutines/experimental/channels/SendChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/channels/SendChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/channels/SendChannel<",
            "-TE;>;TE;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->clauses:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onSend$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onSend$1;-><init>(Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;Lkotlinx/coroutines/experimental/channels/SendChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public onTimeout(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->clauses:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    new-instance v7, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;-><init>(Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method
