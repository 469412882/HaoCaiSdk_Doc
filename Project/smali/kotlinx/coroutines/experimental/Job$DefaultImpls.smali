.class public final Lkotlinx/coroutines/experimental/Job$DefaultImpls;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/Job;
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
.method public static bridge synthetic cancel$default(Lkotlinx/coroutines/experimental/Job;Ljava/lang/Throwable;ILjava/lang/Object;)Z
    .locals 0

    if-eqz p3, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cancel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 143
    const/4 p1, 0x0

    check-cast p1, Ljava/lang/Throwable;

    :cond_1
    invoke-interface {p0, p1}, Lkotlinx/coroutines/experimental/Job;->cancel(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static plus(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/Job;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "other"    # Lkotlinx/coroutines/experimental/Job;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    return-object p1
.end method
