.class public interface abstract Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "handleException",
        "",
        "context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "exception",
        "",
        "Key",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final Key:Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;

    return-void
.end method


# virtual methods
.method public abstract handleException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V
    .param p1    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
