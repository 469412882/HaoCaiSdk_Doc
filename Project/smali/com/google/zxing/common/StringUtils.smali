.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 38
    const-string v0, "SJIS"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .locals 22
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 52
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    .line 52
    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 57
    :cond_0
    array-length v2, v0

    .line 58
    .local v2, "length":I
    const/4 v3, 0x1

    .line 59
    .local v3, "canBeISO88591":Z
    const/4 v4, 0x1

    .line 60
    .local v4, "canBeShiftJIS":Z
    const/4 v5, 0x1

    .line 61
    .local v5, "canBeUTF8":Z
    const/4 v6, 0x0

    .line 63
    .local v6, "utf8BytesLeft":I
    const/4 v7, 0x0

    .line 64
    .local v7, "utf2BytesChars":I
    const/4 v8, 0x0

    .line 65
    .local v8, "utf3BytesChars":I
    const/4 v9, 0x0

    .line 66
    .local v9, "utf4BytesChars":I
    const/4 v10, 0x0

    .line 68
    .local v10, "sjisBytesLeft":I
    const/4 v11, 0x0

    .line 70
    .local v11, "sjisKatakanaChars":I
    const/4 v12, 0x0

    .line 71
    .local v12, "sjisCurKatakanaWordLength":I
    const/4 v13, 0x0

    .line 72
    .local v13, "sjisCurDoubleBytesWordLength":I
    const/4 v14, 0x0

    .line 73
    .local v14, "sjisMaxKatakanaWordLength":I
    const/4 v15, 0x0

    .line 76
    .local v15, "sjisMaxDoubleBytesWordLength":I
    const/16 v16, 0x0

    .line 78
    .local v16, "isoHighOther":I
    array-length v1, v0

    move/from16 v17, v3

    .line 78
    .end local v3    # "canBeISO88591":Z
    .local v17, "canBeISO88591":Z
    const/16 v18, 0x0

    const/4 v3, 0x3

    const/16 v19, 0x1

    if-le v1, v3, :cond_1

    aget-byte v1, v0, v18

    const/16 v3, -0x11

    if-ne v1, v3, :cond_1

    aget-byte v1, v0, v19

    const/16 v3, -0x45

    if-ne v1, v3, :cond_1

    const/4 v1, 0x2

    aget-byte v3, v0, v1

    const/16 v1, -0x41

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v19, 0x0

    :goto_0
    move/from16 v1, v19

    .line 83
    .local v1, "utf8bom":Z
    nop

    .line 83
    .local v18, "i":I
    :goto_1
    move/from16 v3, v18

    .line 84
    .end local v18    # "i":I
    .local v3, "i":I
    if-ge v3, v2, :cond_16

    if-nez v17, :cond_3

    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    .line 171
    .end local v3    # "i":I
    :cond_2
    move/from16 v20, v2

    goto/16 :goto_9

    .line 87
    .restart local v3    # "i":I
    :cond_3
    :goto_2
    move/from16 v20, v2

    aget-byte v2, v0, v3

    .line 87
    .end local v2    # "length":I
    .local v20, "length":I
    and-int/lit16 v2, v2, 0xff

    .line 90
    .local v2, "value":I
    if-eqz v5, :cond_8

    .line 91
    if-lez v6, :cond_4

    .line 92
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_7

    .line 95
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 97
    :cond_4
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_8

    .line 98
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_7

    .line 101
    add-int/lit8 v6, v6, 0x1

    .line 102
    and-int/lit8 v0, v2, 0x20

    if-nez v0, :cond_5

    .line 103
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 105
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 106
    and-int/lit8 v0, v2, 0x10

    if-nez v0, :cond_6

    .line 107
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 109
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 110
    and-int/lit8 v0, v2, 0x8

    if-nez v0, :cond_7

    .line 111
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 113
    :cond_7
    const/4 v0, 0x0

    .line 124
    .end local v5    # "canBeUTF8":Z
    .local v0, "canBeUTF8":Z
    move v5, v0

    .line 124
    .end local v0    # "canBeUTF8":Z
    .restart local v5    # "canBeUTF8":Z
    :cond_8
    :goto_3
    const/16 v0, 0x7f

    if-eqz v17, :cond_b

    .line 125
    if-le v2, v0, :cond_9

    const/16 v0, 0xa0

    if-ge v2, v0, :cond_9

    .line 126
    const/4 v0, 0x0

    .line 139
    .end local v17    # "canBeISO88591":Z
    .local v0, "canBeISO88591":Z
    move/from16 v17, v0

    goto :goto_4

    .line 127
    .end local v0    # "canBeISO88591":Z
    .restart local v17    # "canBeISO88591":Z
    :cond_9
    const/16 v0, 0x9f

    if-le v2, v0, :cond_b

    .line 128
    const/16 v0, 0xc0

    if-lt v2, v0, :cond_a

    const/16 v0, 0xd7

    if-eq v2, v0, :cond_a

    const/16 v0, 0xf7

    if-ne v2, v0, :cond_b

    .line 129
    :cond_a
    add-int/lit8 v16, v16, 0x1

    .line 139
    :cond_b
    :goto_4
    if-eqz v4, :cond_15

    .line 140
    if-lez v10, :cond_e

    .line 141
    const/16 v0, 0x40

    if-lt v2, v0, :cond_d

    const/16 v0, 0x7f

    if-eq v2, v0, :cond_d

    const/16 v0, 0xfc

    if-le v2, v0, :cond_c

    goto :goto_5

    .line 144
    :cond_c
    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    .line 142
    :cond_d
    :goto_5
    const/4 v0, 0x0

    .line 85
    .end local v2    # "value":I
    .end local v4    # "canBeShiftJIS":Z
    .local v0, "canBeShiftJIS":Z
    :goto_6
    move v4, v0

    goto :goto_8

    .line 146
    .end local v0    # "canBeShiftJIS":Z
    .restart local v2    # "value":I
    .restart local v4    # "canBeShiftJIS":Z
    :cond_e
    const/16 v0, 0x80

    if-eq v2, v0, :cond_14

    const/16 v0, 0xa0

    if-eq v2, v0, :cond_14

    const/16 v0, 0xef

    if-le v2, v0, :cond_f

    goto :goto_7

    .line 148
    :cond_f
    const/16 v0, 0xa0

    if-le v2, v0, :cond_11

    const/16 v0, 0xe0

    if-ge v2, v0, :cond_11

    .line 149
    add-int/lit8 v11, v11, 0x1

    .line 150
    const/4 v0, 0x0

    .line 151
    .end local v13    # "sjisCurDoubleBytesWordLength":I
    .local v0, "sjisCurDoubleBytesWordLength":I
    add-int/lit8 v12, v12, 0x1

    .line 152
    if-le v12, v14, :cond_10

    .line 153
    move v13, v12

    .line 85
    .end local v14    # "sjisMaxKatakanaWordLength":I
    .local v13, "sjisMaxKatakanaWordLength":I
    move v14, v13

    .line 85
    .end local v0    # "sjisCurDoubleBytesWordLength":I
    .end local v2    # "value":I
    .local v13, "sjisCurDoubleBytesWordLength":I
    .restart local v14    # "sjisMaxKatakanaWordLength":I
    :cond_10
    move v13, v0

    goto :goto_8

    .line 155
    .restart local v2    # "value":I
    :cond_11
    const/16 v0, 0x7f

    if-le v2, v0, :cond_13

    .line 156
    add-int/lit8 v10, v10, 0x1

    .line 158
    const/4 v0, 0x0

    .line 159
    .end local v12    # "sjisCurKatakanaWordLength":I
    .local v0, "sjisCurKatakanaWordLength":I
    add-int/lit8 v13, v13, 0x1

    .line 160
    if-le v13, v15, :cond_12

    .line 161
    move v12, v13

    .line 85
    .end local v15    # "sjisMaxDoubleBytesWordLength":I
    .local v12, "sjisMaxDoubleBytesWordLength":I
    move v15, v12

    .line 85
    .end local v0    # "sjisCurKatakanaWordLength":I
    .end local v2    # "value":I
    .local v12, "sjisCurKatakanaWordLength":I
    .restart local v15    # "sjisMaxDoubleBytesWordLength":I
    :cond_12
    move v12, v0

    goto :goto_8

    .line 165
    .restart local v2    # "value":I
    :cond_13
    const/4 v0, 0x0

    .line 166
    .end local v12    # "sjisCurKatakanaWordLength":I
    .restart local v0    # "sjisCurKatakanaWordLength":I
    const/4 v2, 0x0

    .line 85
    .end local v13    # "sjisCurDoubleBytesWordLength":I
    .local v2, "sjisCurDoubleBytesWordLength":I
    move v12, v0

    move v13, v2

    goto :goto_8

    .line 147
    .end local v0    # "sjisCurKatakanaWordLength":I
    .local v2, "value":I
    .restart local v12    # "sjisCurKatakanaWordLength":I
    .restart local v13    # "sjisCurDoubleBytesWordLength":I
    :cond_14
    :goto_7
    const/4 v0, 0x0

    goto :goto_6

    .line 85
    .end local v2    # "value":I
    :cond_15
    :goto_8
    add-int/lit8 v18, v3, 0x1

    .line 83
    .end local v3    # "i":I
    .restart local v18    # "i":I
    move/from16 v2, v20

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 171
    .end local v18    # "i":I
    .end local v20    # "length":I
    .local v2, "length":I
    :cond_16
    move/from16 v20, v2

    .line 171
    .end local v2    # "length":I
    .restart local v20    # "length":I
    :goto_9
    if-eqz v5, :cond_17

    if-lez v6, :cond_17

    .line 172
    const/4 v5, 0x0

    .line 174
    :cond_17
    if-eqz v4, :cond_18

    if-lez v10, :cond_18

    .line 175
    const/4 v4, 0x0

    .line 179
    :cond_18
    if-eqz v5, :cond_1a

    if-nez v1, :cond_19

    add-int v0, v7, v8

    add-int/2addr v0, v9

    if-lez v0, :cond_1a

    .line 180
    :cond_19
    const-string v0, "UTF8"

    return-object v0

    .line 183
    :cond_1a
    if-eqz v4, :cond_1c

    sget-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x3

    if-ge v14, v0, :cond_1b

    if-lt v15, v0, :cond_1c

    .line 184
    :cond_1b
    const-string v0, "SJIS"

    return-object v0

    .line 191
    :cond_1c
    if-eqz v17, :cond_20

    if-eqz v4, :cond_20

    .line 192
    const/4 v0, 0x2

    if-ne v14, v0, :cond_1e

    if-eq v11, v0, :cond_1d

    goto :goto_a

    :cond_1d
    move/from16 v2, v20

    goto :goto_b

    :cond_1e
    :goto_a
    mul-int/lit8 v0, v16, 0xa

    move/from16 v2, v20

    if-lt v0, v2, :cond_1f

    .line 192
    .end local v20    # "length":I
    .restart local v2    # "length":I
    :goto_b
    const-string v0, "SJIS"

    return-object v0

    :cond_1f
    const-string v0, "ISO8859_1"

    return-object v0

    .line 197
    .end local v2    # "length":I
    .restart local v20    # "length":I
    :cond_20
    move/from16 v2, v20

    .line 197
    .end local v20    # "length":I
    .restart local v2    # "length":I
    if-eqz v17, :cond_21

    .line 198
    const-string v0, "ISO8859_1"

    return-object v0

    .line 200
    :cond_21
    if-eqz v4, :cond_22

    .line 201
    const-string v0, "SJIS"

    return-object v0

    .line 203
    :cond_22
    if-eqz v5, :cond_23

    .line 204
    const-string v0, "UTF8"

    return-object v0

    .line 207
    :cond_23
    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    return-object v0
.end method
