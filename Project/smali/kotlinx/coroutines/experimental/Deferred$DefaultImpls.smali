.class public final Lkotlinx/coroutines/experimental/Deferred$DefaultImpls;
.super Ljava/lang/Object;
.source "Deferred.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/Deferred;
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
.method public static isComputing(Lkotlinx/coroutines/experimental/Deferred;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/Deferred<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 96
    invoke-interface {p0}, Lkotlinx/coroutines/experimental/Deferred;->isActive()Z

    move-result v0

    return v0
.end method

.method public static synthetic isComputing$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use `isActive`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "isActive"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static plus(Lkotlinx/coroutines/experimental/Deferred;Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/Job;
    .locals 1
    .param p0    # Lkotlinx/coroutines/experimental/Deferred;
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
            "Lkotlinx/coroutines/experimental/Job;",
            ")",
            "Lkotlinx/coroutines/experimental/Job;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    invoke-static {v0, p1}, Lkotlinx/coroutines/experimental/Job$DefaultImpls;->plus(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/Job;)Lkotlinx/coroutines/experimental/Job;

    move-result-object v0

    return-object v0
.end method
