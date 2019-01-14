.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 23
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 105
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v2

    .line 106
    .local v2, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v3

    .line 107
    .local v3, "height":I
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 109
    .local v4, "row":Lcom/google/zxing/common/BitArray;
    shr-int/lit8 v5, v3, 0x1

    .line 110
    .local v5, "middle":I
    const/4 v7, 0x1

    if-eqz v1, :cond_0

    sget-object v8, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 111
    .local v8, "tryHarder":Z
    :goto_0
    if-eqz v8, :cond_1

    const/16 v9, 0x8

    goto :goto_1

    :cond_1
    const/4 v9, 0x5

    :goto_1
    shr-int v9, v3, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 113
    .local v9, "rowStep":I
    if-eqz v8, :cond_2

    .line 114
    move v10, v3

    .line 114
    .local v10, "maxLines":I
    goto :goto_2

    .line 116
    .end local v10    # "maxLines":I
    :cond_2
    const/16 v10, 0xf

    .line 119
    .restart local v10    # "maxLines":I
    :goto_2
    const/4 v11, 0x0

    move-object v12, v4

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    const/4 v4, 0x0

    move-object v11, v1

    const/4 v1, 0x0

    .line 119
    .end local p2    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v1, "x":I
    .local v4, "rowNumber":I
    .local v11, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v12, "row":Lcom/google/zxing/common/BitArray;
    .local v13, "ignored":Lcom/google/zxing/NotFoundException;
    .local v14, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .local v15, "points":[Lcom/google/zxing/ResultPoint;
    :goto_3
    if-ge v1, v10, :cond_8

    .line 122
    add-int/lit8 v16, v1, 0x1

    const/4 v6, 0x2

    div-int/lit8 v7, v16, 0x2

    .line 123
    .local v7, "rowStepsAboveOrBelow":I
    and-int/lit8 v16, v1, 0x1

    if-nez v16, :cond_3

    const/16 v16, 0x1

    goto :goto_4

    :cond_3
    const/16 v16, 0x0

    .line 124
    .local v16, "isAbove":Z
    :goto_4
    if-eqz v16, :cond_4

    move v6, v7

    goto :goto_5

    :cond_4
    neg-int v6, v7

    :goto_5
    mul-int v6, v6, v9

    add-int/2addr v6, v5

    .line 125
    move v4, v6

    if-ltz v6, :cond_8

    if-ge v4, v3, :cond_8

    .line 132
    move-object/from16 v6, p1

    :try_start_0
    invoke-virtual {v6, v4, v12}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v18
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v12, v18

    .line 135
    nop

    .line 139
    move-object/from16 v18, v15

    move-object v15, v14

    move-object v14, v11

    const/4 v11, 0x0

    .line 139
    .local v11, "attempt":I
    .local v14, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v15, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .local v18, "points":[Lcom/google/zxing/ResultPoint;
    :goto_6
    move/from16 v19, v3

    const/4 v3, 0x2

    if-ge v11, v3, :cond_7

    .line 140
    .end local v3    # "height":I
    .local v19, "height":I
    const/4 v3, 0x1

    if-ne v11, v3, :cond_5

    .line 141
    invoke-virtual {v12}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 146
    if-eqz v14, :cond_5

    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 147
    new-instance v3, Ljava/util/EnumMap;

    move/from16 v20, v5

    const-class v5, Lcom/google/zxing/DecodeHintType;

    .line 147
    .end local v5    # "middle":I
    .local v20, "middle":I
    invoke-direct {v3, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v5, v15

    .line 148
    .end local v15    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .local v5, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    move-object v15, v3

    .line 148
    .end local v5    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .restart local v15    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-interface {v3, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v15, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object v3, v15

    .line 155
    .end local v14    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .end local v15    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v14, v3

    goto :goto_7

    .line 155
    .end local v3    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .end local v20    # "middle":I
    .local v5, "middle":I
    .restart local v14    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .restart local v15    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    :cond_5
    move/from16 v20, v5

    .line 155
    .end local v5    # "middle":I
    .restart local v20    # "middle":I
    :goto_7
    move-object/from16 v3, p0

    :try_start_1
    invoke-virtual {v3, v4, v12, v14}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v5
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_4

    .line 157
    .end local v15    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .local v5, "result":Lcom/google/zxing/Result;
    const/4 v15, 0x1

    if-ne v11, v15, :cond_6

    .line 159
    :try_start_2
    sget-object v15, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    const/16 v3, 0xb4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v15, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v15, v18

    .line 162
    .end local v18    # "points":[Lcom/google/zxing/ResultPoint;
    .local v15, "points":[Lcom/google/zxing/ResultPoint;
    move-object v15, v3

    if-eqz v3, :cond_6

    .line 163
    :try_start_3
    new-instance v3, Lcom/google/zxing/ResultPoint;
    :try_end_3
    .catch Lcom/google/zxing/ReaderException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v21, v4

    int-to-float v4, v2

    .line 163
    .end local v4    # "rowNumber":I
    .local v21, "rowNumber":I
    const/16 v17, 0x0

    :try_start_4
    aget-object v6, v15, v17

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v4, v6

    aget-object v6, v15, v17

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    invoke-direct {v3, v4, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v15, v17

    .line 164
    new-instance v3, Lcom/google/zxing/ResultPoint;
    :try_end_4
    .catch Lcom/google/zxing/ReaderException; {:try_start_4 .. :try_end_4} :catch_1

    int-to-float v4, v2

    move/from16 v22, v2

    const/4 v6, 0x1

    :try_start_5
    aget-object v2, v15, v6

    .line 164
    .end local v2    # "width":I
    .local v22, "width":I
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    aget-object v2, v15, v6

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v15, v6
    :try_end_5
    .catch Lcom/google/zxing/ReaderException; {:try_start_5 .. :try_end_5} :catch_0

    .line 164
    .end local v15    # "points":[Lcom/google/zxing/ResultPoint;
    goto :goto_a

    .line 168
    .restart local v15    # "points":[Lcom/google/zxing/ResultPoint;
    :catch_0
    move-exception v0

    goto :goto_8

    .line 168
    .end local v22    # "width":I
    .restart local v2    # "width":I
    :catch_1
    move-exception v0

    move/from16 v22, v2

    const/4 v6, 0x1

    .line 168
    .end local v2    # "width":I
    .restart local v22    # "width":I
    goto :goto_8

    .line 168
    .end local v21    # "rowNumber":I
    .end local v22    # "width":I
    .restart local v2    # "width":I
    .restart local v4    # "rowNumber":I
    :catch_2
    move-exception v0

    move/from16 v22, v2

    move/from16 v21, v4

    const/4 v6, 0x1

    const/16 v17, 0x0

    .line 168
    .end local v2    # "width":I
    .end local v4    # "rowNumber":I
    .restart local v21    # "rowNumber":I
    .restart local v22    # "width":I
    :goto_8
    move-object/from16 v18, v15

    goto :goto_9

    .line 168
    .end local v15    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v21    # "rowNumber":I
    .end local v22    # "width":I
    .restart local v2    # "width":I
    .restart local v4    # "rowNumber":I
    .restart local v18    # "points":[Lcom/google/zxing/ResultPoint;
    :catch_3
    move-exception v0

    move/from16 v22, v2

    move/from16 v21, v4

    const/4 v6, 0x1

    const/16 v17, 0x0

    .line 168
    .end local v2    # "width":I
    .end local v4    # "rowNumber":I
    .end local v5    # "result":Lcom/google/zxing/Result;
    .local v15, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .restart local v21    # "rowNumber":I
    .restart local v22    # "width":I
    :goto_9
    move-object v15, v5

    goto :goto_b

    .line 167
    .end local v13    # "ignored":Lcom/google/zxing/NotFoundException;
    .end local v15    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .end local v18    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v21    # "rowNumber":I
    .end local v22    # "width":I
    .restart local v2    # "width":I
    .restart local v4    # "rowNumber":I
    .restart local v5    # "result":Lcom/google/zxing/Result;
    :cond_6
    move/from16 v22, v2

    move/from16 v21, v4

    .line 167
    .end local v2    # "width":I
    .end local v4    # "rowNumber":I
    .restart local v21    # "rowNumber":I
    .restart local v22    # "width":I
    :goto_a
    return-object v5

    .line 168
    .end local v5    # "result":Lcom/google/zxing/Result;
    .end local v21    # "rowNumber":I
    .end local v22    # "width":I
    .restart local v2    # "width":I
    .restart local v4    # "rowNumber":I
    .restart local v13    # "ignored":Lcom/google/zxing/NotFoundException;
    .restart local v15    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .restart local v18    # "points":[Lcom/google/zxing/ResultPoint;
    :catch_4
    move-exception v0

    move/from16 v22, v2

    move/from16 v21, v4

    const/4 v6, 0x1

    const/16 v17, 0x0

    .line 139
    .end local v2    # "width":I
    .end local v4    # "rowNumber":I
    .restart local v21    # "rowNumber":I
    .restart local v22    # "width":I
    :goto_b
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v19

    move/from16 v5, v20

    move/from16 v4, v21

    move/from16 v2, v22

    move-object/from16 v6, p1

    goto/16 :goto_6

    .line 119
    .end local v7    # "rowStepsAboveOrBelow":I
    .end local v11    # "attempt":I
    .end local v16    # "isAbove":Z
    .end local v20    # "middle":I
    .end local v21    # "rowNumber":I
    .end local v22    # "width":I
    .restart local v2    # "width":I
    .restart local v4    # "rowNumber":I
    .local v5, "middle":I
    :cond_7
    move/from16 v22, v2

    move/from16 v21, v4

    move/from16 v20, v5

    const/4 v6, 0x1

    const/16 v17, 0x0

    move-object v11, v14

    move-object v14, v15

    move-object/from16 v15, v18

    .line 119
    .end local v2    # "width":I
    .end local v4    # "rowNumber":I
    .end local v5    # "middle":I
    .restart local v20    # "middle":I
    .restart local v21    # "rowNumber":I
    .restart local v22    # "width":I
    goto :goto_c

    .line 133
    .end local v18    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v19    # "height":I
    .end local v20    # "middle":I
    .end local v21    # "rowNumber":I
    .end local v22    # "width":I
    .restart local v2    # "width":I
    .local v3, "height":I
    .restart local v4    # "rowNumber":I
    .restart local v5    # "middle":I
    .restart local v7    # "rowStepsAboveOrBelow":I
    .local v11, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v14, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .local v15, "points":[Lcom/google/zxing/ResultPoint;
    .restart local v16    # "isAbove":Z
    :catch_5
    move-exception v0

    move/from16 v22, v2

    move/from16 v19, v3

    move/from16 v21, v4

    move/from16 v20, v5

    const/4 v6, 0x1

    const/16 v17, 0x0

    .line 133
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "rowNumber":I
    .end local v5    # "middle":I
    .restart local v19    # "height":I
    .restart local v20    # "middle":I
    .restart local v21    # "rowNumber":I
    .restart local v22    # "width":I
    move-object v2, v13

    .line 134
    .end local v13    # "ignored":Lcom/google/zxing/NotFoundException;
    .local v2, "ignored":Lcom/google/zxing/NotFoundException;
    nop

    .line 119
    .end local v2    # "ignored":Lcom/google/zxing/NotFoundException;
    .end local v7    # "rowStepsAboveOrBelow":I
    .end local v16    # "isAbove":Z
    .restart local v13    # "ignored":Lcom/google/zxing/NotFoundException;
    :goto_c
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v19

    move/from16 v5, v20

    move/from16 v4, v21

    move/from16 v2, v22

    const/4 v7, 0x1

    goto/16 :goto_3

    .line 174
    .end local v1    # "x":I
    .end local v13    # "ignored":Lcom/google/zxing/NotFoundException;
    .end local v14    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .end local v15    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v19    # "height":I
    .end local v20    # "middle":I
    .end local v21    # "rowNumber":I
    .end local v22    # "width":I
    .local v2, "width":I
    .restart local v3    # "height":I
    .restart local v5    # "middle":I
    :cond_8
    move/from16 v22, v2

    move/from16 v19, v3

    move/from16 v20, v5

    .line 174
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v5    # "middle":I
    .restart local v19    # "height":I
    .restart local v20    # "middle":I
    .restart local v22    # "width":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method protected static patternMatchVariance([I[IF)F
    .locals 11
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I
    .param p2, "maxIndividualVariance"    # F

    .line 253
    array-length v0, p0

    .line 254
    .local v0, "numCounters":I
    const/4 v1, 0x0

    .line 255
    .local v1, "total":I
    const/4 v2, 0x0

    .line 256
    .local v2, "patternLength":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    const/4 v1, 0x0

    .line 256
    .local v1, "i":I
    .local v2, "total":I
    .local v4, "patternLength":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 257
    aget v5, p0, v1

    add-int/2addr v2, v5

    .line 258
    aget v5, p1, v1

    add-int/2addr v4, v5

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    :cond_0
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v2, v4, :cond_1

    .line 263
    return v1

    .line 266
    :cond_1
    int-to-float v5, v2

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 267
    .local v5, "unitBarWidth":F
    mul-float p2, p2, v5

    .line 269
    const/4 v6, 0x0

    .line 270
    .local v6, "totalVariance":F
    const/4 v7, 0x0

    .line 270
    .local v3, "x":I
    .local v7, "variance":F
    :goto_1
    if-ge v3, v0, :cond_4

    .line 271
    aget v8, p0, v3

    .line 272
    .local v8, "counter":I
    aget v9, p1, v3

    int-to-float v9, v9

    mul-float v9, v9, v5

    .line 273
    .local v9, "scaledPattern":F
    int-to-float v10, v8

    cmpl-float v10, v10, v9

    if-lez v10, :cond_2

    int-to-float v10, v8

    sub-float/2addr v10, v9

    goto :goto_2

    :cond_2
    int-to-float v10, v8

    sub-float v10, v9, v10

    .line 274
    :goto_2
    move v7, v10

    cmpl-float v10, v10, p2

    if-lez v10, :cond_3

    .line 275
    return v1

    .line 277
    :cond_3
    add-float/2addr v6, v7

    .line 270
    .end local v7    # "variance":F
    .end local v8    # "counter":I
    .end local v9    # "scaledPattern":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 279
    .end local v3    # "x":I
    :cond_4
    int-to-float v1, v2

    div-float v1, v6, v1

    return v1
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 8
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 193
    array-length v0, p2

    .line 194
    .local v0, "numCounters":I
    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 195
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 196
    .local v2, "end":I
    if-lt p1, v2, :cond_0

    .line 197
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 200
    .local v3, "isWhite":Z
    const/4 v5, 0x0

    .line 201
    .local v5, "counterPosition":I
    move v6, v5

    move v5, v3

    move v3, p1

    .line 202
    .local v3, "i":I
    .local v5, "isWhite":Z
    .local v6, "counterPosition":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 203
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v5

    if-eqz v7, :cond_1

    .line 204
    aget v7, p2, v6

    add-int/2addr v7, v4

    aput v7, p2, v6

    goto :goto_2

    .line 206
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 207
    if-eq v6, v0, :cond_3

    .line 210
    aput v4, p2, v6

    .line 211
    if-nez v5, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    move v5, v7

    .line 214
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_3
    if-eq v6, v0, :cond_5

    add-int/lit8 v1, v0, -0x1

    if-ne v6, v1, :cond_4

    if-eq v3, v2, :cond_5

    .line 219
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 221
    :cond_5
    return-void
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 3
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 226
    array-length v0, p2

    .line 227
    .local v0, "numTransitionsLeft":I
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    .line 228
    .local v1, "last":Z
    :cond_0
    :goto_0
    if-lez p1, :cond_2

    if-ltz v0, :cond_2

    .line 229
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 230
    add-int/lit8 v0, v0, -0x1

    .line 231
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    goto :goto_0

    .line 234
    :cond_2
    if-ltz v0, :cond_3

    .line 235
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 237
    :cond_3
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 238
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 54
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "nfe":Lcom/google/zxing/NotFoundException;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const/4 v2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    nop

    .line 57
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v2

    .line 59
    .local v2, "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    invoke-direct {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 61
    .local v5, "result":Lcom/google/zxing/Result;
    move-object v5, v3

    invoke-virtual {v3}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v3

    .line 62
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    const/16 v6, 0x10e

    .line 63
    .local v6, "orientation":I
    if-eqz v3, :cond_1

    sget-object v7, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    .line 66
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit16 v7, v7, 0x10e

    rem-int/lit16 v6, v7, 0x168

    .line 68
    :cond_1
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .line 71
    .local v4, "points":[Lcom/google/zxing/ResultPoint;
    move-object v4, v7

    if-eqz v7, :cond_2

    .line 72
    invoke-virtual {v2}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v7

    .line 73
    .local v7, "height":I
    nop

    .line 73
    .local v1, "i":I
    :goto_1
    array-length v8, v4

    if-ge v1, v8, :cond_2

    .line 74
    new-instance v8, Lcom/google/zxing/ResultPoint;

    int-to-float v9, v7

    aget-object v10, v4, v1

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    aget-object v10, v4, v1

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v4, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    .end local v1    # "i":I
    .end local v7    # "height":I
    :cond_2
    return-object v5

    .line 79
    .end local v2    # "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    .end local v3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v4    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v5    # "result":Lcom/google/zxing/Result;
    .end local v6    # "orientation":I
    :cond_3
    throw v0
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 0

    .line 87
    return-void
.end method
