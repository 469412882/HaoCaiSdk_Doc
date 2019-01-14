.class public final Lco/bxvip/tools/partials/PartialKt;
.super Ljava/lang/Object;
.source "Partial.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "partial",
        "Lco/bxvip/tools/partials/Partial;",
        "T",
        "android-support"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public static final partial()Lco/bxvip/tools/partials/Partial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lco/bxvip/tools/partials/Partial<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    new-instance v0, Lco/bxvip/tools/partials/Partial;

    invoke-direct {v0}, Lco/bxvip/tools/partials/Partial;-><init>()V

    return-object v0
.end method
