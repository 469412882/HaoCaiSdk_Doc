.class final Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CenterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/google/zxing/qrcode/detector/FinderPattern;",
        ">;"
    }
.end annotation


# instance fields
.field private final average:F


# direct methods
.method private constructor <init>(F)V
    .locals 0
    .param p1, "f"    # F

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    .line 667
    return-void
.end method

.method synthetic constructor <init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;

    .line 663
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(F)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I
    .locals 3
    .param p1, "center1"    # Lcom/google/zxing/qrcode/detector/FinderPattern;
    .param p2, "center2"    # Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 670
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 671
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    iget v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 672
    .local v0, "dA":F
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v1

    iget v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 673
    .local v1, "dB":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, -0x1

    return v2

    .line 675
    .end local v0    # "dA":F
    .end local v1    # "dB":F
    :cond_2
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 663
    check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I

    move-result p1

    return p1
.end method
