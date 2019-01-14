.class public final Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
.super Lcom/google/zxing/qrcode/QRCodeReader;
.source "QRCodeMultiReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;
    }
.end annotation


# static fields
.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/zxing/Result;

    sput-object v1, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    .line 51
    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    return-void
.end method

.method private static processStructuredAppend(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/Result;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/zxing/Result;",
            ">;"
        }
    .end annotation

    .line 100
    .local p0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    const/4 v0, 0x0

    .line 103
    .local v0, "hasSA":Z
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 103
    .local v3, "result":Lcom/google/zxing/Result;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/Result;

    .line 104
    invoke-virtual {v4}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 106
    goto :goto_1

    .line 108
    :cond_0
    goto :goto_0

    .line 109
    .end local v3    # "result":Lcom/google/zxing/Result;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 110
    return-object p0

    .line 114
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v3, "newResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v4, "saResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/Result;

    .line 117
    .local v6, "result":Lcom/google/zxing/Result;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v7

    sget-object v8, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 119
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v6    # "result":Lcom/google/zxing/Result;
    :cond_3
    goto :goto_2

    .line 123
    :cond_4
    new-instance v5, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;

    invoke-direct {v5, v2}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;-><init>(Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$1;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v5, "concatedText":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 126
    .local v6, "rawBytesLen":I
    const/4 v7, 0x0

    .line 127
    .local v7, "byteSegmentLength":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v2

    .line 127
    .local v9, "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/Result;

    .line 128
    .local v10, "saResult":Lcom/google/zxing/Result;
    invoke-virtual {v10}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v10}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v6, v11

    .line 130
    invoke-virtual {v10}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v11

    sget-object v12, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 132
    nop

    .line 133
    invoke-virtual {v10}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v11

    sget-object v12, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .line 134
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 135
    .local v12, "segment":[B
    array-length v13, v12

    add-int/2addr v7, v13

    .line 136
    .end local v12    # "segment":[B
    goto :goto_4

    .line 138
    .end local v10    # "saResult":Lcom/google/zxing/Result;
    :cond_5
    goto :goto_3

    .line 139
    .end local v9    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    :cond_6
    new-array v8, v6, [B

    .line 140
    .local v8, "newRawBytes":[B
    new-array v9, v7, [B

    .line 141
    .local v9, "newByteSegment":[B
    const/4 v10, 0x0

    .line 142
    .local v10, "newRawBytesIndex":I
    const/4 v11, 0x0

    .line 143
    .local v11, "byteSegmentIndex":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v2

    .line 143
    .local v2, "saResult":Lcom/google/zxing/Result;
    .local v13, "segment":[B
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/Result;

    .line 144
    move-object v2, v14

    invoke-virtual {v14}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v14

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v15

    array-length v15, v15

    move/from16 v16, v0

    const/4 v0, 0x0

    .line 144
    .end local v0    # "hasSA":Z
    .local v16, "hasSA":Z
    invoke-static {v14, v0, v8, v10, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    invoke-virtual {v2}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v14

    array-length v14, v14

    add-int/2addr v10, v14

    .line 146
    invoke-virtual {v2}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v14

    sget-object v15, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 148
    nop

    .line 149
    invoke-virtual {v2}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v14

    sget-object v15, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    .line 150
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 151
    move-object v13, v15

    array-length v1, v13

    invoke-static {v15, v0, v9, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    array-length v1, v13

    add-int/2addr v11, v1

    .line 153
    .end local v13    # "segment":[B
    goto :goto_6

    .line 155
    .restart local v13    # "segment":[B
    :cond_7
    nop

    .line 143
    move/from16 v0, v16

    goto :goto_5

    .line 156
    .end local v13    # "segment":[B
    .end local v16    # "hasSA":Z
    .restart local v0    # "hasSA":Z
    :cond_8
    move/from16 v16, v0

    .line 156
    .end local v0    # "hasSA":Z
    .restart local v16    # "hasSA":Z
    new-instance v0, Lcom/google/zxing/Result;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v12, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    sget-object v13, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v1, v8, v12, v13}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 157
    .local v0, "newResult":Lcom/google/zxing/Result;
    if-lez v7, :cond_9

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "byteSegmentList":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    move-object v2, v1

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 162
    .end local v2    # "byteSegmentList":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    :cond_9
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-object v3
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

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 13
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

    .line 60
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    new-instance v1, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v1, p2}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->detectMulti(Ljava/util/Map;)[Lcom/google/zxing/common/DetectorResult;

    move-result-object v1

    .line 62
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    .line 62
    .local v3, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v5, "ecLevel":Ljava/lang/String;
    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v6, v1, v4

    .line 64
    .local v6, "detectorResult":Lcom/google/zxing/common/DetectorResult;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v7

    .line 65
    .local v7, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v6}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    .line 67
    .local v8, "points":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    if-eqz v9, :cond_0

    .line 68
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-virtual {v9, v8}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->applyMirroredCorrection([Lcom/google/zxing/ResultPoint;)V

    .line 70
    :cond_0
    new-instance v9, Lcom/google/zxing/Result;

    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v11

    sget-object v12, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v9, v10, v11, v8, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 72
    .local v9, "result":Lcom/google/zxing/Result;
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v10

    .line 73
    move-object v3, v10

    if-eqz v10, :cond_1

    .line 74
    sget-object v10, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v9, v10, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 76
    :cond_1
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v10

    .line 77
    move-object v5, v10

    if-eqz v10, :cond_2

    .line 78
    sget-object v10, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v9, v10, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    .end local v7    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v8    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v9    # "result":Lcom/google/zxing/Result;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 80
    .restart local v7    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .restart local v8    # "points":[Lcom/google/zxing/ResultPoint;
    .restart local v9    # "result":Lcom/google/zxing/Result;
    :cond_2
    :goto_1
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->hasStructuredAppend()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 81
    sget-object v10, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    .line 82
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendSequenceNumber()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 81
    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 83
    sget-object v10, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    .line 84
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendParity()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 83
    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 86
    :cond_3
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v7    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v8    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v9    # "result":Lcom/google/zxing/Result;
    goto :goto_3

    .line 87
    :goto_2
    nop

    .line 62
    .end local v6    # "detectorResult":Lcom/google/zxing/common/DetectorResult;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    .end local v3    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v5    # "ecLevel":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    sget-object v1, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    return-object v1

    .line 94
    :cond_5
    invoke-static {v0}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->processStructuredAppend(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/zxing/Result;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/zxing/Result;

    return-object v1
.end method
