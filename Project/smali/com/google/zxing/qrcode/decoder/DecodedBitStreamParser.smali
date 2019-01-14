.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 17
    .param p0, "bytes"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 56
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p1

    .line 56
    new-instance v2, Lcom/google/zxing/common/BitSource;

    move-object/from16 v10, p0

    invoke-direct {v2, v10}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 57
    .local v2, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v3

    .line 58
    .local v11, "result":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v3

    .line 59
    .local v12, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, -0x1

    .line 60
    .local v3, "symbolSequence":I
    const/4 v4, -0x1

    .line 63
    .local v4, "parityData":I
    const/4 v5, 0x0

    .line 64
    .local v5, "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    const/4 v6, 0x0

    move v14, v3

    move v15, v4

    move-object v13, v5

    const/4 v3, 0x0

    .line 64
    .end local v4    # "parityData":I
    .end local v5    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .local v3, "value":I
    .local v6, "fc1InEffect":Z
    .local v13, "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .local v14, "symbolSequence":I
    .local v15, "parityData":I
    :goto_0
    move v8, v6

    .line 68
    .end local v6    # "fc1InEffect":Z
    .local v8, "fc1InEffect":Z
    :try_start_0
    invoke-virtual {v2}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 70
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 70
    .local v4, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    goto :goto_1

    .line 72
    .end local v4    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_0
    invoke-virtual {v2, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v4

    .line 72
    .restart local v4    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_1
    move-object v7, v4

    .line 74
    .end local v4    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .local v7, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v7, v4, :cond_d

    .line 75
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v7, v4, :cond_c

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v4, :cond_1

    .line 77
    move-object v1, v7

    move/from16 v16, v8

    goto/16 :goto_5

    .line 78
    :cond_1
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v4, :cond_3

    .line 79
    invoke-virtual {v2}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_2

    .line 80
    .end local v3    # "value":I
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 84
    .restart local v3    # "value":I
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    move v14, v5

    .line 85
    invoke-virtual {v2, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 120
    .end local v15    # "parityData":I
    .local v4, "parityData":I
    move v15, v4

    .line 120
    .end local v4    # "parityData":I
    .end local v7    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v8    # "fc1InEffect":Z
    .local v1, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v6    # "fc1InEffect":Z
    .restart local v15    # "parityData":I
    :goto_2
    move-object v1, v7

    move v6, v8

    goto/16 :goto_6

    .line 86
    .end local v1    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v6    # "fc1InEffect":Z
    .restart local v7    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v8    # "fc1InEffect":Z
    :cond_3
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v4, :cond_5

    .line 88
    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v4

    .line 89
    invoke-static {v4}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v4

    .line 90
    move-object v13, v4

    if-nez v4, :cond_4

    .line 91
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 93
    :cond_4
    goto :goto_2

    .line 95
    .end local v3    # "value":I
    :cond_5
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v3, :cond_7

    .line 97
    invoke-virtual {v2, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 98
    .local v3, "subset":I
    invoke-virtual {v7, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 99
    .local v4, "countHanzi":I
    if-ne v3, v9, :cond_6

    .line 100
    invoke-static {v2, v11, v4}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 102
    .end local v4    # "countHanzi":I
    :cond_6
    goto :goto_2

    .line 105
    .end local v3    # "subset":I
    :cond_7
    invoke-virtual {v7, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    move v6, v3

    .line 106
    .local v6, "count":I
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v3, :cond_8

    .line 107
    invoke-static {v2, v11, v6}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 120
    :goto_3
    move v9, v6

    move-object v1, v7

    move/from16 v16, v8

    goto :goto_4

    .line 108
    :cond_8
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v3, :cond_9

    .line 109
    invoke-static {v2, v11, v6, v8}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto :goto_3

    .line 110
    :cond_9
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v3, :cond_a

    .line 111
    move-object v3, v2

    move-object v4, v11

    move v5, v6

    move v9, v6

    move-object v6, v13

    .line 111
    .end local v6    # "count":I
    .local v9, "count":I
    move-object v1, v7

    move-object v7, v12

    .line 111
    .end local v7    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v1    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    move/from16 v16, v8

    move-object/from16 v8, p3

    .line 111
    .end local v8    # "fc1InEffect":Z
    .local v16, "fc1InEffect":Z
    invoke-static/range {v3 .. v8}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_4

    .line 112
    .end local v1    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v9    # "count":I
    .end local v16    # "fc1InEffect":Z
    .restart local v6    # "count":I
    .restart local v7    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v8    # "fc1InEffect":Z
    :cond_a
    move v9, v6

    move-object v1, v7

    move/from16 v16, v8

    .line 112
    .end local v6    # "count":I
    .end local v7    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v8    # "fc1InEffect":Z
    .restart local v1    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v9    # "count":I
    .restart local v16    # "fc1InEffect":Z
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v1, v3, :cond_b

    .line 113
    invoke-static {v2, v11, v9}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 120
    .end local v1    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v9    # "count":I
    .end local v16    # "fc1InEffect":Z
    .restart local v6    # "count":I
    .restart local v7    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v8    # "fc1InEffect":Z
    :goto_4
    move v3, v9

    move/from16 v6, v16

    .line 120
    .end local v6    # "count":I
    .end local v7    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v8    # "fc1InEffect":Z
    .restart local v1    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v9    # "count":I
    .restart local v16    # "fc1InEffect":Z
    goto :goto_6

    .line 115
    :cond_b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 77
    .end local v1    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v9    # "count":I
    .end local v16    # "fc1InEffect":Z
    .local v3, "value":I
    .restart local v7    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v8    # "fc1InEffect":Z
    :cond_c
    move-object v1, v7

    move/from16 v16, v8

    .line 77
    .end local v7    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v8    # "fc1InEffect":Z
    .restart local v1    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v16    # "fc1InEffect":Z
    :goto_5
    const/4 v4, 0x1

    .line 120
    .end local v16    # "fc1InEffect":Z
    .local v4, "fc1InEffect":Z
    move v6, v4

    goto :goto_6

    .line 120
    .end local v1    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v4    # "fc1InEffect":Z
    .restart local v7    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v8    # "fc1InEffect":Z
    :cond_d
    move-object v1, v7

    move/from16 v16, v8

    move/from16 v6, v16

    .line 120
    .end local v7    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v8    # "fc1InEffect":Z
    .restart local v1    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .local v6, "fc1InEffect":Z
    :goto_6
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v4, :cond_10

    .line 124
    .end local v1    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v3    # "value":I
    .end local v6    # "fc1InEffect":Z
    .end local v13    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    nop

    .line 126
    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    .line 127
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    move-object v6, v4

    goto :goto_7

    :cond_e
    move-object v6, v12

    :goto_7
    if-nez p2, :cond_f

    .line 129
    move-object v7, v4

    goto :goto_8

    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :goto_8
    move-object v3, v1

    move-object v4, v10

    move v8, v14

    move v9, v15

    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    .line 126
    return-object v1

    .line 64
    .restart local v3    # "value":I
    .restart local v6    # "fc1InEffect":Z
    .restart local v13    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    :cond_10
    move-object/from16 v1, p1

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 121
    .end local v3    # "value":I
    .end local v6    # "fc1InEffect":Z
    :catch_0
    move-exception v0

    .line 121
    .local v13, "iae":Ljava/lang/IllegalArgumentException;
    move-object v1, v13

    .line 123
    .end local v13    # "iae":Ljava/lang/IllegalArgumentException;
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "fc1InEffect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 256
    .local v0, "start":I
    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 258
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 260
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 261
    .local v1, "nextTwoCharsBits":I
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    rem-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    add-int/lit8 p2, p2, -0x2

    .line 264
    .end local v1    # "nextTwoCharsBits":I
    goto :goto_0

    .line 265
    :cond_1
    if-ne p2, v1, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 268
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 270
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    :cond_3
    if-eqz p3, :cond_6

    .line 275
    move v2, v0

    .line 275
    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 276
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_5

    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    .line 279
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 282
    :cond_4
    const/16 v3, 0x1d

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 275
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "currentCharacterSetECI"    # Lcom/google/zxing/common/CharacterSetECI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 216
    .local p4, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    shl-int/lit8 v0, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 217
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 220
    :cond_0
    new-array v0, p2, [B

    .line 221
    .local v0, "readBytes":[B
    const/4 v1, 0x0

    .line 221
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 222
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "i":I
    :cond_1
    if-nez p3, :cond_2

    .line 231
    invoke-static {v0, p5}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "encoding":Ljava/lang/String;
    goto :goto_1

    .line 233
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    .line 236
    .restart local v1    # "encoding":Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    nop

    .line 240
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    return-void

    .line 237
    :catch_0
    move-exception v2

    .line 238
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 141
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 142
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 147
    :cond_0
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    .line 148
    .local v0, "buffer":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 149
    .local v1, "offset":I
    .local v2, "twoBytes":I
    .local v3, "assembledTwoBytes":I
    :goto_0
    if-lez p2, :cond_2

    .line 151
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 152
    move v2, v4

    div-int/lit8 v4, v4, 0x60

    shl-int/lit8 v4, v4, 0x8

    rem-int/lit8 v5, v2, 0x60

    or-int/2addr v4, v5

    .line 153
    move v3, v4

    const/16 v5, 0x3bf

    if-ge v4, v5, :cond_1

    .line 155
    const v4, 0xa1a1

    add-int/2addr v3, v4

    goto :goto_1

    .line 158
    :cond_1
    const v4, 0xa6a1

    add-int/2addr v3, v4

    .line 160
    :goto_1
    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 161
    add-int/lit8 v4, v1, 0x1

    int-to-byte v5, v3

    aput-byte v5, v0, v4

    .line 162
    add-int/lit8 v1, v1, 0x2

    .line 163
    add-int/lit8 p2, p2, -0x1

    .line 164
    .end local v2    # "twoBytes":I
    .end local v3    # "assembledTwoBytes":I
    goto :goto_0

    .line 167
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "GB2312"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    return-void

    .line 168
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    .line 169
    .local v2, "ignored":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 177
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 178
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 183
    :cond_0
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    .line 184
    .local v0, "buffer":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 185
    .local v1, "offset":I
    .local v2, "twoBytes":I
    .local v3, "assembledTwoBytes":I
    :goto_0
    if-lez p2, :cond_2

    .line 187
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 188
    move v2, v4

    div-int/lit16 v4, v4, 0xc0

    shl-int/lit8 v4, v4, 0x8

    rem-int/lit16 v5, v2, 0xc0

    or-int/2addr v4, v5

    .line 189
    move v3, v4

    const/16 v5, 0x1f00

    if-ge v4, v5, :cond_1

    .line 191
    const v4, 0x8140

    add-int/2addr v3, v4

    goto :goto_1

    .line 194
    :cond_1
    const v4, 0xc140

    add-int/2addr v3, v4

    .line 196
    :goto_1
    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 197
    add-int/lit8 v4, v1, 0x1

    int-to-byte v5, v3

    aput-byte v5, v0, v4

    .line 198
    add-int/lit8 v1, v1, 0x2

    .line 199
    add-int/lit8 p2, p2, -0x1

    .line 200
    .end local v2    # "twoBytes":I
    .end local v3    # "assembledTwoBytes":I
    goto :goto_0

    .line 203
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "SJIS"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    return-void

    .line 204
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    .line 205
    .local v2, "ignored":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 293
    const/4 v0, 0x0

    .line 293
    .local v0, "threeDigitsBits":I
    :goto_0
    const/4 v1, 0x3

    const/16 v2, 0xa

    if-lt p2, v1, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 296
    .end local v0    # "threeDigitsBits":I
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 298
    .restart local v0    # "threeDigitsBits":I
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 299
    move v0, v1

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_1

    .line 300
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 302
    :cond_1
    div-int/lit8 v1, v0, 0x64

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    div-int/lit8 v1, v0, 0xa

    rem-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    rem-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 p2, p2, -0x3

    .line 306
    .end local v0    # "threeDigitsBits":I
    goto :goto_0

    .line 307
    .restart local v0    # "threeDigitsBits":I
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 309
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    .line 310
    .end local v0    # "threeDigitsBits":I
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 312
    .restart local v0    # "threeDigitsBits":I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 313
    .local v0, "twoDigitsBits":I
    move v0, v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_4

    .line 314
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 316
    :cond_4
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    rem-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    .end local v0    # "twoDigitsBits":I
    return-void

    .line 318
    .local v0, "threeDigitsBits":I
    :cond_5
    const/4 v1, 0x1

    if-ne p2, v1, :cond_8

    .line 320
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_6

    .line 321
    .end local v0    # "threeDigitsBits":I
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 323
    .restart local v0    # "threeDigitsBits":I
    :cond_6
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 324
    .local v0, "digitBits":I
    move v0, v1

    if-lt v1, v2, :cond_7

    .line 325
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 327
    :cond_7
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    .end local v0    # "digitBits":I
    :cond_8
    return-void
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .locals 4
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 332
    .local v0, "firstByte":I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 333
    move v0, v2

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 335
    and-int/lit8 v1, v0, 0x7f

    return v1

    .line 337
    :cond_0
    and-int/lit16 v2, v0, 0xc0

    if-ne v2, v3, :cond_1

    .line 339
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 340
    .local v2, "secondByte":I
    and-int/lit8 v3, v0, 0x3f

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    return v1

    .line 342
    .end local v2    # "secondByte":I
    :cond_1
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_2

    .line 344
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 345
    .local v2, "secondThirdBytes":I
    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v1, v3, 0x10

    or-int/2addr v1, v2

    return v1

    .line 347
    .end local v2    # "secondThirdBytes":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method

.method private static toAlphaNumericChar(I)C
    .locals 1
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 245
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 247
    :cond_0
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    aget-char v0, v0, p0

    return v0
.end method
