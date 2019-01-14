.class public final Lkotlinx/coroutines/experimental/android/HandlerContextKt;
.super Ljava/lang/Object;
.source "HandlerContext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0005\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "UI",
        "Lkotlinx/coroutines/experimental/android/HandlerContext;",
        "getUI",
        "()Lkotlinx/coroutines/experimental/android/HandlerContext;",
        "asCoroutineDispatcher",
        "Landroid/os/Handler;",
        "kotlinx-coroutines-android"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field private static final UI:Lkotlinx/coroutines/experimental/android/HandlerContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lkotlinx/coroutines/experimental/android/HandlerContext;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v2, "UI"

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/experimental/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/android/HandlerContextKt;->UI:Lkotlinx/coroutines/experimental/android/HandlerContext;

    return-void
.end method

.method public static final asCoroutineDispatcher(Landroid/os/Handler;)Lkotlinx/coroutines/experimental/android/HandlerContext;
    .locals 3
    .param p0, "$receiver"    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lkotlinx/coroutines/experimental/android/HandlerContext;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lkotlinx/coroutines/experimental/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final getUI()Lkotlinx/coroutines/experimental/android/HandlerContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    sget-object v0, Lkotlinx/coroutines/experimental/android/HandlerContextKt;->UI:Lkotlinx/coroutines/experimental/android/HandlerContext;

    return-object v0
.end method
