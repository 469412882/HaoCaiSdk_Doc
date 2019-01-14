.class public final Lkotlinx/coroutines/experimental/selects/SelectBuilder$DefaultImpls;
.super Ljava/lang/Object;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/selects/SelectBuilder;
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
.method public static bridge synthetic onLock$default(Lkotlinx/coroutines/experimental/selects/SelectBuilder;Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-eqz p5, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onLock"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_1

    .line 81
    const/4 p2, 0x0

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/experimental/selects/SelectBuilder;->onLock(Lkotlinx/coroutines/experimental/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static bridge synthetic onTimeout$default(Lkotlinx/coroutines/experimental/selects/SelectBuilder;JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-eqz p6, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onTimeout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 89
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/experimental/selects/SelectBuilder;->onTimeout(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
