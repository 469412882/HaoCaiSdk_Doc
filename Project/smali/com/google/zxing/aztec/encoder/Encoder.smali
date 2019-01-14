.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field public static final DEFAULT_AZTEC_LAYERS:I = 0x0

.field public static final DEFAULT_EC_PERCENT:I = 0x21

.field private static final MAX_NB_BITS:I = 0x20

.field private static final MAX_NB_BITS_COMPACT:I = 0x4

.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .locals 8
    .param p0, "stuffedBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I
    .param p2, "totalWords"    # I

    .line 288
    new-array v0, p2, [I

    .line 291
    .local v0, "message":[I
    const/4 v1, 0x0

    .line 291
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    div-int/2addr v2, p1

    .line 291
    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, "value":I
    const/4 v4, 0x0

    move v5, v3

    const/4 v3, 0x0

    .line 293
    .local v3, "j":I
    .local v5, "value":I
    :goto_1
    if-ge v3, p1, :cond_1

    .line 294
    mul-int v6, v1, p1

    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    sub-int v6, p1, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    shl-int v6, v7, v6

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v5, v6

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 296
    .end local v3    # "j":I
    :cond_1
    aput v5, v0, v1

    .line 291
    .end local v5    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_2
    return-object v0
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .locals 3
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "center"    # I
    .param p2, "size"    # I

    .line 204
    const/4 v0, 0x0

    .line 204
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 205
    sub-int v1, p1, v0

    .line 205
    .local v1, "j":I
    :goto_1
    add-int v2, p1, v0

    if-gt v1, v2, :cond_0

    .line 206
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 207
    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 208
    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 209
    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_1
    sub-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 213
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 214
    sub-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 215
    add-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 216
    add-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 217
    add-int v0, p1, p2

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 218
    return-void
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .locals 4
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "compact"    # Z
    .param p2, "matrixSize"    # I
    .param p3, "modeMessage"    # Lcom/google/zxing/common/BitArray;

    .line 235
    div-int/lit8 v0, p2, 0x2

    .line 236
    .local v0, "center":I
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 237
    nop

    .line 237
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 238
    add-int/lit8 v2, v0, -0x3

    add-int/2addr v2, v1

    .line 239
    .local v2, "offset":I
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 242
    :cond_0
    add-int/lit8 v3, v1, 0x7

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 245
    :cond_1
    rsub-int/lit8 v3, v1, 0x14

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 248
    :cond_2
    rsub-int/lit8 v3, v1, 0x1b

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 237
    .end local v2    # "offset":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 253
    :cond_5
    nop

    .line 253
    .restart local v1    # "i":I
    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_a

    .line 254
    add-int/lit8 v2, v0, -0x5

    add-int/2addr v2, v1

    div-int/lit8 v3, v1, 0x5

    add-int/2addr v2, v3

    .line 255
    .restart local v2    # "offset":I
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 256
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 258
    :cond_6
    add-int/lit8 v3, v1, 0xa

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 259
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 261
    :cond_7
    rsub-int/lit8 v3, v1, 0x1d

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 262
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 264
    :cond_8
    rsub-int/lit8 v3, v1, 0x27

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 265
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 253
    .end local v2    # "offset":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    .end local v1    # "i":I
    :cond_a
    return-void
.end method

.method public static encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 2
    .param p0, "data"    # [B

    .line 51
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 32
    .param p0, "data"    # [B
    .param p1, "minECCPercent"    # I
    .param p2, "userSpecifiedLayers"    # I

    const/4 v1, 0x0

    .line 65
    .local v1, "bits":Lcom/google/zxing/common/BitArray;
    new-instance v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    invoke-virtual {v2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v2

    .line 68
    move-object v1, v2

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    mul-int v2, v2, p1

    div-int/lit8 v2, v2, 0x64

    const/16 v5, 0xb

    add-int/2addr v2, v5

    .line 69
    .local v2, "eccBits":I
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    add-int/2addr v6, v2

    .line 75
    .local v6, "totalSizeBits":I
    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p2, :cond_6

    .line 76
    if-gez p2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 77
    .local v11, "compact":Z
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move v13, v9

    .line 78
    .local v13, "layers":I
    move v13, v12

    if-eqz v11, :cond_1

    const/4 v7, 0x4

    nop

    :cond_1
    if-le v12, v7, :cond_2

    .line 79
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Illegal value %s for layers"

    new-array v8, v10, [Ljava/lang/Object;

    .line 80
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 82
    :cond_2
    invoke-static {v13, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v7

    .line 83
    .local v7, "totalBitsInLayer":I
    sget-object v12, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v12, v12, v13

    .line 84
    .local v12, "wordSize":I
    rem-int v14, v7, v12

    sub-int v14, v7, v14

    .line 85
    .local v14, "usableBitsInLayers":I
    invoke-static {v1, v12}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v15

    move-object/from16 v16, v8

    .line 86
    .local v16, "stuffedBits":Lcom/google/zxing/common/BitArray;
    move-object/from16 v17, v15

    .line 86
    .end local v16    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .local v17, "stuffedBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v15}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v15

    add-int/2addr v15, v2

    if-le v15, v14, :cond_3

    .line 87
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "Data to large for user specified layer"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_3
    if-eqz v11, :cond_4

    move-object/from16 v15, v17

    invoke-virtual {v15}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 89
    .end local v17    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .local v15, "stuffedBits":Lcom/google/zxing/common/BitArray;
    shl-int/lit8 v8, v12, 0x6

    if-le v5, v8, :cond_5

    .line 91
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "Data to large for user specified layer"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    .end local v14    # "usableBitsInLayers":I
    .end local v15    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .restart local v17    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    :cond_4
    move-object/from16 v15, v17

    .line 125
    .end local v17    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .restart local v15    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    :cond_5
    move v14, v7

    move/from16 v31, v12

    move v12, v11

    move/from16 v11, v31

    goto :goto_4

    .line 94
    .end local v7    # "totalBitsInLayer":I
    .end local v11    # "compact":Z
    .end local v12    # "wordSize":I
    .end local v13    # "layers":I
    .end local v15    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    :cond_6
    const/4 v5, 0x0

    .line 95
    .local v5, "wordSize":I
    const/4 v8, 0x0

    .line 99
    .local v8, "stuffedBits":Lcom/google/zxing/common/BitArray;
    move v11, v5

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 100
    .local v5, "i":I
    .local v11, "wordSize":I
    .local v12, "compact":Z
    .restart local v13    # "layers":I
    :goto_1
    if-le v5, v7, :cond_7

    .line 101
    .end local v12    # "compact":Z
    .end local v13    # "layers":I
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "Data too large for an Aztec code"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 103
    .restart local v12    # "compact":Z
    .restart local v13    # "layers":I
    :cond_7
    const/4 v14, 0x3

    if-gt v5, v14, :cond_8

    const/4 v14, 0x1

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    .line 104
    :goto_2
    move v12, v14

    if-eqz v14, :cond_9

    add-int/lit8 v14, v5, 0x1

    goto :goto_3

    :cond_9
    move v14, v5

    .line 105
    :goto_3
    move v13, v14

    invoke-static {v14, v12}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v14

    .line 106
    .local v14, "totalBitsInLayer":I
    if-gt v6, v14, :cond_1d

    .line 111
    sget-object v15, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v15, v15, v13

    if-eq v11, v15, :cond_a

    .line 112
    sget-object v15, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v11, v15, v13

    .line 113
    invoke-static {v1, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v8

    .line 115
    :cond_a
    rem-int v15, v14, v11

    sub-int v15, v14, v15

    .line 116
    .local v15, "usableBitsInLayers":I
    if-eqz v12, :cond_b

    invoke-virtual {v8}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    shl-int/lit8 v10, v11, 0x6

    if-gt v7, v10, :cond_c

    .line 120
    :cond_b
    invoke-virtual {v8}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    add-int/2addr v7, v2

    if-le v7, v15, :cond_d

    .line 99
    .end local v15    # "usableBitsInLayers":I
    :cond_c
    move-object/from16 v24, v1

    move/from16 v25, v2

    move/from16 v28, v6

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_11

    .line 125
    .end local v5    # "i":I
    :cond_d
    move-object v15, v8

    .line 125
    .end local v8    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .local v15, "stuffedBits":Lcom/google/zxing/common/BitArray;
    :goto_4
    invoke-static {v15, v14, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v5

    .line 128
    .local v5, "messageBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v15}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    div-int/2addr v7, v11

    .line 129
    .local v7, "messageSizeInWords":I
    invoke-static {v12, v13, v7}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v8

    .line 132
    .local v8, "modeMessage":Lcom/google/zxing/common/BitArray;
    if-eqz v12, :cond_e

    const/16 v18, 0xb

    goto :goto_5

    :cond_e
    const/16 v10, 0xe

    const/16 v18, 0xe

    :goto_5
    shl-int/lit8 v10, v13, 0x2

    add-int v10, v18, v10

    move/from16 v16, v9

    .line 133
    .local v16, "baseMatrixSize":I
    move/from16 v16, v10

    new-array v10, v10, [I

    .line 135
    .local v10, "alignmentMap":[I
    if-eqz v12, :cond_10

    .line 137
    move/from16 v17, v16

    .line 138
    .local v17, "matrixSize":I
    const/16 v18, 0x0

    .line 138
    .local v18, "i":I
    :goto_6
    move/from16 v22, v18

    .line 138
    .end local v18    # "i":I
    .local v22, "i":I
    array-length v9, v10

    move/from16 v0, v22

    if-ge v0, v9, :cond_f

    .line 139
    .end local v22    # "i":I
    .local v0, "i":I
    aput v0, v10, v0

    .line 138
    add-int/lit8 v18, v0, 0x1

    .line 138
    .end local v0    # "i":I
    .restart local v18    # "i":I
    goto :goto_6

    .line 151
    .end local v18    # "i":I
    :cond_f
    move-object/from16 v24, v1

    goto :goto_8

    .line 142
    .end local v17    # "matrixSize":I
    :cond_10
    add-int/lit8 v0, v16, 0x1

    div-int/lit8 v9, v16, 0x2

    const/16 v17, 0x1

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0xf

    const/16 v17, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int v17, v0, v9

    .line 143
    .restart local v17    # "matrixSize":I
    div-int/lit8 v0, v16, 0x2

    .line 144
    .local v0, "origCenter":I
    div-int/lit8 v9, v17, 0x2

    .line 145
    .local v9, "center":I
    const/16 v18, 0x0

    .line 145
    .restart local v18    # "i":I
    :goto_7
    move/from16 v23, v18

    .line 145
    .end local v18    # "i":I
    .local v23, "i":I
    move-object/from16 v24, v1

    move/from16 v1, v23

    if-ge v1, v0, :cond_11

    .line 146
    .end local v23    # "i":I
    .local v1, "i":I
    .local v24, "bits":Lcom/google/zxing/common/BitArray;
    div-int/lit8 v23, v1, 0xf

    add-int v23, v1, v23

    .line 147
    .local v23, "newOffset":I
    sub-int v18, v0, v1

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    sub-int v20, v9, v23

    add-int/lit8 v20, v20, -0x1

    aput v20, v10, v18

    .line 148
    add-int v18, v0, v1

    add-int v20, v9, v23

    add-int/lit8 v22, v20, 0x1

    aput v22, v10, v18

    .line 145
    .end local v23    # "newOffset":I
    add-int/lit8 v18, v1, 0x1

    .line 145
    .end local v1    # "i":I
    .restart local v18    # "i":I
    move-object/from16 v1, v24

    goto :goto_7

    .line 151
    .end local v9    # "center":I
    .end local v17    # "matrixSize":I
    .end local v18    # "i":I
    .local v0, "matrixSize":I
    :cond_11
    :goto_8
    move/from16 v0, v17

    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 154
    .local v1, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v9, 0x0

    .line 154
    .local v9, "i":I
    move/from16 v25, v2

    move v2, v9

    const/4 v9, 0x0

    .line 154
    .local v2, "i":I
    .local v9, "rowOffset":I
    .local v25, "eccBits":I
    :goto_9
    if-ge v2, v13, :cond_19

    .line 155
    sub-int v17, v13, v2

    const/16 v18, 0x2

    shl-int/lit8 v17, v17, 0x2

    if-eqz v12, :cond_12

    const/16 v18, 0x9

    goto :goto_a

    :cond_12
    const/16 v18, 0xc

    :goto_a
    add-int v3, v17, v18

    .line 156
    .local v3, "rowSize":I
    const/16 v17, 0x0

    .line 156
    .local v17, "j":I
    :goto_b
    move/from16 v26, v17

    .line 156
    .end local v17    # "j":I
    .local v26, "j":I
    move/from16 v4, v26

    if-ge v4, v3, :cond_18

    .line 157
    .end local v26    # "j":I
    .local v4, "j":I
    shl-int/lit8 v17, v4, 0x1

    .line 158
    .local v17, "columnOffset":I
    const/16 v18, 0x0

    .line 158
    .local v18, "k":I
    :goto_c
    move/from16 v27, v18

    .line 158
    .end local v18    # "k":I
    .local v27, "k":I
    move/from16 v28, v6

    move/from16 v29, v11

    move/from16 v6, v27

    const/4 v11, 0x2

    if-ge v6, v11, :cond_17

    .line 159
    .end local v11    # "wordSize":I
    .end local v27    # "k":I
    .local v6, "k":I
    .local v28, "totalSizeBits":I
    .local v29, "wordSize":I
    add-int v18, v9, v17

    add-int v11, v18, v6

    invoke-virtual {v5, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 160
    shl-int/lit8 v11, v2, 0x1

    add-int/2addr v11, v6

    aget v11, v10, v11

    shl-int/lit8 v18, v2, 0x1

    add-int v18, v18, v4

    move/from16 v30, v14

    aget v14, v10, v18

    .line 160
    .end local v14    # "totalBitsInLayer":I
    .local v30, "totalBitsInLayer":I
    invoke-virtual {v1, v11, v14}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_d

    .line 162
    .end local v30    # "totalBitsInLayer":I
    .restart local v14    # "totalBitsInLayer":I
    :cond_13
    move/from16 v30, v14

    .line 162
    .end local v14    # "totalBitsInLayer":I
    .restart local v30    # "totalBitsInLayer":I
    :goto_d
    shl-int/lit8 v11, v3, 0x1

    add-int/2addr v11, v9

    add-int v11, v11, v17

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 163
    shl-int/lit8 v11, v2, 0x1

    add-int/2addr v11, v4

    aget v11, v10, v11

    add-int/lit8 v14, v16, -0x1

    shl-int/lit8 v18, v2, 0x1

    sub-int v14, v14, v18

    sub-int/2addr v14, v6

    aget v14, v10, v14

    invoke-virtual {v1, v11, v14}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 165
    :cond_14
    shl-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v9

    add-int v11, v11, v17

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 166
    add-int/lit8 v11, v16, -0x1

    shl-int/lit8 v14, v2, 0x1

    sub-int/2addr v11, v14

    sub-int/2addr v11, v6

    aget v11, v10, v11

    add-int/lit8 v14, v16, -0x1

    shl-int/lit8 v18, v2, 0x1

    sub-int v14, v14, v18

    sub-int/2addr v14, v4

    aget v14, v10, v14

    invoke-virtual {v1, v11, v14}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 168
    :cond_15
    mul-int/lit8 v11, v3, 0x6

    add-int/2addr v11, v9

    add-int v11, v11, v17

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 169
    add-int/lit8 v11, v16, -0x1

    shl-int/lit8 v14, v2, 0x1

    sub-int/2addr v11, v14

    sub-int/2addr v11, v4

    aget v11, v10, v11

    shl-int/lit8 v14, v2, 0x1

    add-int/2addr v14, v6

    aget v14, v10, v14

    invoke-virtual {v1, v11, v14}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 158
    :cond_16
    add-int/lit8 v18, v6, 0x1

    .line 158
    .end local v6    # "k":I
    .restart local v18    # "k":I
    move/from16 v6, v28

    move/from16 v11, v29

    move/from16 v14, v30

    goto/16 :goto_c

    .line 156
    .end local v17    # "columnOffset":I
    .end local v18    # "k":I
    .end local v30    # "totalBitsInLayer":I
    .restart local v14    # "totalBitsInLayer":I
    :cond_17
    move/from16 v30, v14

    .line 156
    .end local v14    # "totalBitsInLayer":I
    .restart local v30    # "totalBitsInLayer":I
    add-int/lit8 v17, v4, 0x1

    .line 156
    .end local v4    # "j":I
    .local v17, "j":I
    move/from16 v6, v28

    move/from16 v11, v29

    goto/16 :goto_b

    .line 173
    .end local v17    # "j":I
    .end local v28    # "totalSizeBits":I
    .end local v29    # "wordSize":I
    .end local v30    # "totalBitsInLayer":I
    .local v6, "totalSizeBits":I
    .restart local v11    # "wordSize":I
    .restart local v14    # "totalBitsInLayer":I
    :cond_18
    move/from16 v28, v6

    move/from16 v29, v11

    move/from16 v30, v14

    .line 173
    .end local v6    # "totalSizeBits":I
    .end local v11    # "wordSize":I
    .end local v14    # "totalBitsInLayer":I
    .restart local v28    # "totalSizeBits":I
    .restart local v29    # "wordSize":I
    .restart local v30    # "totalBitsInLayer":I
    shl-int/lit8 v4, v3, 0x3

    add-int/2addr v9, v4

    .line 154
    .end local v3    # "rowSize":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, p0

    goto/16 :goto_9

    .line 177
    .end local v2    # "i":I
    .end local v9    # "rowOffset":I
    .end local v28    # "totalSizeBits":I
    .end local v29    # "wordSize":I
    .end local v30    # "totalBitsInLayer":I
    .restart local v6    # "totalSizeBits":I
    .restart local v11    # "wordSize":I
    .restart local v14    # "totalBitsInLayer":I
    :cond_19
    move/from16 v28, v6

    move/from16 v29, v11

    move/from16 v30, v14

    .line 177
    .end local v6    # "totalSizeBits":I
    .end local v11    # "wordSize":I
    .end local v14    # "totalBitsInLayer":I
    .restart local v28    # "totalSizeBits":I
    .restart local v29    # "wordSize":I
    .restart local v30    # "totalBitsInLayer":I
    invoke-static {v1, v12, v0, v8}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    .line 180
    if-eqz v12, :cond_1a

    .line 181
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_10

    .line 183
    :cond_1a
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 184
    const/4 v2, 0x0

    .line 184
    .restart local v2    # "i":I
    const/16 v21, 0x0

    .line 184
    .local v21, "j":I
    :goto_e
    move/from16 v3, v21

    .line 184
    .end local v21    # "j":I
    .local v3, "j":I
    div-int/lit8 v4, v16, 0x2

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_1c

    .line 185
    div-int/lit8 v4, v0, 0x2

    and-int/2addr v4, v6

    .line 185
    .local v4, "k":I
    :goto_f
    if-ge v4, v0, :cond_1b

    .line 186
    div-int/lit8 v9, v0, 0x2

    sub-int/2addr v9, v3

    invoke-virtual {v1, v9, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 187
    div-int/lit8 v9, v0, 0x2

    add-int/2addr v9, v3

    invoke-virtual {v1, v9, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 188
    div-int/lit8 v9, v0, 0x2

    sub-int/2addr v9, v3

    invoke-virtual {v1, v4, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 189
    div-int/lit8 v9, v0, 0x2

    add-int/2addr v9, v3

    invoke-virtual {v1, v4, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 185
    add-int/lit8 v4, v4, 0x2

    goto :goto_f

    .line 184
    .end local v4    # "k":I
    :cond_1b
    add-int/lit8 v2, v2, 0xf

    add-int/lit8 v21, v3, 0x10

    .line 184
    .end local v3    # "j":I
    .restart local v21    # "j":I
    goto :goto_e

    .line 194
    .end local v2    # "i":I
    .end local v21    # "j":I
    :cond_1c
    :goto_10
    new-instance v2, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v2}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    const/4 v3, 0x0

    .line 195
    .local v3, "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    move-object v3, v2

    invoke-virtual {v2, v12}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    .line 196
    invoke-virtual {v3, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    .line 197
    invoke-virtual {v3, v13}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    .line 198
    invoke-virtual {v3, v7}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    .line 199
    invoke-virtual {v3, v1}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    .line 200
    return-object v3

    .line 99
    .end local v0    # "matrixSize":I
    .end local v3    # "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    .end local v7    # "messageSizeInWords":I
    .end local v10    # "alignmentMap":[I
    .end local v15    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .end local v16    # "baseMatrixSize":I
    .end local v24    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v25    # "eccBits":I
    .end local v28    # "totalSizeBits":I
    .end local v29    # "wordSize":I
    .end local v30    # "totalBitsInLayer":I
    .local v1, "bits":Lcom/google/zxing/common/BitArray;
    .local v2, "eccBits":I
    .local v5, "i":I
    .restart local v6    # "totalSizeBits":I
    .local v8, "stuffedBits":Lcom/google/zxing/common/BitArray;
    .restart local v11    # "wordSize":I
    .restart local v14    # "totalBitsInLayer":I
    :cond_1d
    move-object/from16 v24, v1

    move/from16 v25, v2

    move/from16 v28, v6

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 99
    .end local v1    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v2    # "eccBits":I
    .end local v6    # "totalSizeBits":I
    .restart local v24    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v25    # "eccBits":I
    .restart local v28    # "totalSizeBits":I
    :goto_11
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v6, v28

    move-object/from16 v3, p0

    const/16 v7, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .locals 9
    .param p0, "bitArray"    # Lcom/google/zxing/common/BitArray;
    .param p1, "totalBits"    # I
    .param p2, "wordSize"    # I

    .line 273
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    div-int/2addr v0, p2

    .line 274
    .local v0, "messageSizeInWords":I
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 275
    .local v1, "rs":Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    div-int v2, p1, p2

    .line 276
    .local v2, "totalWords":I
    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v3

    .line 277
    .local v3, "messageWords":[I
    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 278
    rem-int v4, p1, p2

    .line 279
    .local v4, "startPad":I
    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v6, 0x0

    .line 280
    .local v6, "messageBits":Lcom/google/zxing/common/BitArray;
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 281
    array-length v5, v3

    :goto_0
    if-ge v7, v5, :cond_0

    aget v8, v3, v7

    .line 282
    .local v8, "messageWord":I
    invoke-virtual {v6, v8, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 281
    .end local v8    # "messageWord":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-object v6
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .locals 4
    .param p0, "compact"    # Z
    .param p1, "layers"    # I
    .param p2, "messageSizeInWords"    # I

    .line 221
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 222
    .local v0, "modeMessage":Lcom/google/zxing/common/BitArray;
    const/4 v1, 0x4

    if-eqz p0, :cond_0

    .line 223
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 224
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 225
    const/16 v2, 0x1c

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_0
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 228
    add-int/lit8 v2, p2, -0x1

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 229
    const/16 v2, 0x28

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .locals 3
    .param p0, "wordSize"    # I

    .line 302
    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported word size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 310
    :cond_1
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 308
    :cond_2
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 306
    :cond_3
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 304
    :cond_4
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .locals 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I

    .line 319
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 321
    .local v0, "out":Lcom/google/zxing/common/BitArray;
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 322
    .local v1, "n":I
    const/4 v2, 0x1

    shl-int v3, v2, p1

    add-int/lit8 v3, v3, -0x2

    .line 323
    .local v3, "mask":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 323
    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 324
    const/4 v6, 0x0

    .line 325
    .local v6, "word":I
    move v7, v6

    const/4 v6, 0x0

    .line 325
    .local v6, "j":I
    .local v7, "word":I
    :goto_1
    if-ge v6, p1, :cond_2

    .line 326
    add-int v8, v5, v6

    if-ge v8, v1, :cond_0

    add-int v8, v5, v6

    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 327
    :cond_0
    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v6

    shl-int v8, v2, v8

    or-int/2addr v7, v8

    .line 325
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 330
    .end local v6    # "j":I
    :cond_2
    and-int v6, v7, v3

    if-ne v6, v3, :cond_3

    .line 331
    and-int v6, v7, v3

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 332
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 333
    :cond_3
    and-int v6, v7, v3

    if-nez v6, :cond_4

    .line 334
    or-int/lit8 v6, v7, 0x1

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 335
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 337
    :cond_4
    invoke-virtual {v0, v7, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 323
    .end local v7    # "word":I
    :goto_2
    add-int/2addr v5, p1

    goto :goto_0

    .line 340
    .end local v5    # "i":I
    :cond_5
    return-object v0
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .line 344
    if-eqz p1, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/16 v0, 0x70

    :goto_0
    shl-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    mul-int v0, v0, p0

    return v0
.end method
