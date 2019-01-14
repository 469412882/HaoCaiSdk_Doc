.class public Lco/bxvip/tools/SelectorFactory;
.super Ljava/lang/Object;
.source "SelectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/tools/SelectorFactory$GeneralSelector;,
        Lco/bxvip/tools/SelectorFactory$ColorSelector;,
        Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newColorSelector()Lco/bxvip/tools/SelectorFactory$ColorSelector;
    .locals 2

    .line 238
    new-instance v0, Lco/bxvip/tools/SelectorFactory$ColorSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/bxvip/tools/SelectorFactory$ColorSelector;-><init>(Lco/bxvip/tools/SelectorFactory$1;)V

    return-object v0
.end method

.method public static newGeneralSelector()Lco/bxvip/tools/SelectorFactory$GeneralSelector;
    .locals 2

    .line 318
    new-instance v0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/bxvip/tools/SelectorFactory$GeneralSelector;-><init>(Lco/bxvip/tools/SelectorFactory$1;)V

    return-object v0
.end method

.method public static newShapeSelector()Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 2

    .line 47
    new-instance v0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/bxvip/tools/SelectorFactory$ShapeSelector;-><init>(Lco/bxvip/tools/SelectorFactory$1;)V

    return-object v0
.end method
