.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# static fields
.field private static final EXPECTED_CORNER_BITS:[I


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 49
    return-void
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 4
    .param p0, "a"    # Lcom/google/zxing/ResultPoint;
    .param p1, "b"    # Lcom/google/zxing/ResultPoint;

    .line 562
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .locals 4
    .param p0, "a"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p1, "b"    # Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 558
    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0
.end method

.method private static expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;
    .locals 15
    .param p0, "cornerPoints"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "oldSide"    # F
    .param p2, "newSide"    # F

    .line 528
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p1, v0

    div-float v1, p2, v1

    .line 529
    .local v1, "ratio":F
    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    const/4 v4, 0x2

    aget-object v5, p0, v4

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    .line 530
    .local v3, "dx":F
    aget-object v5, p0, v2

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    aget-object v6, p0, v4

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    .line 531
    .local v5, "dy":F
    aget-object v6, p0, v2

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    aget-object v7, p0, v4

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v0

    .line 532
    .local v6, "centerx":F
    aget-object v7, p0, v2

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    aget-object v8, p0, v4

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v0

    .line 534
    .local v7, "centery":F
    new-instance v8, Lcom/google/zxing/ResultPoint;

    mul-float v9, v1, v3

    add-float/2addr v9, v6

    mul-float v10, v1, v5

    add-float/2addr v10, v7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 535
    .local v8, "result0":Lcom/google/zxing/ResultPoint;
    new-instance v9, Lcom/google/zxing/ResultPoint;

    mul-float v10, v1, v3

    sub-float v10, v6, v10

    mul-float v11, v1, v5

    sub-float v11, v7, v11

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 537
    .local v9, "result2":Lcom/google/zxing/ResultPoint;
    const/4 v10, 0x1

    aget-object v11, p0, v10

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    const/4 v12, 0x3

    aget-object v4, p0, v12

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    sub-float/2addr v11, v4

    .line 538
    .end local v3    # "dx":F
    .local v11, "dx":F
    aget-object v3, p0, v10

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    aget-object v4, p0, v12

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 539
    .end local v5    # "dy":F
    .local v3, "dy":F
    aget-object v4, p0, v10

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    aget-object v5, p0, v12

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v0

    .line 540
    .end local v6    # "centerx":F
    .local v4, "centerx":F
    aget-object v5, p0, v10

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    aget-object v6, p0, v12

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v0

    .line 541
    .end local v7    # "centery":F
    .local v5, "centery":F
    new-instance v0, Lcom/google/zxing/ResultPoint;

    mul-float v6, v1, v11

    add-float/2addr v6, v4

    mul-float v7, v1, v3

    add-float/2addr v7, v5

    invoke-direct {v0, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 542
    .local v0, "result1":Lcom/google/zxing/ResultPoint;
    new-instance v6, Lcom/google/zxing/ResultPoint;

    mul-float v7, v1, v11

    sub-float v7, v4, v7

    mul-float v13, v1, v3

    sub-float v12, v5, v13

    invoke-direct {v6, v7, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 544
    .local v6, "result3":Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    aput-object v8, v7, v2

    aput-object v0, v7, v10

    const/4 v2, 0x2

    aput-object v9, v7, v2

    const/4 v2, 0x3

    aput-object v6, v7, v2

    return-object v7
.end method

.method private extractParameters([Lcom/google/zxing/ResultPoint;)V
    .locals 12
    .param p1, "bullsEyeCorners"    # [Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    aget-object v3, p1, v2

    .line 101
    invoke-direct {p0, v3}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 104
    :cond_0
    iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v4, v4, 0x2

    .line 106
    .local v4, "length":I
    const/4 v5, 0x4

    new-array v6, v5, [I

    aget-object v7, p1, v0

    aget-object v8, p1, v1

    .line 107
    invoke-direct {p0, v7, v8, v4}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v0

    aget-object v7, p1, v1

    aget-object v8, p1, v2

    .line 108
    invoke-direct {p0, v7, v8, v4}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v1

    aget-object v7, p1, v2

    aget-object v8, p1, v3

    .line 109
    invoke-direct {p0, v7, v8, v4}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v2

    aget-object v2, p1, v3

    aget-object v7, p1, v0

    .line 110
    invoke-direct {p0, v2, v7, v4}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v2

    aput v2, v6, v3

    move-object v2, v6

    .line 117
    .local v2, "sides":[I
    invoke-static {v2, v4}, Lcom/google/zxing/aztec/detector/Detector;->getRotation([II)I

    move-result v3

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 120
    const-wide/16 v6, 0x0

    .line 121
    .local v6, "parameterData":J
    nop

    .line 121
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 122
    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/2addr v3, v0

    rem-int/2addr v3, v5

    aget v3, v2, v3

    .line 123
    .local v3, "side":I
    iget-boolean v8, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v8, :cond_1

    .line 125
    const/4 v8, 0x7

    shl-long v8, v6, v8

    .line 126
    shr-int/lit8 v10, v3, 0x1

    and-int/lit8 v10, v10, 0x7f

    int-to-long v10, v10

    add-long v6, v8, v10

    goto :goto_1

    .line 129
    :cond_1
    const/16 v8, 0xa

    shl-long v8, v6, v8

    .line 130
    shr-int/lit8 v10, v3, 0x2

    and-int/lit16 v10, v10, 0x3e0

    shr-int/lit8 v11, v3, 0x1

    and-int/lit8 v11, v11, 0x1f

    add-int/2addr v10, v11

    int-to-long v10, v10

    add-long v6, v8, v10

    .line 121
    .end local v3    # "side":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_2
    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    invoke-static {v6, v7, v0}, Lcom/google/zxing/aztec/detector/Detector;->getCorrectedParameterData(JZ)I

    move-result v0

    .line 138
    .local v0, "correctedData":I
    iget-boolean v3, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v3, :cond_3

    .line 140
    shr-int/lit8 v3, v0, 0x6

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 141
    and-int/lit8 v3, v0, 0x3f

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    return-void

    .line 144
    :cond_3
    shr-int/lit8 v3, v0, 0xb

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 145
    and-int/lit16 v3, v0, 0x7ff

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 147
    return-void

    .line 102
    .end local v0    # "correctedData":I
    .end local v2    # "sides":[I
    .end local v4    # "length":I
    .end local v6    # "parameterData":J
    :cond_4
    :goto_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .locals 19
    .param p1, "pCenter"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 237
    move-object/from16 v1, p1

    .line 238
    .local v1, "pina":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v2, p1

    .line 239
    .local v2, "pinb":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v3, p1

    .line 240
    .local v3, "pinc":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v4, p1

    .line 242
    .local v4, "pind":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/4 v5, 0x1

    .line 244
    .local v5, "color":Z
    const/4 v6, 0x1

    iput v6, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v7, 0x0

    .line 244
    .local v7, "q":F
    :goto_0
    iget v8, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/16 v9, 0x9

    const/4 v11, 0x2

    if-ge v8, v9, :cond_2

    .line 245
    const/4 v8, -0x1

    invoke-direct {v0, v1, v5, v6, v8}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v9

    .line 246
    .local v9, "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {v0, v2, v5, v6, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v12

    .line 247
    .local v12, "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {v0, v3, v5, v8, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v13

    .line 248
    .local v13, "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {v0, v4, v5, v8, v8}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    .line 254
    .local v8, "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    iget v14, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    if-le v14, v11, :cond_0

    .line 255
    invoke-static {v8, v9}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v14

    iget v15, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v15, v15

    mul-float v14, v14, v15

    invoke-static {v4, v1}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v15

    iget v10, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v15, v15, v10

    div-float/2addr v14, v15

    .line 256
    move v7, v14

    float-to-double v14, v14

    const-wide/high16 v17, 0x3fe8000000000000L    # 0.75

    cmpg-double v10, v14, v17

    if-ltz v10, :cond_2

    float-to-double v14, v7

    const-wide/high16 v17, 0x3ff4000000000000L    # 1.25

    cmpl-double v10, v14, v17

    if-gtz v10, :cond_2

    invoke-direct {v0, v9, v12, v13, v8}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 261
    :cond_0
    move-object v1, v9

    .line 262
    move-object v2, v12

    .line 263
    move-object v3, v13

    .line 264
    move-object v4, v8

    .line 266
    if-nez v5, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    move/from16 v5, v16

    .line 244
    .end local v8    # "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v9    # "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v12    # "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v13    # "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    iget v8, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    add-int/2addr v8, v6

    iput v8, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    goto :goto_0

    .line 269
    .end local v7    # "q":F
    :cond_2
    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3

    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v9, 0x7

    if-eq v7, v9, :cond_3

    .line 270
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 273
    :cond_3
    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    iput-boolean v7, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 277
    new-instance v7, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v9

    invoke-direct {v7, v8, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 278
    .local v7, "pinax":Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    invoke-virtual {v2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v9

    invoke-direct {v8, v10, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 279
    .local v8, "pinbx":Lcom/google/zxing/ResultPoint;
    new-instance v10, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v9

    invoke-virtual {v3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v9

    invoke-direct {v10, v12, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 280
    .local v10, "pincx":Lcom/google/zxing/ResultPoint;
    new-instance v12, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v9

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v9

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v9, v12

    .line 284
    .local v9, "pindx":Lcom/google/zxing/ResultPoint;
    const/4 v12, 0x4

    new-array v12, v12, [Lcom/google/zxing/ResultPoint;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    aput-object v8, v12, v6

    aput-object v10, v12, v11

    const/4 v6, 0x3

    aput-object v9, v12, v6

    iget v13, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v13, v6

    int-to-float v6, v13

    iget v13, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v13, v13, 0x2

    int-to-float v11, v13

    invoke-static {v12, v6, v11}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    return-object v6
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 11

    .line 463
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v0

    .line 464
    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 465
    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 466
    nop

    .line 468
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    int-to-float v2, v2

    .line 469
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    int-to-float v3, v3

    .line 471
    iget-object v4, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result p1

    invoke-virtual {v4, v5, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p1

    .line 473
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 474
    const/4 v5, 0x0

    move v6, v3

    const/4 v7, 0x0

    move v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 475
    add-float/2addr v3, v1

    .line 476
    add-float/2addr v6, p2

    .line 477
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eq v8, p1, :cond_0

    .line 478
    add-int/lit8 v7, v7, 0x1

    .line 474
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    :cond_1
    int-to-float p2, v7

    div-float/2addr p2, v0

    .line 484
    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_2

    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 485
    return v5

    .line 488
    :cond_2
    cmpg-float p2, p2, v0

    const/4 v0, 0x1

    if-gtz p2, :cond_3

    const/4 v5, 0x1

    nop

    :cond_3
    if-ne v5, p1, :cond_4

    return v0

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method private static getCorrectedParameterData(JZ)I
    .locals 8
    .param p0, "parameterData"    # J
    .param p2, "compact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 199
    const/4 v1, 0x7

    .line 200
    .local v1, "numCodewords":I
    const/4 v2, 0x2

    .line 200
    .local v2, "numDataCodewords":I
    goto :goto_0

    .line 202
    .end local v1    # "numCodewords":I
    .end local v2    # "numDataCodewords":I
    :cond_0
    const/16 v1, 0xa

    .line 203
    .restart local v1    # "numCodewords":I
    const/4 v2, 0x4

    .line 206
    .restart local v2    # "numDataCodewords":I
    :goto_0
    sub-int v3, v1, v2

    .line 207
    .local v3, "numECCodewords":I
    new-array v4, v1, [I

    .line 208
    .local v4, "parameterWords":[I
    add-int/lit8 v5, v1, -0x1

    .line 208
    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_1

    .line 209
    long-to-int v6, p0

    and-int/lit8 v6, v6, 0xf

    aput v6, v4, v5

    .line 210
    shr-long/2addr p0, v0

    .line 208
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 213
    .end local v5    # "i":I
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v5, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v5, v6}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 214
    .local v0, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    invoke-virtual {v5, v4, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    nop

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "result":I
    const/4 v5, 0x0

    .line 220
    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v2, :cond_2

    .line 221
    shl-int/lit8 v6, v0, 0x4

    aget v7, v4, v5

    add-int v0, v6, v7

    .line 220
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 223
    .end local v5    # "i":I
    :cond_2
    return v0

    .line 215
    .local v0, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    :catch_0
    move-exception v5

    .line 216
    .local v0, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method

.method private getDimension()I
    .locals 3

    .line 566
    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 567
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    return v0

    .line 569
    :cond_0
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    if-gt v0, v1, :cond_1

    .line 570
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    return v0

    .line 572
    :cond_1
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    iget v2, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 3
    .param p1, "init"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p2, "color"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 495
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    add-int/2addr v0, p3

    .line 496
    .local v0, "x":I
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v1

    add-int/2addr v1, p4

    .line 498
    .local v1, "y":I
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 499
    add-int/2addr v0, p3

    .line 500
    add-int/2addr v1, p4

    goto :goto_0

    .line 503
    :cond_0
    sub-int/2addr v0, p3

    .line 504
    sub-int/2addr v1, p4

    .line 506
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_1

    .line 507
    add-int/2addr v0, p3

    goto :goto_1

    .line 509
    :cond_1
    sub-int/2addr v0, p3

    .line 511
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_2

    .line 512
    add-int/2addr v1, p4

    goto :goto_2

    .line 514
    :cond_2
    sub-int/2addr v1, p4

    .line 516
    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v2
.end method

.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 17

    .line 304
    move-object/from16 v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v9, v1, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v8
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v3

    .line 305
    .local v9, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    move-object v9, v8

    :try_start_1
    aget-object v8, v8, v7

    .line 306
    .local v8, "pointA":Lcom/google/zxing/ResultPoint;
    aget-object v10, v9, v6

    .line 307
    .local v10, "pointB":Lcom/google/zxing/ResultPoint;
    aget-object v11, v9, v4

    .line 308
    .local v11, "pointC":Lcom/google/zxing/ResultPoint;
    aget-object v12, v9, v2
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    .end local v9    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    move-object v9, v12

    .line 321
    .local v9, "pointD":Lcom/google/zxing/ResultPoint;
    nop

    .line 319
    move-object v13, v11

    goto :goto_1

    .line 310
    .end local v8    # "pointA":Lcom/google/zxing/ResultPoint;
    .end local v10    # "pointB":Lcom/google/zxing/ResultPoint;
    .end local v11    # "pointC":Lcom/google/zxing/ResultPoint;
    .local v9, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 310
    .end local v9    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    :catch_1
    move-exception v0

    move-object v9, v3

    .line 310
    .local v9, "e":Lcom/google/zxing/NotFoundException;
    :goto_0
    move-object v8, v9

    .line 314
    .end local v9    # "e":Lcom/google/zxing/NotFoundException;
    .local v8, "e":Lcom/google/zxing/NotFoundException;
    iget-object v9, v1, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v9

    div-int/2addr v9, v4

    .line 315
    .local v9, "cx":I
    iget-object v10, v1, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v10

    div-int/2addr v10, v4

    .line 316
    .local v10, "cy":I
    new-instance v11, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v12, v9, 0x7

    add-int/lit8 v13, v10, -0x7

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v1, v11, v7, v6, v5}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 317
    .local v11, "pointA":Lcom/google/zxing/ResultPoint;
    new-instance v12, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v13, v9, 0x7

    add-int/lit8 v14, v10, 0x7

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v1, v12, v7, v6, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v12

    .line 318
    .local v12, "pointB":Lcom/google/zxing/ResultPoint;
    new-instance v13, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v14, v9, -0x7

    add-int/lit8 v15, v10, 0x7

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v1, v13, v7, v5, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v13

    .line 319
    .local v13, "pointC":Lcom/google/zxing/ResultPoint;
    new-instance v14, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v15, v9, -0x7

    add-int/lit8 v2, v10, -0x7

    invoke-direct {v14, v15, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v1, v14, v7, v5, v5}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 319
    .end local v8    # "e":Lcom/google/zxing/NotFoundException;
    .end local v9    # "cx":I
    .end local v10    # "cy":I
    move-object v8, v11

    move-object v10, v12

    .line 319
    .end local v11    # "pointA":Lcom/google/zxing/ResultPoint;
    .end local v12    # "pointB":Lcom/google/zxing/ResultPoint;
    .local v8, "pointA":Lcom/google/zxing/ResultPoint;
    .local v9, "pointD":Lcom/google/zxing/ResultPoint;
    .local v10, "pointB":Lcom/google/zxing/ResultPoint;
    :goto_1
    move-object v2, v9

    .line 324
    .end local v9    # "pointD":Lcom/google/zxing/ResultPoint;
    .local v2, "pointD":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    add-float/2addr v9, v11

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    add-float/2addr v9, v11

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    add-float/2addr v9, v11

    const/high16 v11, 0x40800000    # 4.0f

    div-float/2addr v9, v11

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    .line 325
    .local v9, "cx":I
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    add-float/2addr v12, v14

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    add-float/2addr v12, v14

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    add-float/2addr v12, v14

    div-float/2addr v12, v11

    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v12

    .line 331
    .local v12, "cy":I
    :try_start_2
    new-instance v14, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v15, v1, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/16 v11, 0xf

    invoke-direct {v14, v15, v11, v9, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v14}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 332
    .local v3, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    move-object v3, v11

    aget-object v11, v11, v7

    move-object v8, v11

    .line 333
    aget-object v11, v3, v6

    move-object v10, v11

    .line 334
    aget-object v4, v3, v4

    move-object v13, v4

    .line 335
    const/4 v4, 0x3

    aget-object v4, v3, v4
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v4

    .line 343
    .end local v3    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    goto :goto_2

    .line 336
    .restart local v3    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    :catch_2
    move-exception v0

    .line 339
    .local v3, "e":Lcom/google/zxing/NotFoundException;
    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v11, v9, 0x7

    add-int/lit8 v14, v12, -0x7

    invoke-direct {v4, v11, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v1, v4, v7, v6, v5}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    .line 340
    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v11, v9, 0x7

    add-int/lit8 v14, v12, 0x7

    invoke-direct {v4, v11, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v1, v4, v7, v6, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v10

    .line 341
    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v11, v9, -0x7

    add-int/lit8 v14, v12, 0x7

    invoke-direct {v4, v11, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v1, v4, v7, v5, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v13

    .line 342
    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v6, v9, -0x7

    add-int/lit8 v11, v12, -0x7

    invoke-direct {v4, v6, v11}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {v1, v4, v7, v5, v5}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 346
    .end local v3    # "e":Lcom/google/zxing/NotFoundException;
    :goto_2
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v3

    .line 347
    .end local v9    # "cx":I
    .local v3, "cx":I
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v4

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    .line 349
    .end local v12    # "cy":I
    .local v4, "cy":I
    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v5, v3, v4}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v5
.end method

.method private getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 2
    .param p1, "bullsEyeCorners"    # [Lcom/google/zxing/ResultPoint;

    .line 359
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0
.end method

.method private static getRotation([II)I
    .locals 7
    .param p0, "sides"    # [I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "cornerBits":I
    array-length v1, p0

    const/4 v2, 0x0

    move v4, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 167
    .end local v0    # "cornerBits":I
    .local v3, "side":I
    .local v4, "cornerBits":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget v5, p0, v0

    .line 169
    move v3, v5

    add-int/lit8 v6, p1, -0x2

    shr-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v6

    .line 170
    .local v5, "t":I
    shl-int/lit8 v6, v4, 0x3

    add-int v4, v6, v5

    .line 167
    .end local v3    # "side":I
    .end local v5    # "t":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    and-int/lit8 v0, v4, 0x1

    shl-int/lit8 v0, v0, 0xb

    shr-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 179
    .end local v4    # "cornerBits":I
    .restart local v0    # "cornerBits":I
    nop

    .line 179
    .local v2, "shift":I
    :goto_1
    move v1, v2

    .line 179
    .end local v2    # "shift":I
    .local v1, "shift":I
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 180
    sget-object v2, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    aget v2, v2, v1

    xor-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    .line 181
    return v1

    .line 179
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 179
    .end local v1    # "shift":I
    .restart local v2    # "shift":I
    goto :goto_1

    .line 184
    .end local v2    # "shift":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private isValid(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 548
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 3
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .line 552
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 553
    .local v0, "x":I
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 554
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    return v2
.end method

.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .locals 3
    .param p1, "p1"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p2, "p2"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p3, "p3"    # Lcom/google/zxing/aztec/detector/Detector$Point;
    .param p4, "p4"    # Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 428
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    move-object p1, v0

    .line 429
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    move-object p2, v0

    .line 430
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    move-object p3, v0

    .line 431
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    move-object p4, v0

    .line 433
    invoke-direct {p0, p4, p1}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 435
    .local v2, "cInit":I
    move v2, v0

    if-nez v0, :cond_0

    .line 436
    return v1

    .line 439
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 441
    if-eq v0, v2, :cond_1

    .line 442
    return v1

    .line 445
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 447
    if-eq v0, v2, :cond_2

    .line 448
    return v1

    .line 451
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 453
    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .locals 26
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 373
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v21

    .line 374
    .local v21, "sampler":Lcom/google/zxing/common/GridSampler;
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v1

    const/4 v2, 0x0

    .line 376
    .local v2, "dimension":I
    move v15, v1

    .line 376
    .end local v2    # "dimension":I
    .local v15, "dimension":I
    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v3, v3

    sub-float v22, v1, v3

    .line 377
    .local v22, "low":F
    int-to-float v1, v15

    div-float/2addr v1, v2

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v2, v2

    add-float v23, v1, v2

    .line 379
    .local v23, "high":F
    nop

    .line 386
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    .line 387
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    .line 388
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    .line 389
    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    .line 379
    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move v3, v15

    move v4, v15

    move/from16 v5, v22

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v23

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v25, v15

    move/from16 v15, v16

    .line 379
    .end local v15    # "dimension":I
    .local v25, "dimension":I
    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v24

    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method private sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
    .locals 11
    .param p1, "p1"    # Lcom/google/zxing/ResultPoint;
    .param p2, "p2"    # Lcom/google/zxing/ResultPoint;
    .param p3, "size"    # I

    .line 401
    const/4 v0, 0x0

    .line 403
    .local v0, "result":I
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    const/4 v2, 0x0

    .line 404
    .local v2, "d":F
    move v2, v1

    int-to-float v3, p3

    div-float/2addr v1, v3

    .line 405
    .local v1, "moduleSize":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    .line 406
    .local v3, "px":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    .line 407
    .local v4, "py":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float v5, v5, v1

    div-float/2addr v5, v2

    .line 408
    .local v5, "dx":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float v6, v6, v1

    div-float/2addr v6, v2

    .line 409
    .local v6, "dy":F
    const/4 v7, 0x0

    .line 409
    .local v7, "i":I
    :goto_0
    if-ge v7, p3, :cond_1

    .line 410
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    int-to-float v9, v7

    mul-float v9, v9, v5

    add-float/2addr v9, v3

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    int-to-float v10, v7

    mul-float v10, v10, v6

    add-float/2addr v10, v4

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 411
    sub-int v8, p3, v7

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    shl-int v8, v9, v8

    or-int/2addr v0, v8

    .line 409
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 414
    .end local v7    # "i":I
    :cond_1
    return v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 15
    .param p1, "isMirror"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object v6, p0

    .line 65
    invoke-direct {v6}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    .line 69
    .local v7, "pCenter":Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {v6, v7}, Lcom/google/zxing/aztec/detector/Detector;->getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    .line 71
    .local v8, "bullsEyeCorners":[Lcom/google/zxing/ResultPoint;
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 72
    const/4 v1, 0x0

    aget-object v2, v8, v1

    .line 73
    .local v2, "temp":Lcom/google/zxing/ResultPoint;
    aget-object v3, v8, v0

    aput-object v3, v8, v1

    .line 74
    aput-object v2, v8, v0

    .line 78
    .end local v2    # "temp":Lcom/google/zxing/ResultPoint;
    :cond_0
    invoke-direct {v6, v8}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/ResultPoint;)V

    .line 81
    iget-object v1, v6, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v2, v6, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    rem-int/lit8 v2, v2, 0x4

    aget-object v2, v8, v2

    iget v3, v6, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v8, v3

    iget v4, v6, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/2addr v4, v0

    rem-int/lit8 v4, v4, 0x4

    aget-object v4, v8, v4

    iget v0, v6, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    aget-object v5, v8, v0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 88
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    invoke-direct {v6, v8}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 90
    .local v1, "corners":[Lcom/google/zxing/ResultPoint;
    new-instance v2, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v12, v6, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    iget v13, v6, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    iget v14, v6, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    move-object v9, v2

    move-object v10, v0

    move-object v11, v1

    invoke-direct/range {v9 .. v14}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    return-object v2
.end method
