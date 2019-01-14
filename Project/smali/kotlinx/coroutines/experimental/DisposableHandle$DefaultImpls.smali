.class public final Lkotlinx/coroutines/experimental/DisposableHandle$DefaultImpls;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/DisposableHandle;
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
.method public static unregister(Lkotlinx/coroutines/experimental/DisposableHandle;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/DisposableHandle;
    .annotation runtime Lkotlin/Deprecated;
        message = "Replace with `dispose`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "dispose()"
            imports = {}
        .end subannotation
    .end annotation

    .line 192
    invoke-interface {p0}, Lkotlinx/coroutines/experimental/DisposableHandle;->dispose()V

    return-void
.end method
