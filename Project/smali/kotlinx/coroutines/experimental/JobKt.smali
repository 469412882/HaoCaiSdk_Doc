.class public final Lkotlinx/coroutines/experimental/JobKt;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0016\u0010\u0007\u001a\u00020\u0008*\u00020\t2\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b\u001a\u0012\u0010\u000c\u001a\u00020\u0008*\u00020\t2\u0006\u0010\r\u001a\u00020\u0008\u001a\u0015\u0010\u000e\u001a\u00020\u000f*\u00020\tH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010\u001a\u0014\u0010\u0011\u001a\u00020\u0008*\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0008H\u0007\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000*\n\u0010\u0013\"\u00020\u00142\u00020\u0014*&\u0010\u0015\"\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0012\u0004\u0012\u00020\u000f0\u00162\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0012\u0004\u0012\u00020\u000f0\u0016*8\u0008\u0007\u0010\u0018\"\u00020\u00192\u00020\u0019B*\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u001c\u0008\u001d\u0012\u0018\u0008\u000bB\u0014\u0008\u001e\u0012\u0006\u0008\u001f\u0012\u0002\u0008\u000c\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(!\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\""
    }
    d2 = {
        "ALREADY_SELECTED",
        "",
        "getALREADY_SELECTED",
        "()Ljava/lang/Object;",
        "EmptyActive",
        "Lkotlinx/coroutines/experimental/Empty;",
        "EmptyNew",
        "cancelFutureOnCompletion",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "Lkotlinx/coroutines/experimental/Job;",
        "future",
        "Ljava/util/concurrent/Future;",
        "disposeOnCompletion",
        "handle",
        "join",
        "",
        "(Lkotlinx/coroutines/experimental/Job;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "unregisterOnCompletion",
        "registration",
        "CancellationException",
        "Ljava/util/concurrent/CancellationException;",
        "CompletionHandler",
        "Lkotlin/Function1;",
        "",
        "EmptyRegistration",
        "Lkotlinx/coroutines/experimental/NonDisposableHandle;",
        "Lkotlin/Deprecated;",
        "message",
        "Replace with `NonDisposableHandle`",
        "replaceWith",
        "Lkotlin/ReplaceWith;",
        "imports",
        "expression",
        "NonDisposableHandle",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field private static final ALREADY_SELECTED:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EmptyActive:Lkotlinx/coroutines/experimental/Empty;

.field private static final EmptyNew:Lkotlinx/coroutines/experimental/Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 771
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "ALREADY_SELECTED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/JobKt;->ALREADY_SELECTED:Ljava/lang/Object;

    .line 773
    new-instance v0, Lkotlinx/coroutines/experimental/Empty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/Empty;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/experimental/JobKt;->EmptyNew:Lkotlinx/coroutines/experimental/Empty;

    .line 774
    new-instance v0, Lkotlinx/coroutines/experimental/Empty;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/Empty;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/experimental/JobKt;->EmptyActive:Lkotlinx/coroutines/experimental/Empty;

    return-void
.end method

.method public static synthetic EmptyRegistration$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Replace with `NonDisposableHandle`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "NonDisposableHandle"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final synthetic access$getEmptyActive$p()Lkotlinx/coroutines/experimental/Empty;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/experimental/JobKt;->EmptyActive:Lkotlinx/coroutines/experimental/Empty;

    return-object v0
.end method

.method public static final synthetic access$getEmptyNew$p()Lkotlinx/coroutines/experimental/Empty;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/experimental/JobKt;->EmptyNew:Lkotlinx/coroutines/experimental/Empty;

    return-object v0
.end method

.method public static final cancelFutureOnCompletion(Lkotlinx/coroutines/experimental/Job;Ljava/util/concurrent/Future;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 1
    .param p0, "$receiver"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "future"    # Ljava/util/concurrent/Future;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/Job;",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lkotlinx/coroutines/experimental/DisposableHandle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "future"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v0, Lkotlinx/coroutines/experimental/CancelFutureOnCompletion;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/experimental/CancelFutureOnCompletion;-><init>(Lkotlinx/coroutines/experimental/Job;Ljava/util/concurrent/Future;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/experimental/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v0

    return-object v0
.end method

.method public static final disposeOnCompletion(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 1
    .param p0, "$receiver"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "handle"    # Lkotlinx/coroutines/experimental/DisposableHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v0, Lkotlinx/coroutines/experimental/DisposeOnCompletion;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/experimental/DisposeOnCompletion;-><init>(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/experimental/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v0

    return-object v0
.end method

.method public static final getALREADY_SELECTED()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 771
    sget-object v0, Lkotlinx/coroutines/experimental/JobKt;->ALREADY_SELECTED:Ljava/lang/Object;

    return-object v0
.end method

.method public static final join(Lkotlinx/coroutines/experimental/Job;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/Job;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "`join` is now a member function of `Job`"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-interface {p0, p1}, Lkotlinx/coroutines/experimental/Job;->join(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final unregisterOnCompletion(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 1
    .param p0, "$receiver"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "registration"    # Lkotlinx/coroutines/experimental/DisposableHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Renamed to `disposeOnCompletion`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "disposeOnCompletion(registration)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lkotlinx/coroutines/experimental/DisposeOnCompletion;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/experimental/DisposeOnCompletion;-><init>(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/experimental/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v0

    return-object v0
.end method
