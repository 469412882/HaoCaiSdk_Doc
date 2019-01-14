.class public final Lkotlinx/coroutines/experimental/sync/Mutex$Factory;
.super Ljava/lang/Object;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/sync/Mutex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0086\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/sync/Mutex$Factory;",
        "",
        "()V",
        "invoke",
        "Lkotlinx/coroutines/experimental/sync/Mutex;",
        "locked",
        "",
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 39
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/sync/Mutex$Factory;-><init>()V

    return-void
.end method

.method public static bridge synthetic invoke$default(Lkotlinx/coroutines/experimental/sync/Mutex$Factory;ZILjava/lang/Object;)Lkotlinx/coroutines/experimental/sync/Mutex;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 44
    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/sync/Mutex$Factory;->invoke(Z)Lkotlinx/coroutines/experimental/sync/Mutex;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final invoke(Z)Lkotlinx/coroutines/experimental/sync/Mutex;
    .locals 1
    .param p1, "locked"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    new-instance v0, Lkotlinx/coroutines/experimental/sync/MutexImpl;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/experimental/sync/MutexImpl;-><init>(Z)V

    check-cast v0, Lkotlinx/coroutines/experimental/sync/Mutex;

    return-object v0
.end method
