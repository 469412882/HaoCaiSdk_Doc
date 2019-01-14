.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;,
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    }
.end annotation


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 48
    new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    .line 49
    return-void
.end method

.method private correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;
    .locals 9
    .param p1, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p3, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p4, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "dimension"    # I

    .line 273
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p5

    div-float/2addr v0, v1

    .line 274
    .local v0, "corr":F
    invoke-static {p3, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    .line 275
    .local v1, "norm":I
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 276
    .local v2, "cos":F
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 278
    .local v3, "sin":F
    new-instance v4, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    mul-float v6, v0, v2

    add-float/2addr v5, v6

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    mul-float v7, v0, v3

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 280
    .local v4, "c1":Lcom/google/zxing/ResultPoint;
    invoke-static {p1, p3}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p5

    div-float/2addr v5, v6

    .line 281
    .end local v0    # "corr":F
    .local v5, "corr":F
    invoke-static {p2, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    .line 282
    .end local v1    # "norm":I
    .local v0, "norm":I
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v1, v6

    int-to-float v6, v0

    div-float/2addr v1, v6

    .line 283
    .end local v2    # "cos":F
    .local v1, "cos":F
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float/2addr v2, v6

    int-to-float v6, v0

    div-float/2addr v2, v6

    .line 285
    .end local v3    # "sin":F
    .local v2, "sin":F
    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    mul-float v7, v5, v1

    add-float/2addr v6, v7

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    mul-float v8, v5, v2

    add-float/2addr v7, v8

    invoke-direct {v3, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 287
    .local v3, "c2":Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 288
    invoke-direct {p0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 289
    return-object v3

    .line 291
    :cond_0
    const/4 v6, 0x0

    return-object v6

    .line 293
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 294
    return-object v4

    .line 297
    :cond_2
    invoke-direct {p0, p3, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v6

    .line 298
    invoke-direct {p0, p2, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v7

    sub-int/2addr v6, v7

    .line 297
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 299
    .local v6, "l1":I
    invoke-direct {p0, p3, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v7

    .line 300
    invoke-direct {p0, p2, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v8

    sub-int/2addr v7, v8

    .line 299
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 302
    .local v7, "l2":I
    if-gt v6, v7, :cond_3

    return-object v4

    :cond_3
    return-object v3
.end method

.method private correctTopRightRectangular(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/ResultPoint;
    .locals 9
    .param p1, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p3, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p4, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "dimensionTop"    # I
    .param p6, "dimensionRight"    # I

    .line 227
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p5

    div-float/2addr v0, v1

    .line 228
    .local v0, "corr":F
    invoke-static {p3, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    .line 229
    .local v1, "norm":I
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 230
    .local v2, "cos":F
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 232
    .local v3, "sin":F
    new-instance v4, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    mul-float v6, v0, v2

    add-float/2addr v5, v6

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    mul-float v7, v0, v3

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 234
    .local v4, "c1":Lcom/google/zxing/ResultPoint;
    invoke-static {p1, p3}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p6

    div-float/2addr v5, v6

    .line 235
    .end local v0    # "corr":F
    .local v5, "corr":F
    invoke-static {p2, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    .line 236
    .end local v1    # "norm":I
    .local v0, "norm":I
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v1, v6

    int-to-float v6, v0

    div-float/2addr v1, v6

    .line 237
    .end local v2    # "cos":F
    .local v1, "cos":F
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float/2addr v2, v6

    int-to-float v6, v0

    div-float/2addr v2, v6

    .line 239
    .end local v3    # "sin":F
    .local v2, "sin":F
    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    mul-float v7, v5, v1

    add-float/2addr v6, v7

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    mul-float v8, v5, v2

    add-float/2addr v7, v8

    invoke-direct {v3, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 241
    .local v3, "c2":Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 242
    invoke-direct {p0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 243
    return-object v3

    .line 245
    :cond_0
    const/4 v6, 0x0

    return-object v6

    .line 247
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 248
    return-object v4

    .line 251
    :cond_2
    invoke-direct {p0, p3, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v6

    sub-int v6, p5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 252
    invoke-direct {p0, p2, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v7

    sub-int v7, p6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 253
    .local v6, "l1":I
    invoke-direct {p0, p3, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v7

    sub-int v7, p5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 254
    invoke-direct {p0, p2, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v8

    sub-int v8, p6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 256
    .local v7, "l2":I
    if-gt v6, v7, :cond_3

    .line 257
    return-object v4

    .line 260
    :cond_3
    return-object v3
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 1
    .param p0, "a"    # Lcom/google/zxing/ResultPoint;
    .param p1, "b"    # Lcom/google/zxing/ResultPoint;

    .line 310
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    return v0
.end method

.method private static increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V
    .locals 3
    .param p1, "key"    # Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultPoint;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/zxing/ResultPoint;",
            ")V"
        }
    .end annotation

    .line 317
    .local p0, "table":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 318
    .local v0, "value":Ljava/lang/Integer;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 3
    .param p1, "p"    # Lcom/google/zxing/ResultPoint;

    .line 306
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .locals 22
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "dimensionX"    # I
    .param p6, "dimensionY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move/from16 v15, p5

    .line 329
    move/from16 v14, p6

    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    .line 331
    int-to-float v1, v15

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v6, v1, v2

    int-to-float v1, v15

    sub-float v8, v1, v2

    int-to-float v1, v14

    sub-float v9, v1, v2

    int-to-float v1, v14

    sub-float v11, v1, v2

    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    .line 344
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    .line 345
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    .line 346
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    .line 347
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    .line 348
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    .line 349
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v21

    .line 331
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    move-object/from16 v1, p0

    move v2, v15

    move v3, v14

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    invoke-virtual/range {v0 .. v19}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method private transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .locals 18
    .param p1, "from"    # Lcom/google/zxing/ResultPoint;
    .param p2, "to"    # Lcom/google/zxing/ResultPoint;

    move-object/from16 v0, p0

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 358
    .local v1, "fromX":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 359
    .local v2, "fromY":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 360
    .local v3, "toX":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    move v6, v5

    .line 361
    .local v6, "toY":I
    move v6, v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v7, v3, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v7, v5

    .line 362
    .local v7, "steep":Z
    move v7, v4

    if-eqz v4, :cond_1

    .line 363
    move v4, v1

    .line 364
    .local v4, "temp":I
    move v1, v2

    .line 365
    move v2, v4

    .line 366
    move v4, v3

    .line 367
    move v3, v6

    .line 368
    move v6, v4

    .line 371
    .end local v4    # "temp":I
    :cond_1
    sub-int v4, v3, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 372
    .local v4, "dx":I
    sub-int v9, v6, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 373
    .local v9, "dy":I
    neg-int v10, v4

    div-int/lit8 v10, v10, 0x2

    .line 374
    .local v10, "error":I
    const/4 v11, -0x1

    if-ge v2, v6, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, -0x1

    .line 375
    .local v12, "ystep":I
    :goto_1
    if-ge v1, v3, :cond_3

    const/4 v11, 0x1

    nop

    :cond_3
    move v8, v11

    .line 376
    .local v8, "xstep":I
    const/4 v11, 0x0

    .line 377
    .local v11, "transitions":I
    iget-object v13, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz v7, :cond_4

    move v14, v2

    goto :goto_2

    :cond_4
    move v14, v1

    :goto_2
    if-eqz v7, :cond_5

    move v15, v1

    goto :goto_3

    :cond_5
    move v15, v2

    :goto_3
    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    .line 378
    .local v13, "inBlack":Z
    move v14, v1

    .line 378
    .local v14, "x":I
    move v5, v2

    move v15, v10

    const/4 v10, 0x0

    .line 378
    .local v5, "y":I
    .local v10, "isBlack":Z
    .local v15, "error":I
    :goto_4
    if-eq v14, v3, :cond_a

    .line 379
    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 379
    .end local v1    # "fromX":I
    .local v16, "fromX":I
    if-eqz v7, :cond_6

    move v0, v5

    goto :goto_5

    :cond_6
    move v0, v14

    :goto_5
    if-eqz v7, :cond_7

    move/from16 v17, v2

    move v2, v14

    goto :goto_6

    :cond_7
    move/from16 v17, v2

    move v2, v5

    .line 379
    .end local v2    # "fromY":I
    .local v17, "fromY":I
    :goto_6
    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    move v1, v10

    .line 380
    .end local v10    # "isBlack":Z
    .local v1, "isBlack":Z
    move v10, v0

    .line 380
    .end local v1    # "isBlack":Z
    .restart local v10    # "isBlack":Z
    if-eq v0, v13, :cond_8

    .line 381
    add-int/lit8 v11, v11, 0x1

    .line 382
    move v0, v10

    .line 384
    .end local v13    # "inBlack":Z
    .local v0, "inBlack":Z
    move v13, v0

    .line 384
    .end local v0    # "inBlack":Z
    .restart local v13    # "inBlack":Z
    :cond_8
    add-int v0, v15, v9

    .line 385
    move v15, v0

    if-lez v0, :cond_9

    .line 386
    if-eq v5, v6, :cond_b

    .line 389
    add-int/2addr v5, v12

    .line 390
    sub-int/2addr v15, v4

    .line 378
    :cond_9
    add-int/2addr v14, v8

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v0, p0

    goto :goto_4

    .line 393
    .end local v5    # "y":I
    .end local v10    # "isBlack":Z
    .end local v14    # "x":I
    .end local v16    # "fromX":I
    .end local v17    # "fromY":I
    .local v1, "fromX":I
    .restart local v2    # "fromY":I
    :cond_a
    move/from16 v16, v1

    move/from16 v17, v2

    .line 393
    .end local v1    # "fromX":I
    .end local v2    # "fromY":I
    .restart local v16    # "fromX":I
    .restart local v17    # "fromY":I
    :cond_b
    new-instance v0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-direct {v0, v2, v5, v11, v1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;ILcom/google/zxing/datamatrix/detector/Detector$1;)V

    return-object v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v7, p0

    const/4 v0, 0x0

    .line 59
    .local v0, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    iget-object v1, v7, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-virtual {v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 60
    move-object v8, v1

    .line 60
    .end local v0    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .local v8, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v9, 0x0

    aget-object v10, v1, v9

    .line 61
    .local v10, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v11, 0x1

    aget-object v12, v8, v11

    .line 62
    .local v12, "pointB":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x2

    aget-object v14, v8, v13

    .line 63
    .local v14, "pointC":Lcom/google/zxing/ResultPoint;
    const/4 v15, 0x3

    aget-object v6, v8, v15

    .line 68
    .local v6, "pointD":Lcom/google/zxing/ResultPoint;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move-object v1, v4

    .line 69
    .local v1, "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    move-object v3, v0

    .line 69
    .end local v1    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .local v3, "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    invoke-direct {v7, v10, v12}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-direct {v7, v10, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {v7, v12, v6}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-direct {v7, v14, v6}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;

    invoke-direct {v0, v4}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 78
    .local v2, "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 82
    .local v1, "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v4

    .line 83
    .local v16, "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    move-object/from16 v17, v0

    .line 83
    .end local v16    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .local v17, "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 84
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object/from16 v4, v17

    invoke-static {v4, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 85
    .end local v17    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .local v4, "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 86
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "maybeTopLeft":Lcom/google/zxing/ResultPoint;
    const/16 v16, 0x0

    .line 90
    .local v16, "bottomLeft":Lcom/google/zxing/ResultPoint;
    const/16 v17, 0x0

    .line 91
    .local v17, "maybeBottomRight":Lcom/google/zxing/ResultPoint;
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v20, v16

    move-object/from16 v21, v17

    const/16 v16, 0x0

    move-object/from16 v17, v0

    const/4 v0, 0x0

    .line 91
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .local v16, "value":Ljava/lang/Integer;
    .local v17, "maybeTopLeft":Lcom/google/zxing/ResultPoint;
    .local v20, "bottomLeft":Lcom/google/zxing/ResultPoint;
    .local v21, "maybeBottomRight":Lcom/google/zxing/ResultPoint;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v11, v22

    check-cast v11, Ljava/util/Map$Entry;

    .line 92
    move-object v0, v11

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/ResultPoint;

    .line 93
    .local v11, "point":Lcom/google/zxing/ResultPoint;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v9, v22

    check-cast v9, Ljava/lang/Integer;

    .line 94
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v13, :cond_0

    .line 95
    move-object/from16 v20, v11

    .line 91
    .end local v11    # "point":Lcom/google/zxing/ResultPoint;
    :goto_1
    const/4 v9, 0x0

    const/4 v11, 0x1

    goto :goto_0

    .line 98
    .restart local v11    # "point":Lcom/google/zxing/ResultPoint;
    :cond_0
    if-nez v17, :cond_1

    .line 99
    move-object/from16 v17, v11

    goto :goto_1

    .line 101
    :cond_1
    move-object/from16 v21, v11

    .line 104
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v11    # "point":Lcom/google/zxing/ResultPoint;
    .end local v16    # "value":Ljava/lang/Integer;
    goto :goto_1

    .line 106
    :cond_2
    if-eqz v17, :cond_10

    if-eqz v20, :cond_10

    if-nez v21, :cond_3

    .line 107
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v33, v8

    move-object/from16 v34, v10

    goto/16 :goto_8

    .line 111
    :cond_3
    new-array v0, v15, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    aput-object v17, v0, v9

    const/4 v11, 0x1

    aput-object v20, v0, v11

    aput-object v21, v0, v13

    .line 113
    .local v5, "corners":[Lcom/google/zxing/ResultPoint;
    move-object/from16 v16, v0

    .line 113
    .end local v5    # "corners":[Lcom/google/zxing/ResultPoint;
    .local v16, "corners":[Lcom/google/zxing/ResultPoint;
    invoke-static {v0}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 116
    aget-object v5, v16, v9

    .line 117
    .local v5, "bottomRight":Lcom/google/zxing/ResultPoint;
    aget-object v9, v16, v11

    .line 118
    .end local v20    # "bottomLeft":Lcom/google/zxing/ResultPoint;
    .local v9, "bottomLeft":Lcom/google/zxing/ResultPoint;
    aget-object v11, v16, v13

    .line 122
    .local v11, "topLeft":Lcom/google/zxing/ResultPoint;
    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 123
    move-object v0, v10

    .line 123
    .local v0, "topRight":Lcom/google/zxing/ResultPoint;
    :goto_2
    goto :goto_3

    .line 124
    .end local v0    # "topRight":Lcom/google/zxing/ResultPoint;
    :cond_4
    invoke-interface {v4, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 125
    move-object v0, v12

    goto :goto_2

    .line 126
    :cond_5
    invoke-interface {v4, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 127
    move-object v0, v14

    goto :goto_2

    .line 129
    :cond_6
    move-object v0, v6

    .line 141
    .restart local v0    # "topRight":Lcom/google/zxing/ResultPoint;
    :goto_3
    invoke-direct {v7, v11, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v15

    .line 142
    .local v15, "dimensionTop":I
    invoke-direct {v7, v5, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v13

    .line 144
    .local v13, "dimensionRight":I
    move-object/from16 v30, v0

    and-int/lit8 v0, v15, 0x1

    .line 144
    .end local v0    # "topRight":Lcom/google/zxing/ResultPoint;
    .local v30, "topRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v31, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 146
    .end local v1    # "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .local v31, "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    add-int/lit8 v15, v15, 0x1

    .line 148
    :cond_7
    const/4 v0, 0x2

    add-int/2addr v15, v0

    .line 150
    and-int/lit8 v0, v13, 0x1

    if-ne v0, v1, :cond_8

    .line 152
    add-int/lit8 v13, v13, 0x1

    .line 154
    :cond_8
    const/4 v0, 0x2

    add-int/2addr v13, v0

    .line 162
    mul-int/lit8 v0, v15, 0x4

    mul-int/lit8 v1, v13, 0x7

    if-ge v0, v1, :cond_c

    mul-int/lit8 v0, v13, 0x4

    mul-int/lit8 v1, v15, 0x7

    if-lt v0, v1, :cond_9

    .line 165
    move-object/from16 v32, v3

    move-object/from16 v18, v4

    move-object/from16 v33, v8

    move-object/from16 v34, v10

    move-object/from16 v22, v30

    move-object/from16 v30, v31

    const/4 v10, 0x4

    const/16 v23, 0x0

    move-object/from16 v31, v2

    move-object v8, v5

    goto/16 :goto_5

    .line 189
    :cond_9
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 191
    .local v20, "dimension":I
    move-object/from16 v22, v30

    move-object v0, v7

    .line 191
    .end local v30    # "topRight":Lcom/google/zxing/ResultPoint;
    .local v22, "topRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v30, v31

    move-object v1, v9

    .line 191
    .end local v31    # "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .local v30, "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    move-object/from16 v31, v2

    move-object v2, v5

    .line 191
    .end local v2    # "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .local v31, "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    move-object/from16 v32, v3

    move-object v3, v11

    .line 191
    .end local v3    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .local v32, "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    move-object/from16 v18, v4

    const/16 v23, 0x0

    move-object/from16 v4, v22

    .line 191
    .end local v4    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .local v18, "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    move-object/from16 v33, v8

    move-object/from16 v34, v10

    const/4 v10, 0x4

    move-object v8, v5

    move/from16 v5, v20

    .line 191
    .end local v5    # "bottomRight":Lcom/google/zxing/ResultPoint;
    .end local v10    # "pointA":Lcom/google/zxing/ResultPoint;
    .local v8, "bottomRight":Lcom/google/zxing/ResultPoint;
    .local v33, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .local v34, "pointA":Lcom/google/zxing/ResultPoint;
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object/from16 v1, v23

    .line 192
    .local v1, "correctedTopRight":Lcom/google/zxing/ResultPoint;
    move-object v1, v0

    if-nez v0, :cond_a

    .line 193
    move-object/from16 v0, v22

    .line 193
    .end local v1    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .local v0, "correctedTopRight":Lcom/google/zxing/ResultPoint;
    goto :goto_4

    .line 197
    .end local v0    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .restart local v1    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    :cond_a
    move-object v0, v1

    .line 197
    .end local v1    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .restart local v0    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    :goto_4
    invoke-direct {v7, v11, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    .line 198
    invoke-direct {v7, v8, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v2

    .line 197
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 199
    .local v1, "dimensionCorrected":I
    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 200
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v2, :cond_b

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 204
    :cond_b
    iget-object v2, v7, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v23, v2

    move-object/from16 v24, v11

    move-object/from16 v25, v9

    move-object/from16 v26, v8

    move-object/from16 v27, v0

    move/from16 v28, v1

    move/from16 v29, v1

    invoke-static/range {v23 .. v29}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 204
    .end local v1    # "dimensionCorrected":I
    .end local v20    # "dimension":I
    move-object/from16 v19, v6

    goto/16 :goto_7

    .line 165
    .end local v0    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .end local v18    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v22    # "topRight":Lcom/google/zxing/ResultPoint;
    .end local v32    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .end local v33    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .end local v34    # "pointA":Lcom/google/zxing/ResultPoint;
    .restart local v2    # "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .restart local v3    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .restart local v4    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .restart local v5    # "bottomRight":Lcom/google/zxing/ResultPoint;
    .local v8, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v10    # "pointA":Lcom/google/zxing/ResultPoint;
    .local v30, "topRight":Lcom/google/zxing/ResultPoint;
    .local v31, "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    :cond_c
    move-object/from16 v32, v3

    move-object/from16 v18, v4

    move-object/from16 v33, v8

    move-object/from16 v34, v10

    move-object/from16 v22, v30

    move-object/from16 v30, v31

    const/4 v10, 0x4

    const/16 v23, 0x0

    move-object/from16 v31, v2

    move-object v8, v5

    .line 166
    .end local v2    # "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .end local v3    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .end local v4    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v5    # "bottomRight":Lcom/google/zxing/ResultPoint;
    .end local v10    # "pointA":Lcom/google/zxing/ResultPoint;
    .local v8, "bottomRight":Lcom/google/zxing/ResultPoint;
    .restart local v18    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .restart local v22    # "topRight":Lcom/google/zxing/ResultPoint;
    .local v30, "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .local v31, "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .restart local v32    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .restart local v33    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v34    # "pointA":Lcom/google/zxing/ResultPoint;
    :goto_5
    move-object v0, v7

    move-object v1, v9

    move-object v2, v8

    move-object v3, v11

    move-object/from16 v4, v22

    move v5, v15

    move-object/from16 v19, v6

    move v6, v13

    .line 166
    .end local v6    # "pointD":Lcom/google/zxing/ResultPoint;
    .local v19, "pointD":Lcom/google/zxing/ResultPoint;
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRightRectangular(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object/from16 v1, v23

    .line 167
    .local v1, "correctedTopRight":Lcom/google/zxing/ResultPoint;
    move-object v1, v0

    if-nez v0, :cond_d

    .line 168
    move-object/from16 v0, v22

    .line 168
    .end local v1    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .restart local v0    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    goto :goto_6

    .line 171
    .end local v0    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .restart local v1    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    :cond_d
    move-object v0, v1

    .line 171
    .end local v1    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .restart local v0    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    :goto_6
    invoke-direct {v7, v11, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    .line 172
    .end local v15    # "dimensionTop":I
    .local v1, "dimensionTop":I
    invoke-direct {v7, v8, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v2

    .line 174
    .end local v13    # "dimensionRight":I
    .local v2, "dimensionRight":I
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 179
    :cond_e
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_f

    .line 181
    add-int/lit8 v2, v2, 0x1

    .line 184
    :cond_f
    iget-object v3, v7, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v23, v3

    move-object/from16 v24, v11

    move-object/from16 v25, v9

    move-object/from16 v26, v8

    move-object/from16 v27, v0

    move/from16 v28, v1

    move/from16 v29, v2

    invoke-static/range {v23 .. v29}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    .line 204
    .local v3, "bits":Lcom/google/zxing/common/BitMatrix;
    move v15, v1

    move v13, v2

    move-object v1, v3

    .line 213
    .end local v2    # "dimensionRight":I
    .end local v3    # "bits":Lcom/google/zxing/common/BitMatrix;
    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    .restart local v13    # "dimensionRight":I
    .restart local v15    # "dimensionTop":I
    :goto_7
    new-instance v2, Lcom/google/zxing/common/DetectorResult;

    new-array v3, v10, [Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    const/4 v4, 0x1

    aput-object v9, v3, v4

    const/4 v4, 0x2

    aput-object v8, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-direct {v2, v1, v3}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v2

    .line 107
    .end local v0    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .end local v9    # "bottomLeft":Lcom/google/zxing/ResultPoint;
    .end local v11    # "topLeft":Lcom/google/zxing/ResultPoint;
    .end local v13    # "dimensionRight":I
    .end local v15    # "dimensionTop":I
    .end local v16    # "corners":[Lcom/google/zxing/ResultPoint;
    .end local v18    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v19    # "pointD":Lcom/google/zxing/ResultPoint;
    .end local v22    # "topRight":Lcom/google/zxing/ResultPoint;
    .end local v30    # "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .end local v31    # "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .end local v32    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .end local v33    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .end local v34    # "pointA":Lcom/google/zxing/ResultPoint;
    .local v1, "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .local v2, "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .local v3, "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .restart local v4    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .restart local v6    # "pointD":Lcom/google/zxing/ResultPoint;
    .local v8, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v10    # "pointA":Lcom/google/zxing/ResultPoint;
    .local v20, "bottomLeft":Lcom/google/zxing/ResultPoint;
    :cond_10
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v33, v8

    move-object/from16 v34, v10

    .line 107
    .end local v1    # "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .end local v2    # "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .end local v3    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .end local v4    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v6    # "pointD":Lcom/google/zxing/ResultPoint;
    .end local v8    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .end local v10    # "pointA":Lcom/google/zxing/ResultPoint;
    .restart local v18    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .restart local v19    # "pointD":Lcom/google/zxing/ResultPoint;
    .restart local v30    # "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .restart local v31    # "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .restart local v32    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .restart local v33    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v34    # "pointA":Lcom/google/zxing/ResultPoint;
    :goto_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
