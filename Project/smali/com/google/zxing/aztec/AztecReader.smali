.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 19
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

    .line 59
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 60
    .local v2, "notFoundException":Lcom/google/zxing/NotFoundException;
    const/4 v3, 0x0

    .line 61
    .local v3, "formatException":Lcom/google/zxing/FormatException;
    new-instance v4, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 62
    .local v4, "detector":Lcom/google/zxing/aztec/detector/Detector;
    const/4 v5, 0x0

    .line 63
    .local v5, "points":[Lcom/google/zxing/ResultPoint;
    const/4 v6, 0x0

    move-object v7, v6

    .line 65
    .local v7, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4, v8}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v9
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v10, v6

    .line 66
    .local v10, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v10, v9

    :try_start_1
    invoke-virtual {v9}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    move-object v5, v9

    .line 67
    new-instance v9, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v9}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v9, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v9
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v9

    .line 72
    .end local v10    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    nop

    .line 73
    move-object v9, v5

    goto :goto_2

    .line 71
    :catch_0
    move-exception v0

    move-object v9, v5

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    move-object v9, v5

    goto :goto_1

    .line 71
    :catch_2
    move-exception v0

    move-object v9, v5

    move-object v10, v6

    .line 71
    .end local v5    # "points":[Lcom/google/zxing/ResultPoint;
    .local v9, "points":[Lcom/google/zxing/ResultPoint;
    .local v10, "e":Lcom/google/zxing/FormatException;
    :goto_0
    move-object v5, v0

    .line 72
    nop

    .line 71
    move-object v3, v5

    .line 71
    .end local v10    # "e":Lcom/google/zxing/FormatException;
    goto :goto_2

    .line 69
    .end local v9    # "points":[Lcom/google/zxing/ResultPoint;
    .restart local v5    # "points":[Lcom/google/zxing/ResultPoint;
    :catch_3
    move-exception v0

    move-object v9, v5

    move-object v10, v6

    .line 69
    .end local v5    # "points":[Lcom/google/zxing/ResultPoint;
    .restart local v9    # "points":[Lcom/google/zxing/ResultPoint;
    .local v10, "e":Lcom/google/zxing/NotFoundException;
    :goto_1
    move-object v5, v0

    .line 72
    nop

    .line 69
    move-object v2, v5

    .line 72
    .end local v10    # "e":Lcom/google/zxing/NotFoundException;
    nop

    .line 73
    .local v10, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    :goto_2
    if-nez v7, :cond_2

    .line 75
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v4, v5}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v5

    .line 76
    move-object v10, v5

    invoke-virtual {v5}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    move-object v9, v5

    .line 77
    new-instance v5, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v5}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v5, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v5
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/zxing/FormatException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v7, v5

    .line 86
    .end local v10    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    goto :goto_3

    .line 78
    :catch_4
    move-exception v0

    move-object v5, v0

    .line 79
    .local v5, "e":Lcom/google/zxing/ReaderException;
    if-eqz v2, :cond_0

    .line 80
    throw v2

    .line 82
    :cond_0
    if-eqz v3, :cond_1

    .line 83
    throw v3

    .line 85
    :cond_1
    throw v5

    .line 89
    .end local v5    # "e":Lcom/google/zxing/ReaderException;
    .local v10, "rpcb":Lcom/google/zxing/ResultPointCallback;
    :cond_2
    :goto_3
    if-eqz v1, :cond_4

    .line 90
    sget-object v5, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/ResultPointCallback;

    .line 91
    move-object v10, v5

    if-eqz v5, :cond_4

    .line 92
    array-length v5, v9

    :goto_4
    if-ge v8, v5, :cond_3

    aget-object v11, v9, v8

    .line 93
    .local v11, "point":Lcom/google/zxing/ResultPoint;
    invoke-interface {v10, v11}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 92
    .end local v11    # "point":Lcom/google/zxing/ResultPoint;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 98
    .end local v10    # "rpcb":Lcom/google/zxing/ResultPointCallback;
    :cond_3
    move-object v5, v9

    goto :goto_5

    :cond_4
    move-object v5, v6

    .line 98
    .local v5, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_5
    new-instance v8, Lcom/google/zxing/Result;

    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v12

    .line 99
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v13

    .line 100
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getNumBits()I

    move-result v14

    sget-object v16, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v11, v8

    move-object v15, v9

    invoke-direct/range {v11 .. v18}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 105
    .local v8, "result":Lcom/google/zxing/Result;
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v10

    .line 106
    move-object v5, v10

    if-eqz v10, :cond_5

    .line 107
    sget-object v10, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v8, v10, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 109
    :cond_5
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v6, "ecLevel":Ljava/lang/String;
    move-object v6, v10

    if-eqz v10, :cond_6

    .line 111
    sget-object v10, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v8, v10, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 114
    :cond_6
    return-object v8
.end method

.method public reset()V
    .locals 0

    .line 120
    return-void
.end method
