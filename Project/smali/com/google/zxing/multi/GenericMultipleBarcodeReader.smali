.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "GenericMultipleBarcodeReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final MAX_DEPTH:I = 0x4

.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/zxing/Reader;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 54
    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
    .locals 28
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "currentDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/zxing/Result;",
            ">;III)V"
        }
    .end annotation

    .line 78
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    move-object/from16 v1, p1

    move/from16 v9, p4

    move/from16 v10, p5

    .line 78
    move/from16 v11, p6

    const/4 v2, 0x4

    if-le v11, v2, :cond_0

    .line 79
    return-void

    .line 84
    :cond_0
    move-object/from16 v12, p0

    :try_start_0
    iget-object v3, v12, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v13, p2

    :try_start_1
    invoke-interface {v3, v1, v13}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v3
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v3

    .line 87
    .local v14, "result":Lcom/google/zxing/Result;
    nop

    .line 86
    nop

    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, "alreadyFound":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    .line 89
    .local v5, "existingResult":Lcom/google/zxing/Result;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/Result;

    .line 90
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    const/4 v3, 0x1

    .line 92
    goto :goto_1

    .line 94
    :cond_1
    goto :goto_0

    .line 95
    .end local v3    # "alreadyFound":Z
    .end local v5    # "existingResult":Lcom/google/zxing/Result;
    .local v15, "alreadyFound":Z
    :cond_2
    :goto_1
    move v15, v3

    if-nez v15, :cond_3

    .line 96
    invoke-static {v14, v9, v10}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    move-result-object v3

    move-object/from16 v8, p3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 98
    :cond_3
    move-object/from16 v8, p3

    :goto_2
    invoke-virtual {v14}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 99
    .local v4, "resultPoints":[Lcom/google/zxing/ResultPoint;
    move-object v7, v3

    .line 99
    .end local v4    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v7, "resultPoints":[Lcom/google/zxing/ResultPoint;
    if-eqz v3, :cond_f

    array-length v3, v7

    if-nez v3, :cond_4

    .line 100
    move-object/from16 v23, v7

    move/from16 v22, v10

    move-object/from16 v19, v14

    move/from16 v21, v15

    goto/16 :goto_8

    .line 102
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v6

    .line 103
    .local v6, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v5

    .line 104
    .local v5, "height":I
    int-to-float v3, v6

    .line 105
    .local v3, "minX":F
    int-to-float v4, v5

    .line 106
    .local v4, "minY":F
    const/16 v16, 0x0

    .line 107
    .local v16, "maxX":F
    const/16 v17, 0x0

    .line 108
    .local v17, "maxY":F
    array-length v2, v7

    move-object/from16 v19, v14

    .line 108
    .end local v14    # "result":Lcom/google/zxing/Result;
    .local v19, "result":Lcom/google/zxing/Result;
    move v14, v4

    move/from16 v21, v15

    move/from16 v15, v16

    move/from16 v10, v17

    const/16 v18, 0x0

    move v4, v3

    const/4 v3, 0x0

    .line 108
    .end local v3    # "minX":F
    .end local v16    # "maxX":F
    .end local v17    # "maxY":F
    .local v4, "minX":F
    .local v10, "maxY":F
    .local v14, "minY":F
    .local v15, "maxX":F
    .local v18, "point":Lcom/google/zxing/ResultPoint;
    .local v21, "alreadyFound":Z
    :goto_3
    if-ge v3, v2, :cond_a

    aget-object v16, v7, v3

    move-object/from16 v17, v18

    .line 109
    .end local v18    # "point":Lcom/google/zxing/ResultPoint;
    .local v17, "point":Lcom/google/zxing/ResultPoint;
    move-object/from16 v23, v16

    .line 109
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    .local v23, "point":Lcom/google/zxing/ResultPoint;
    if-eqz v16, :cond_8

    .line 112
    move/from16 v24, v2

    move-object/from16 v2, v23

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    .line 113
    .end local v23    # "point":Lcom/google/zxing/ResultPoint;
    .local v2, "point":Lcom/google/zxing/ResultPoint;
    .local v16, "x":F
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    .line 114
    .local v17, "y":F
    cmpg-float v18, v16, v4

    if-gez v18, :cond_5

    .line 115
    move/from16 v4, v16

    .line 117
    :cond_5
    cmpg-float v18, v17, v14

    if-gez v18, :cond_6

    .line 118
    move/from16 v14, v17

    .line 120
    :cond_6
    cmpl-float v18, v16, v15

    if-lez v18, :cond_7

    .line 121
    move/from16 v15, v16

    .line 123
    :cond_7
    cmpl-float v18, v17, v10

    if-lez v18, :cond_9

    .line 124
    move/from16 v10, v17

    .line 124
    .end local v2    # "point":Lcom/google/zxing/ResultPoint;
    .end local v16    # "x":F
    .end local v17    # "y":F
    goto :goto_4

    .line 108
    :cond_8
    move/from16 v24, v2

    move-object/from16 v2, v23

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v18, v2

    move/from16 v2, v24

    goto :goto_3

    .line 129
    :cond_a
    const/high16 v16, 0x42c80000    # 100.0f

    cmpl-float v2, v4, v16

    if-lez v2, :cond_b

    .line 130
    float-to-int v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v5}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v17

    add-int/lit8 v18, v11, 0x1

    move-object v2, v12

    move-object/from16 v3, v17

    move/from16 v17, v4

    move-object v4, v13

    .line 130
    .end local v4    # "minX":F
    .local v17, "minX":F
    move/from16 v25, v10

    move v10, v5

    move-object v5, v8

    .line 130
    .end local v5    # "height":I
    .local v10, "height":I
    .local v25, "maxY":F
    move/from16 v26, v10

    move v10, v6

    move v6, v9

    .line 130
    .end local v6    # "width":I
    .local v10, "width":I
    .local v26, "height":I
    move-object/from16 v23, v7

    move/from16 v27, v25

    move/from16 v22, p5

    move/from16 v7, v22

    .line 130
    .end local v7    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .end local v25    # "maxY":F
    .local v23, "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v27, "maxY":F
    move/from16 v8, v18

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_5

    .line 136
    .end local v17    # "minX":F
    .end local v23    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .end local v26    # "height":I
    .end local v27    # "maxY":F
    .restart local v4    # "minX":F
    .restart local v5    # "height":I
    .restart local v6    # "width":I
    .restart local v7    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v10, "maxY":F
    :cond_b
    move/from16 v17, v4

    move/from16 v26, v5

    move-object/from16 v23, v7

    move/from16 v27, v10

    move/from16 v22, p5

    move v10, v6

    .line 136
    .end local v4    # "minX":F
    .end local v5    # "height":I
    .end local v6    # "width":I
    .end local v7    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v10, "width":I
    .restart local v17    # "minX":F
    .restart local v23    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v26    # "height":I
    .restart local v27    # "maxY":F
    :goto_5
    cmpl-float v2, v14, v16

    if-lez v2, :cond_c

    .line 137
    float-to-int v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v10, v2}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    add-int/lit8 v8, v11, 0x1

    move-object v2, v12

    move-object v3, v4

    move-object v4, v13

    move-object/from16 v5, p3

    move v6, v9

    move/from16 v7, v22

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 143
    :cond_c
    add-int/lit8 v6, v10, -0x64

    int-to-float v2, v6

    cmpg-float v2, v15, v2

    if-gez v2, :cond_d

    .line 144
    float-to-int v2, v15

    float-to-int v3, v15

    sub-int v6, v10, v3

    move/from16 v8, v26

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6, v8}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    .line 144
    .end local v26    # "height":I
    .local v8, "height":I
    float-to-int v2, v15

    add-int v6, v9, v2

    add-int/lit8 v16, v11, 0x1

    move-object v2, v12

    move-object v3, v4

    move-object v4, v13

    move-object/from16 v5, p3

    move/from16 v7, v22

    move/from16 v18, v8

    move/from16 v8, v16

    .line 144
    .end local v8    # "height":I
    .local v18, "height":I
    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_6

    .line 150
    .end local v18    # "height":I
    .restart local v26    # "height":I
    :cond_d
    move/from16 v18, v26

    .line 150
    .end local v26    # "height":I
    .restart local v18    # "height":I
    :goto_6
    add-int/lit8 v5, v18, -0x64

    int-to-float v2, v5

    move/from16 v8, v27

    cmpg-float v2, v8, v2

    .line 150
    .end local v27    # "maxY":F
    .local v8, "maxY":F
    if-gez v2, :cond_e

    .line 151
    float-to-int v2, v8

    float-to-int v3, v8

    sub-int v5, v18, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v10, v5}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    float-to-int v2, v8

    add-int v7, v22, v2

    add-int/lit8 v16, v11, 0x1

    move-object v2, v12

    move-object v4, v13

    move-object/from16 v5, p3

    move v6, v9

    move/from16 v20, v8

    move/from16 v8, v16

    .line 151
    .end local v8    # "maxY":F
    .local v20, "maxY":F
    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_7

    .line 156
    .end local v20    # "maxY":F
    .restart local v8    # "maxY":F
    :cond_e
    move/from16 v20, v8

    .line 156
    .end local v8    # "maxY":F
    .restart local v20    # "maxY":F
    :goto_7
    return-void

    .line 100
    .end local v10    # "width":I
    .end local v17    # "minX":F
    .end local v18    # "height":I
    .end local v19    # "result":Lcom/google/zxing/Result;
    .end local v20    # "maxY":F
    .end local v21    # "alreadyFound":Z
    .end local v23    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v7    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v14, "result":Lcom/google/zxing/Result;
    .local v15, "alreadyFound":Z
    :cond_f
    move-object/from16 v23, v7

    move/from16 v22, v10

    move-object/from16 v19, v14

    move/from16 v21, v15

    .line 100
    .end local v7    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .end local v14    # "result":Lcom/google/zxing/Result;
    .end local v15    # "alreadyFound":Z
    .restart local v19    # "result":Lcom/google/zxing/Result;
    .restart local v21    # "alreadyFound":Z
    .restart local v23    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    :goto_8
    return-void

    .line 85
    .end local v19    # "result":Lcom/google/zxing/Result;
    .end local v21    # "alreadyFound":Z
    .end local v23    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v13, p2

    :goto_9
    move/from16 v22, v10

    const/4 v2, 0x0

    .line 86
    .local v2, "ignored":Lcom/google/zxing/ReaderException;
    return-void
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .locals 12
    .param p0, "result"    # Lcom/google/zxing/Result;
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    const/4 v0, 0x0

    .line 159
    .local v0, "oldResultPoints":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 160
    move-object v0, v1

    if-nez v1, :cond_0

    .line 161
    return-object p0

    .line 163
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    .line 164
    .local v1, "newResultPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v2, 0x0

    const/4 v10, 0x0

    move-object v3, v10

    .line 164
    .local v2, "i":I
    .local v3, "oldPoint":Lcom/google/zxing/ResultPoint;
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 165
    aget-object v4, v0, v2

    .line 166
    move-object v3, v4

    if-eqz v4, :cond_1

    .line 167
    new-instance v4, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    int-to-float v6, p1

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    int-to-float v7, p2

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v1, v2

    .line 164
    .end local v3    # "oldPoint":Lcom/google/zxing/ResultPoint;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "i":I
    :cond_2
    new-instance v11, Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v4

    .line 172
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getNumBits()I

    move-result v5

    .line 174
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    .line 175
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getTimestamp()J

    move-result-wide v8

    move-object v2, v11

    move-object v6, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    move-object v2, v10

    .line 176
    .local v2, "newResult":Lcom/google/zxing/Result;
    move-object v2, v11

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 177
    return-object v2
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 8
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 64
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 69
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/zxing/Result;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/zxing/Result;

    return-object v1
.end method
