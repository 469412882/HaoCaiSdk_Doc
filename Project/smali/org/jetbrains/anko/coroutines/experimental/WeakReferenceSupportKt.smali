.class public final Lorg/jetbrains/anko/coroutines/experimental/WeakReferenceSupportKt;
.super Ljava/lang/Object;
.source "weakReferenceSupport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\u001f\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u0002\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "asReference",
        "Lorg/jetbrains/anko/coroutines/experimental/Ref;",
        "T",
        "",
        "(Ljava/lang/Object;)Lorg/jetbrains/anko/coroutines/experimental/Ref;",
        "anko-coroutines_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# direct methods
.method public static final asReference(Ljava/lang/Object;)Lorg/jetbrains/anko/coroutines/experimental/Ref;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/jetbrains/anko/coroutines/experimental/Ref<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lorg/jetbrains/anko/coroutines/experimental/Ref;

    invoke-direct {v0, p0}, Lorg/jetbrains/anko/coroutines/experimental/Ref;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
