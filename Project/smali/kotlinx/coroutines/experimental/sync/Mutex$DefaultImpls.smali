.class public final Lkotlinx/coroutines/experimental/sync/Mutex$DefaultImpls;
.super Ljava/lang/Object;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/sync/Mutex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public static bridge synthetic lock$default(Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: lock"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_1

    .line 77
    const/4 p1, 0x0

    :cond_1
    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/experimental/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic tryLock$default(Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 0

    if-eqz p3, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: tryLock"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 58
    const/4 p1, 0x0

    :cond_1
    invoke-interface {p0, p1}, Lkotlinx/coroutines/experimental/sync/Mutex;->tryLock(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic unlock$default(Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    if-eqz p3, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: unlock"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 91
    const/4 p1, 0x0

    :cond_1
    invoke-interface {p0, p1}, Lkotlinx/coroutines/experimental/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-void
.end method
