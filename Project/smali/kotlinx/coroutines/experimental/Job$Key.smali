.class public final Lkotlinx/coroutines/experimental/Job$Key;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
        "Lkotlinx/coroutines/experimental/Job;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0086\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/Job$Key;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Key;",
        "Lkotlinx/coroutines/experimental/Job;",
        "()V",
        "invoke",
        "parent",
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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 65
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/Job$Key;-><init>()V

    return-void
.end method

.method public static bridge synthetic invoke$default(Lkotlinx/coroutines/experimental/Job$Key;Lkotlinx/coroutines/experimental/Job;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 70
    const/4 p1, 0x0

    check-cast p1, Lkotlinx/coroutines/experimental/Job;

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/Job$Key;->invoke(Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/Job;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final invoke(Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/Job;
    .locals 1
    .param p1, "parent"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 70
    new-instance v0, Lkotlinx/coroutines/experimental/JobImpl;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/experimental/JobImpl;-><init>(Lkotlinx/coroutines/experimental/Job;)V

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    return-object v0
.end method
