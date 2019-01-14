.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 70
    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 73
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 81
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 82
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 83
    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 84
    .local v0, "nineHundred":Ljava/math/BigInteger;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 85
    const/4 v1, 0x2

    .line 85
    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 86
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "nineHundred":Ljava/math/BigInteger;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 24
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "codeIndex"    # I
    .param p4, "result"    # Ljava/lang/StringBuilder;

    move/from16 v0, p0

    .line 444
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 445
    .local v2, "decodedBytes":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    const/16 v6, 0x386

    const-wide/16 v7, 0x384

    const/16 v9, 0x39c

    const/4 v10, 0x6

    const/16 v11, 0x385

    const/16 v12, 0x384

    const/4 v13, 0x0

    if-ne v0, v11, :cond_7

    .line 448
    const/4 v14, 0x0

    .line 449
    .local v14, "count":I
    const-wide/16 v15, 0x0

    .line 450
    .local v15, "value":J
    new-array v3, v10, [I

    .line 451
    .local v3, "byteCompactedCodewords":[I
    const/16 v17, 0x0

    .line 452
    .local v17, "end":Z
    add-int/lit8 v18, p3, 0x1

    .line 452
    .local v18, "codeIndex":I
    aget v1, p1, p3

    .line 452
    .end local p3    # "codeIndex":I
    move-wide/from16 v22, v15

    move v15, v14

    move/from16 v14, v18

    move-wide/from16 v18, v22

    .line 453
    .local v1, "nextCode":I
    .local v14, "codeIndex":I
    .local v15, "count":I
    .local v18, "value":J
    :goto_0
    aget v10, p1, v13

    if-ge v14, v10, :cond_4

    if-nez v17, :cond_4

    .line 454
    add-int/lit8 v10, v15, 0x1

    .line 454
    .local v10, "count":I
    aput v1, v3, v15

    .line 456
    .end local v15    # "count":I
    mul-long v15, v18, v7

    int-to-long v7, v1

    add-long v18, v15, v7

    .line 457
    add-int/lit8 v7, v14, 0x1

    .line 457
    .local v7, "codeIndex":I
    aget v8, p1, v14

    .line 459
    .end local v14    # "codeIndex":I
    move v1, v8

    if-eq v8, v12, :cond_3

    if-eq v1, v11, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v9, :cond_3

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    const/16 v8, 0x39a

    if-ne v1, v8, :cond_0

    goto :goto_2

    .line 469
    :cond_0
    rem-int/lit8 v8, v10, 0x5

    if-nez v8, :cond_2

    if-lez v10, :cond_2

    .line 472
    const/4 v8, 0x0

    .line 472
    .local v8, "j":I
    :goto_1
    const/4 v14, 0x6

    if-ge v8, v14, :cond_1

    .line 473
    rsub-int/lit8 v14, v8, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v4, v18, v14

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 472
    add-int/lit8 v8, v8, 0x1

    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    goto :goto_1

    .line 475
    .end local v8    # "j":I
    :cond_1
    const-wide/16 v18, 0x0

    .line 476
    const/4 v15, 0x0

    .line 452
    .end local v10    # "count":I
    .restart local v15    # "count":I
    move v14, v7

    goto :goto_4

    .line 452
    .end local v15    # "count":I
    .restart local v10    # "count":I
    :cond_2
    move v14, v7

    goto :goto_3

    .line 466
    :cond_3
    :goto_2
    add-int/lit8 v14, v7, -0x1

    .line 467
    .end local v7    # "codeIndex":I
    .restart local v14    # "codeIndex":I
    const/16 v17, 0x1

    .line 452
    .end local v10    # "count":I
    .restart local v15    # "count":I
    :goto_3
    move v15, v10

    :goto_4
    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    const-wide/16 v7, 0x384

    const/4 v10, 0x6

    goto :goto_0

    .line 482
    :cond_4
    aget v4, p1, v13

    if-ne v14, v4, :cond_5

    if-ge v1, v12, :cond_5

    .line 483
    add-int/lit8 v4, v15, 0x1

    .line 483
    .local v4, "count":I
    aput v1, v3, v15

    .line 483
    .end local v15    # "count":I
    goto :goto_5

    .line 489
    .end local v4    # "count":I
    .restart local v15    # "count":I
    :cond_5
    move v4, v15

    .line 489
    .end local v15    # "count":I
    .restart local v4    # "count":I
    .local v13, "i":I
    :goto_5
    move v5, v13

    .line 489
    .end local v13    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_6

    .line 490
    aget v6, v3, v5

    int-to-byte v6, v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 489
    add-int/lit8 v13, v5, 0x1

    .line 489
    .end local v5    # "i":I
    .restart local v13    # "i":I
    goto :goto_5

    .line 493
    .end local v1    # "nextCode":I
    .end local v3    # "byteCompactedCodewords":[I
    .end local v4    # "count":I
    .end local v13    # "i":I
    .end local v17    # "end":Z
    .end local v18    # "value":J
    :cond_6
    goto/16 :goto_c

    .line 493
    .end local v14    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :cond_7
    if-ne v0, v9, :cond_10

    .line 496
    const/4 v3, 0x0

    .line 497
    .local v3, "count":I
    const-wide/16 v4, 0x0

    .line 498
    .local v4, "value":J
    move-wide v7, v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    move v4, v3

    move/from16 v3, p3

    .line 499
    .end local p3    # "codeIndex":I
    .local v1, "end":Z
    .local v3, "codeIndex":I
    .local v4, "count":I
    .local v5, "code":I
    .local v7, "value":J
    :goto_6
    aget v10, p1, v13

    if-ge v3, v10, :cond_f

    if-nez v1, :cond_f

    .line 500
    add-int/lit8 v10, v3, 0x1

    .line 500
    .local v10, "codeIndex":I
    aget v3, p1, v3

    .line 501
    .end local v3    # "codeIndex":I
    move v5, v3

    if-ge v3, v12, :cond_8

    .line 502
    add-int/lit8 v4, v4, 0x1

    .line 504
    const-wide/16 v14, 0x384

    mul-long v17, v7, v14

    int-to-long v13, v5

    add-long v7, v17, v13

    .line 517
    const/16 v3, 0x39a

    const/16 v13, 0x3a0

    const/16 v14, 0x39b

    goto :goto_9

    .line 506
    :cond_8
    if-eq v5, v12, :cond_b

    if-eq v5, v11, :cond_b

    if-eq v5, v6, :cond_b

    if-eq v5, v9, :cond_b

    const/16 v13, 0x3a0

    if-eq v5, v13, :cond_a

    const/16 v14, 0x39b

    if-eq v5, v14, :cond_9

    const/16 v3, 0x39a

    if-ne v5, v3, :cond_c

    goto :goto_8

    .line 513
    :cond_9
    const/16 v3, 0x39a

    goto :goto_8

    :cond_a
    const/16 v3, 0x39a

    goto :goto_7

    :cond_b
    const/16 v3, 0x39a

    const/16 v13, 0x3a0

    :goto_7
    const/16 v14, 0x39b

    :goto_8
    add-int/lit8 v10, v10, -0x1

    .line 514
    const/4 v1, 0x1

    .line 517
    :cond_c
    :goto_9
    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_e

    if-lez v4, :cond_e

    .line 520
    const/4 v15, 0x0

    .line 520
    .local v15, "j":I
    :goto_a
    move/from16 v20, v15

    .line 520
    .end local v15    # "j":I
    .local v20, "j":I
    move/from16 v3, v20

    const/4 v6, 0x6

    if-ge v3, v6, :cond_d

    .line 521
    .end local v20    # "j":I
    .local v3, "j":I
    rsub-int/lit8 v15, v3, 0x5

    mul-int/lit8 v15, v15, 0x8

    move/from16 v21, v10

    shr-long v9, v7, v15

    .line 521
    .end local v10    # "codeIndex":I
    .local v21, "codeIndex":I
    long-to-int v9, v9

    int-to-byte v9, v9

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 520
    add-int/lit8 v15, v3, 0x1

    .line 520
    .end local v3    # "j":I
    .restart local v15    # "j":I
    move/from16 v10, v21

    const/16 v3, 0x39a

    const/16 v6, 0x386

    const/16 v9, 0x39c

    goto :goto_a

    .line 523
    .end local v15    # "j":I
    .end local v21    # "codeIndex":I
    .restart local v10    # "codeIndex":I
    :cond_d
    move/from16 v21, v10

    .line 523
    .end local v10    # "codeIndex":I
    .restart local v21    # "codeIndex":I
    const-wide/16 v7, 0x0

    .line 524
    const/4 v3, 0x0

    .line 526
    .end local v4    # "count":I
    .local v3, "count":I
    move v4, v3

    goto :goto_b

    .line 526
    .end local v3    # "count":I
    .end local v21    # "codeIndex":I
    .restart local v4    # "count":I
    .restart local v10    # "codeIndex":I
    :cond_e
    move/from16 v21, v10

    const/4 v6, 0x6

    .line 498
    .end local v10    # "codeIndex":I
    .restart local v21    # "codeIndex":I
    :goto_b
    move/from16 v3, v21

    const/16 v6, 0x386

    const/16 v9, 0x39c

    const/4 v13, 0x0

    goto :goto_6

    .line 528
    .end local v1    # "end":Z
    .end local v4    # "count":I
    .end local v5    # "code":I
    .end local v7    # "value":J
    .end local v21    # "codeIndex":I
    .local v3, "codeIndex":I
    :cond_f
    move v14, v3

    goto :goto_c

    .line 528
    .end local v3    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :cond_10
    move/from16 v14, p3

    .line 528
    .end local p3    # "codeIndex":I
    .restart local v14    # "codeIndex":I
    :goto_c
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v4, p2

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v3, p4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    return v14
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 9
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .local v0, "result":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 99
    .local v1, "encoding":Ljava/nio/charset/Charset;
    const/4 v3, 0x1

    .line 100
    .local v3, "codeIndex":I
    add-int/2addr v3, v2

    aget v2, p0, v2

    .line 101
    .local v2, "code":I
    new-instance v4, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    const/4 v5, 0x0

    move-object v6, v5

    .line 102
    .local v4, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .local v6, "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    :goto_0
    const/4 v7, 0x0

    aget v7, p0, v7

    if-ge v3, v7, :cond_2

    .line 103
    const/16 v7, 0x391

    if-eq v2, v7, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 141
    add-int/lit8 v3, v3, -0x1

    .line 142
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    goto :goto_2

    .line 131
    :pswitch_0
    invoke-static {p0, v3, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v3

    .line 132
    goto :goto_2

    .line 118
    :pswitch_1
    add-int/lit8 v7, v3, 0x1

    .line 118
    .local v7, "codeIndex":I
    aget v3, p0, v3

    .line 119
    .end local v3    # "codeIndex":I
    invoke-static {v3}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 121
    goto :goto_1

    .line 124
    .end local v7    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :pswitch_2
    add-int/lit8 v3, v3, 0x2

    .line 125
    goto :goto_2

    .line 128
    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    .line 129
    goto :goto_2

    .line 136
    .end local v6    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    :pswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 115
    .restart local v6    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    :pswitch_5
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    .line 116
    goto :goto_2

    .line 109
    :pswitch_6
    invoke-static {v2, p0, v1, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v3

    .line 110
    goto :goto_2

    .line 105
    :pswitch_7
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    .line 106
    goto :goto_2

    .line 112
    :cond_0
    add-int/lit8 v7, v3, 0x1

    .line 112
    .restart local v7    # "codeIndex":I
    aget v3, p0, v3

    .line 112
    .end local v3    # "codeIndex":I
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    nop

    .line 145
    .end local v7    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :goto_1
    move v3, v7

    :goto_2
    array-length v7, p0

    if-ge v3, v7, :cond_1

    .line 146
    add-int/lit8 v7, v3, 0x1

    .line 146
    .restart local v7    # "codeIndex":I
    aget v2, p0, v3

    .line 101
    .end local v3    # "codeIndex":I
    move v3, v7

    goto :goto_0

    .line 148
    .end local v6    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v7    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 151
    .restart local v6    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 152
    .end local v6    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 154
    .restart local v6    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    :cond_3
    new-instance v7, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8, v5, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v5, v6

    .line 155
    .end local v6    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    .local v5, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v5, v7

    invoke-virtual {v7, v4}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 156
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 626
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 627
    .local v0, "result":Ljava/math/BigInteger;
    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 627
    .local v0, "i":I
    .local v2, "result":Ljava/math/BigInteger;
    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_0

    .line 628
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v0

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 631
    .local v4, "resultString":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_1

    .line 632
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 634
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 161
    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-le v0, v2, :cond_0

    .line 163
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 165
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 166
    .local v2, "segmentIndexArray":[I
    move v3, p1

    const/4 p1, 0x0

    .line 166
    .local v3, "codeIndex":I
    .local p1, "i":I
    :goto_0
    if-ge p1, v0, :cond_1

    .line 167
    aget v4, p0, v3

    aput v4, v2, p1

    .line 166
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local p1    # "i":I
    :cond_1
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local p1, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, v3, p1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 174
    .end local v3    # "codeIndex":I
    .local v0, "codeIndex":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 176
    aget v3, p0, v0

    const/16 v4, 0x39b

    const/16 v5, 0x39a

    const/4 v6, 0x1

    if-ne v3, v4, :cond_5

    .line 177
    add-int/lit8 v0, v0, 0x1

    .line 178
    aget v3, p0, v1

    sub-int/2addr v3, v0

    new-array v3, v3, [I

    .line 179
    .local v3, "additionalOptionCodeWords":[I
    const/4 v4, 0x0

    .line 181
    .local v4, "additionalOptionCodeWordsIndex":I
    move v7, v4

    const/4 v8, 0x0

    move v4, v0

    const/4 v0, 0x0

    .line 182
    .local v0, "end":Z
    .local v4, "codeIndex":I
    .local v7, "additionalOptionCodeWordsIndex":I
    .local v8, "code":I
    :goto_1
    aget v9, p0, v1

    if-ge v4, v9, :cond_4

    if-nez v0, :cond_4

    .line 183
    add-int/lit8 v9, v4, 0x1

    .line 183
    .local v9, "codeIndex":I
    aget v4, p0, v4

    .line 184
    .end local v4    # "codeIndex":I
    move v8, v4

    const/16 v10, 0x384

    if-ge v4, v10, :cond_2

    .line 185
    add-int/lit8 v4, v7, 0x1

    .line 185
    .local v4, "additionalOptionCodeWordsIndex":I
    aput v8, v3, v7

    .line 181
    .end local v7    # "additionalOptionCodeWordsIndex":I
    move v7, v4

    move v4, v9

    goto :goto_1

    .line 187
    .end local v4    # "additionalOptionCodeWordsIndex":I
    .restart local v7    # "additionalOptionCodeWordsIndex":I
    :cond_2
    if-eq v8, v5, :cond_3

    .line 194
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 189
    :cond_3
    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 190
    add-int/lit8 v4, v9, 0x1

    .line 191
    .end local v9    # "codeIndex":I
    .local v4, "codeIndex":I
    const/4 v0, 0x1

    .line 192
    goto :goto_1

    .line 199
    .end local v8    # "code":I
    :cond_4
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 200
    .end local v0    # "end":Z
    .end local v3    # "additionalOptionCodeWords":[I
    .end local v7    # "additionalOptionCodeWordsIndex":I
    nop

    .line 205
    move v0, v4

    goto :goto_2

    .line 200
    .end local v4    # "codeIndex":I
    .local v0, "codeIndex":I
    :cond_5
    aget v1, p0, v0

    if-ne v1, v5, :cond_6

    .line 201
    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    .line 205
    :cond_6
    :goto_2
    return v0
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 12
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .line 290
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 291
    .local v0, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 292
    .local v1, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v2, 0x0

    .line 293
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1d

    .line 294
    aget v3, p0, v2

    .line 295
    .local v3, "subModeCh":I
    const/4 v4, 0x0

    .line 296
    .local v4, "ch":C
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x1c

    const/16 v7, 0x1b

    const/16 v8, 0x391

    const/16 v9, 0x384

    const/16 v10, 0x1a

    const/16 v11, 0x1d

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 403
    :pswitch_0
    move-object v0, v1

    .line 404
    if-ge v3, v11, :cond_0

    .line 405
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_1

    .line 407
    :cond_0
    if-ne v3, v11, :cond_1

    .line 408
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 409
    :cond_1
    if-ne v3, v8, :cond_2

    .line 412
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 413
    :cond_2
    if-ne v3, v9, :cond_1b

    .line 414
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 389
    :pswitch_1
    move-object v0, v1

    .line 390
    if-ge v3, v10, :cond_3

    .line 391
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto/16 :goto_1

    .line 393
    :cond_3
    if-ne v3, v10, :cond_4

    .line 394
    const/16 v4, 0x20

    goto/16 :goto_1

    .line 395
    :cond_4
    if-ne v3, v9, :cond_1b

    .line 396
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 374
    :pswitch_2
    if-ge v3, v11, :cond_5

    .line 375
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_1

    .line 377
    :cond_5
    if-ne v3, v11, :cond_6

    .line 378
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 379
    :cond_6
    if-ne v3, v8, :cond_7

    .line 380
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 381
    :cond_7
    if-ne v3, v9, :cond_1b

    .line 382
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 349
    :pswitch_3
    const/16 v5, 0x19

    if-ge v3, v5, :cond_8

    .line 350
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_1

    .line 352
    :cond_8
    if-ne v3, v5, :cond_9

    .line 353
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 354
    :cond_9
    if-ne v3, v10, :cond_a

    .line 355
    const/16 v4, 0x20

    goto/16 :goto_1

    .line 356
    :cond_a
    if-ne v3, v7, :cond_b

    .line 357
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 358
    :cond_b
    if-ne v3, v6, :cond_c

    .line 359
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 360
    :cond_c
    if-ne v3, v11, :cond_d

    .line 362
    move-object v1, v0

    .line 363
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 364
    :cond_d
    if-ne v3, v8, :cond_e

    .line 365
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 366
    :cond_e
    if-ne v3, v9, :cond_1b

    .line 367
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 323
    :pswitch_4
    if-ge v3, v10, :cond_f

    .line 324
    add-int/lit8 v5, v3, 0x61

    int-to-char v4, v5

    goto :goto_1

    .line 326
    :cond_f
    if-ne v3, v10, :cond_10

    .line 327
    const/16 v4, 0x20

    goto :goto_1

    .line 328
    :cond_10
    if-ne v3, v7, :cond_11

    .line 330
    move-object v1, v0

    .line 331
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 332
    :cond_11
    if-ne v3, v6, :cond_12

    .line 333
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 334
    :cond_12
    if-ne v3, v11, :cond_13

    .line 336
    move-object v1, v0

    .line 337
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 338
    :cond_13
    if-ne v3, v8, :cond_14

    .line 340
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 341
    :cond_14
    if-ne v3, v9, :cond_1b

    .line 342
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 299
    :pswitch_5
    if-ge v3, v10, :cond_15

    .line 301
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto :goto_1

    .line 303
    :cond_15
    if-ne v3, v10, :cond_16

    .line 304
    const/16 v4, 0x20

    goto :goto_1

    .line 305
    :cond_16
    if-ne v3, v7, :cond_17

    .line 306
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 307
    :cond_17
    if-ne v3, v6, :cond_18

    .line 308
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 309
    :cond_18
    if-ne v3, v11, :cond_19

    .line 311
    move-object v1, v0

    .line 312
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 313
    :cond_19
    if-ne v3, v8, :cond_1a

    .line 314
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 315
    :cond_1a
    if-ne v3, v9, :cond_1b

    .line 316
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 419
    :cond_1b
    :goto_1
    if-eqz v4, :cond_1c

    .line 421
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 424
    .end local v3    # "subModeCh":I
    .end local v4    # "ch":C
    goto/16 :goto_0

    .line 425
    :cond_1d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 5
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "count":I
    const/4 v1, 0x0

    .line 544
    .local v1, "end":Z
    const/16 v2, 0xf

    new-array v2, v2, [I

    .line 546
    .local v2, "numericCodewords":[I
    :goto_0
    const/4 v3, 0x0

    aget v4, p0, v3

    if-ge p1, v4, :cond_6

    if-nez v1, :cond_6

    .line 547
    add-int/lit8 v4, p1, 0x1

    .line 547
    .local v4, "codeIndex":I
    aget p1, p0, p1

    .line 548
    .local p1, "code":I
    aget v3, p0, v3

    if-ne v4, v3, :cond_0

    .line 549
    const/4 v1, 0x1

    .line 551
    :cond_0
    const/16 v3, 0x384

    if-ge p1, v3, :cond_1

    .line 552
    aput p1, v2, v0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 555
    :cond_1
    if-eq p1, v3, :cond_2

    const/16 v3, 0x385

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3a0

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39a

    if-ne p1, v3, :cond_3

    .line 561
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 562
    const/4 v1, 0x1

    .line 565
    :cond_3
    :goto_1
    rem-int/lit8 v3, v0, 0xf

    if-eqz v3, :cond_4

    const/16 v3, 0x386

    if-eq p1, v3, :cond_4

    if-eqz v1, :cond_5

    .line 572
    :cond_4
    if-lez v0, :cond_5

    .line 573
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const/4 p1, 0x0

    .line 578
    .end local v0    # "count":I
    .end local v3    # "s":Ljava/lang/String;
    .local p1, "count":I
    move v0, p1

    .line 544
    .end local p1    # "count":I
    .restart local v0    # "count":I
    :cond_5
    move p1, v4

    goto :goto_0

    .line 579
    .end local v4    # "codeIndex":I
    .local p1, "codeIndex":I
    :cond_6
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 8
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .line 220
    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 222
    .local v1, "textCompactionData":[I
    aget v2, p0, v0

    sub-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 224
    .local v2, "byteCompactionData":[I
    const/4 v3, 0x0

    .line 225
    .local v3, "index":I
    move v4, v3

    const/4 v5, 0x0

    move v3, p1

    const/4 p1, 0x0

    .line 226
    .local v3, "codeIndex":I
    .local v4, "index":I
    .local v5, "code":I
    .local p1, "end":Z
    :goto_0
    aget v6, p0, v0

    if-ge v3, v6, :cond_3

    if-nez p1, :cond_3

    .line 227
    add-int/lit8 v6, v3, 0x1

    .line 227
    .local v6, "codeIndex":I
    aget v3, p0, v3

    .line 228
    .end local v3    # "codeIndex":I
    move v5, v3

    const/16 v7, 0x384

    if-ge v3, v7, :cond_0

    .line 229
    div-int/lit8 v3, v5, 0x1e

    aput v3, v1, v4

    .line 230
    add-int/lit8 v3, v4, 0x1

    rem-int/lit8 v7, v5, 0x1e

    aput v7, v1, v3

    .line 231
    add-int/lit8 v4, v4, 0x2

    .line 225
    .end local v6    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :goto_1
    move v3, v6

    goto :goto_0

    .line 233
    .end local v3    # "codeIndex":I
    .restart local v6    # "codeIndex":I
    :cond_0
    const/16 v3, 0x391

    if-eq v5, v3, :cond_2

    const/16 v3, 0x3a0

    if-eq v5, v3, :cond_1

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    .line 261
    move v3, v6

    goto :goto_2

    .line 236
    :pswitch_0
    add-int/lit8 v3, v4, 0x1

    .line 236
    .local v3, "index":I
    aput v7, v1, v4

    .line 237
    .end local v4    # "index":I
    nop

    .line 225
    move v4, v3

    goto :goto_1

    .line 244
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_1
    :pswitch_1
    add-int/lit8 v3, v6, -0x1

    .line 245
    .end local v6    # "codeIndex":I
    .local v3, "codeIndex":I
    const/4 p1, 0x1

    .line 246
    goto :goto_0

    .line 254
    .end local v3    # "codeIndex":I
    .restart local v6    # "codeIndex":I
    :cond_2
    aput v3, v1, v4

    .line 255
    add-int/lit8 v3, v6, 0x1

    .line 255
    .restart local v3    # "codeIndex":I
    aget v5, p0, v6

    .line 256
    .end local v6    # "codeIndex":I
    aput v5, v2, v4

    .line 257
    add-int/lit8 v4, v4, 0x1

    .line 261
    :goto_2
    goto :goto_0

    .line 262
    .end local v5    # "code":I
    :cond_3
    invoke-static {v1, v2, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 263
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
