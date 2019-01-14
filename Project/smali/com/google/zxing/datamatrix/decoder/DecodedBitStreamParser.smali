.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT2_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const/16 v0, 0x28

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    .line 59
    const/16 v1, 0x1b

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    .line 68
    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    .line 75
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    .line 77
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_1
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    nop

    :array_2
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_3
    .array-data 2
        0x60s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .locals 9
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 87
    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v1, "result":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    .local v2, "resultTrailer":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v3, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 92
    .local v4, "mode":Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    :cond_0
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-ne v4, v5, :cond_1

    .line 93
    invoke-static {v0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v4

    goto :goto_1

    .line 95
    :cond_1
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 112
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 109
    :pswitch_0
    invoke-static {v0, v1, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 110
    goto :goto_0

    .line 106
    :pswitch_1
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 107
    goto :goto_0

    .line 103
    :pswitch_2
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 104
    goto :goto_0

    .line 100
    :pswitch_3
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 101
    goto :goto_0

    .line 97
    :pswitch_4
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 98
    nop

    .line 114
    :goto_0
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 116
    :goto_1
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_0

    .line 117
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 120
    :cond_3
    new-instance v5, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    move-object v7, v8

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    invoke-direct {v5, p0, v6, v7, v8}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 371
    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 374
    .local v1, "cValues":[I
    .local v3, "firstByte":I
    .local v4, "cValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 375
    .end local v3    # "firstByte":I
    .end local v4    # "cValue":I
    return-void

    .line 377
    .restart local v3    # "firstByte":I
    .restart local v4    # "cValue":I
    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    .line 378
    move v3, v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_1

    .line 379
    .end local v4    # "cValue":I
    return-void

    .line 382
    .restart local v4    # "cValue":I
    :cond_1
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v3, v5, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 384
    move v5, v4

    const/4 v4, 0x0

    .line 384
    .local v4, "i":I
    .local v5, "cValue":I
    :goto_1
    if-ge v4, v0, :cond_8

    .line 385
    aget v6, v1, v4

    .line 386
    move v5, v6

    if-nez v6, :cond_2

    .line 387
    const/16 v6, 0xd

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 388
    :cond_2
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 389
    const/16 v6, 0x2a

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 390
    :cond_3
    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 391
    const/16 v6, 0x3e

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 392
    :cond_4
    if-ne v5, v0, :cond_5

    .line 393
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 394
    :cond_5
    const/16 v6, 0xe

    if-ge v5, v6, :cond_6

    .line 395
    add-int/lit8 v6, v5, 0x2c

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 396
    :cond_6
    const/16 v6, 0x28

    if-ge v5, v6, :cond_7

    .line 397
    add-int/lit8 v6, v5, 0x33

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 399
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 402
    .end local v4    # "i":I
    :cond_8
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_9

    .line 403
    .end local v3    # "firstByte":I
    .end local v5    # "cValue":I
    return-void

    .line 371
    .restart local v3    # "firstByte":I
    .restart local v5    # "cValue":I
    :cond_9
    move v4, v5

    goto :goto_0
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .locals 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "resultTrailer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 131
    .local v1, "upperShift":Z
    .local v2, "oneByte":I
    .local v3, "value":I
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 132
    move v2, v4

    if-nez v4, :cond_1

    .line 133
    .end local v3    # "value":I
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 134
    .restart local v3    # "value":I
    :cond_1
    const/16 v4, 0x80

    if-gt v2, v4, :cond_3

    .line 135
    .end local v3    # "value":I
    if-eqz v1, :cond_2

    .line 136
    add-int/lit16 v2, v2, 0x80

    .line 139
    :cond_2
    add-int/lit8 v0, v2, -0x1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v0

    .line 141
    .restart local v3    # "value":I
    :cond_3
    const/16 v4, 0x81

    if-ne v2, v4, :cond_4

    .line 142
    .end local v3    # "value":I
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v0

    .line 143
    .restart local v3    # "value":I
    :cond_4
    const/16 v4, 0xe5

    if-gt v2, v4, :cond_6

    .line 144
    add-int/lit16 v4, v2, -0x82

    .line 145
    move v3, v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_5

    .line 146
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .end local v3    # "value":I
    goto/16 :goto_0

    .line 149
    .restart local v3    # "value":I
    :cond_6
    const/16 v4, 0xe6

    if-ne v2, v4, :cond_7

    .line 150
    .end local v3    # "value":I
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v0

    .line 151
    .restart local v3    # "value":I
    :cond_7
    const/16 v4, 0xe7

    if-ne v2, v4, :cond_8

    .line 152
    .end local v3    # "value":I
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v0

    .line 153
    .restart local v3    # "value":I
    :cond_8
    const/16 v4, 0xe8

    if-ne v2, v4, :cond_9

    .line 155
    const/16 v4, 0x1d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    :cond_9
    const/16 v4, 0xe9

    if-eq v2, v4, :cond_11

    const/16 v4, 0xea

    if-eq v2, v4, :cond_11

    .line 160
    const/16 v4, 0xeb

    if-ne v2, v4, :cond_a

    .line 161
    const/4 v1, 0x1

    goto :goto_0

    .line 162
    :cond_a
    const/16 v4, 0xec

    if-ne v2, v4, :cond_b

    .line 163
    const-string v4, "[)>\u001e05\u001d"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v4, "\u001e\u0004"

    invoke-virtual {p2, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    :cond_b
    const/16 v4, 0xed

    if-ne v2, v4, :cond_c

    .line 166
    const-string v4, "[)>\u001e06\u001d"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v4, "\u001e\u0004"

    invoke-virtual {p2, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 168
    :cond_c
    const/16 v4, 0xee

    if-ne v2, v4, :cond_d

    .line 169
    .end local v3    # "value":I
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v0

    .line 170
    .restart local v3    # "value":I
    :cond_d
    const/16 v4, 0xef

    if-ne v2, v4, :cond_e

    .line 171
    .end local v3    # "value":I
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v0

    .line 172
    .restart local v3    # "value":I
    :cond_e
    const/16 v4, 0xf0

    if-ne v2, v4, :cond_f

    .line 173
    .end local v3    # "value":I
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v0

    .line 174
    .restart local v3    # "value":I
    :cond_f
    const/16 v4, 0xf1

    if-eq v2, v4, :cond_11

    .line 178
    const/16 v4, 0xf2

    if-lt v2, v4, :cond_11

    .line 180
    const/16 v4, 0xfe

    if-ne v2, v4, :cond_10

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-eqz v4, :cond_11

    .line 181
    .end local v3    # "value":I
    :cond_10
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 184
    .restart local v3    # "value":I
    :cond_11
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_0

    .line 185
    .end local v2    # "oneByte":I
    .end local v3    # "value":I
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v0
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .locals 8
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 454
    .local p2, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getByteOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 455
    .local v0, "codewordPosition":I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    .line 455
    .local v3, "codewordPosition":I
    invoke-static {v2, v0}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v0

    .line 455
    .end local v0    # "codewordPosition":I
    const/4 v2, 0x0

    move v4, v2

    .line 457
    .local v4, "d1":I
    move v4, v0

    if-nez v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    div-int/2addr v0, v1

    .line 458
    .local v0, "count":I
    :goto_0
    goto :goto_1

    .line 459
    .end local v0    # "count":I
    :cond_0
    const/16 v0, 0xfa

    if-ge v4, v0, :cond_1

    .line 460
    move v0, v4

    goto :goto_0

    .line 462
    :cond_1
    add-int/lit16 v5, v4, -0xf9

    mul-int/lit16 v5, v5, 0xfa

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    add-int/lit8 v6, v3, 0x1

    .line 462
    .local v6, "codewordPosition":I
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v0

    .line 462
    .end local v3    # "codewordPosition":I
    add-int/2addr v0, v5

    move v3, v6

    .line 466
    .end local v6    # "codewordPosition":I
    .restart local v0    # "count":I
    .restart local v3    # "codewordPosition":I
    :goto_1
    if-gez v0, :cond_2

    .line 467
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 470
    :cond_2
    new-array v5, v0, [B

    .line 471
    .local v5, "bytes":[B
    nop

    .line 471
    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 474
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-ge v6, v1, :cond_3

    .line 475
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 477
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    .line 477
    .local v7, "codewordPosition":I
    invoke-static {v6, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v3

    .line 477
    .end local v3    # "codewordPosition":I
    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 471
    add-int/lit8 v2, v2, 0x1

    move v3, v7

    goto :goto_2

    .line 479
    .end local v2    # "i":I
    .end local v7    # "codewordPosition":I
    .restart local v3    # "codewordPosition":I
    :cond_4
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 481
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO8859_1"

    invoke-direct {v1, v5, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    return-void

    .line 482
    :catch_0
    move-exception v1

    .line 483
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Platform does not support required encoding: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "upperShift":Z
    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 198
    .local v2, "cValues":[I
    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 202
    .local v0, "shift":I
    .local v4, "upperShift":Z
    .local v5, "firstByte":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 203
    .end local v5    # "firstByte":I
    return-void

    .line 205
    .restart local v5    # "firstByte":I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    .line 206
    move v5, v6

    const/16 v8, 0xfe

    if-ne v6, v8, :cond_1

    .line 207
    return-void

    .line 210
    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v5, v6, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 212
    move v6, v4

    move v4, v0

    const/4 v0, 0x0

    .line 212
    .local v0, "i":I
    .local v4, "shift":I
    .local v6, "upperShift":Z
    :goto_1
    if-ge v0, v1, :cond_b

    .line 213
    aget v7, v2, v0

    .line 214
    .local v7, "cValue":I
    packed-switch v4, :pswitch_data_0

    .line 267
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 258
    :pswitch_0
    if-eqz v6, :cond_2

    .line 259
    add-int/lit16 v8, v7, 0xe0

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    const/4 v6, 0x0

    goto :goto_2

    .line 262
    :cond_2
    add-int/lit8 v8, v7, 0x60

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    :goto_2
    const/4 v4, 0x0

    .line 265
    goto :goto_5

    .line 240
    :pswitch_1
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v8, v8

    if-ge v7, v8, :cond_4

    .line 241
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v8, v8, v7

    .line 242
    .local v8, "c40char":C
    if-eqz v6, :cond_3

    .line 243
    add-int/lit16 v9, v8, 0x80

    int-to-char v9, v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    const/4 v6, 0x0

    goto :goto_3

    .line 246
    :cond_3
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    .end local v8    # "c40char":C
    goto :goto_3

    :cond_4
    const/16 v8, 0x1b

    if-ne v7, v8, :cond_5

    .line 249
    const/16 v8, 0x1d

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 250
    :cond_5
    const/16 v8, 0x1e

    if-ne v7, v8, :cond_6

    .line 251
    const/4 v6, 0x1

    .line 255
    :goto_3
    const/4 v4, 0x0

    .line 256
    goto :goto_5

    .line 253
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 231
    :pswitch_2
    if-eqz v6, :cond_7

    .line 232
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    const/4 v6, 0x0

    goto :goto_4

    .line 235
    :cond_7
    int-to-char v8, v7

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :goto_4
    const/4 v4, 0x0

    .line 238
    goto :goto_5

    .line 216
    :pswitch_3
    if-ge v7, v1, :cond_8

    .line 217
    add-int/lit8 v4, v7, 0x1

    goto :goto_5

    .line 218
    :cond_8
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v8, v8

    if-ge v7, v8, :cond_a

    .line 219
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v8, v8, v7

    .line 220
    .restart local v8    # "c40char":C
    if-eqz v6, :cond_9

    .line 221
    add-int/lit16 v9, v8, 0x80

    int-to-char v9, v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    const/4 v6, 0x0

    goto :goto_5

    .line 224
    :cond_9
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    .end local v8    # "c40char":C
    nop

    .line 212
    .end local v7    # "cValue":I
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    .restart local v7    # "cValue":I
    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 270
    .end local v0    # "i":I
    .end local v7    # "cValue":I
    :cond_b
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-gtz v0, :cond_c

    .line 271
    .end local v5    # "firstByte":I
    return-void

    .line 198
    .restart local v5    # "firstByte":I
    :cond_c
    move v0, v4

    move v4, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .line 421
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 421
    .local v1, "edifactValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_0

    .line 422
    .end local v1    # "edifactValue":I
    return-void

    .line 425
    .restart local v1    # "edifactValue":I
    :cond_0
    move v2, v1

    const/4 v1, 0x0

    .line 425
    .local v1, "i":I
    .local v2, "edifactValue":I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    .line 426
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 429
    move v2, v3

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_2

    .line 431
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getBitOffset()I

    move-result v3

    const/16 v4, 0x8

    rsub-int/lit8 v3, v3, 0x8

    .line 432
    .local v0, "bitsLeft":I
    move v0, v3

    if-eq v3, v4, :cond_1

    .line 433
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 435
    :cond_1
    return-void

    .line 438
    .end local v0    # "bitsLeft":I
    :cond_2
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_3

    .line 439
    or-int/lit8 v2, v2, 0x40

    .line 441
    :cond_3
    int-to-char v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    .end local v2    # "edifactValue":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 443
    .end local v1    # "i":I
    .restart local v2    # "edifactValue":I
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gtz v1, :cond_5

    .line 444
    .end local v2    # "edifactValue":I
    return-void

    .line 421
    .restart local v2    # "edifactValue":I
    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    .line 282
    .local v0, "upperShift":Z
    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 283
    .local v2, "cValues":[I
    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 286
    .local v0, "shift":I
    .local v4, "upperShift":Z
    .local v5, "firstByte":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 287
    .end local v5    # "firstByte":I
    return-void

    .line 289
    .restart local v5    # "firstByte":I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    .line 290
    move v5, v6

    const/16 v8, 0xfe

    if-ne v6, v8, :cond_1

    .line 291
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v5, v6, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 296
    move v6, v4

    move v4, v0

    const/4 v0, 0x0

    .line 296
    .local v0, "i":I
    .local v4, "shift":I
    .local v6, "upperShift":Z
    :goto_1
    if-ge v0, v1, :cond_c

    .line 297
    aget v7, v2, v0

    .line 298
    .local v7, "cValue":I
    packed-switch v4, :pswitch_data_0

    .line 357
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 343
    :pswitch_0
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 344
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v8, v8, v7

    .line 345
    .local v8, "textChar":C
    if-eqz v6, :cond_2

    .line 346
    add-int/lit16 v9, v8, 0x80

    int-to-char v9, v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    const/4 v6, 0x0

    goto :goto_2

    .line 349
    :cond_2
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :goto_2
    const/4 v4, 0x0

    .line 352
    .end local v8    # "textChar":C
    goto :goto_5

    .line 353
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 325
    :pswitch_1
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    array-length v8, v8

    if-ge v7, v8, :cond_5

    .line 326
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    aget-char v8, v8, v7

    .line 327
    .restart local v8    # "textChar":C
    if-eqz v6, :cond_4

    .line 328
    add-int/lit16 v9, v8, 0x80

    int-to-char v9, v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    const/4 v6, 0x0

    goto :goto_3

    .line 331
    :cond_4
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    .end local v8    # "textChar":C
    goto :goto_3

    :cond_5
    const/16 v8, 0x1b

    if-ne v7, v8, :cond_6

    .line 334
    const/16 v8, 0x1d

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 335
    :cond_6
    const/16 v8, 0x1e

    if-ne v7, v8, :cond_7

    .line 336
    const/4 v6, 0x1

    .line 340
    :goto_3
    const/4 v4, 0x0

    .line 341
    goto :goto_5

    .line 338
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 315
    :pswitch_2
    if-eqz v6, :cond_8

    .line 316
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    const/4 v6, 0x0

    goto :goto_4

    .line 319
    :cond_8
    int-to-char v8, v7

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    :goto_4
    const/4 v4, 0x0

    .line 322
    goto :goto_5

    .line 300
    :pswitch_3
    if-ge v7, v1, :cond_9

    .line 301
    add-int/lit8 v4, v7, 0x1

    goto :goto_5

    .line 302
    :cond_9
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v8, v8

    if-ge v7, v8, :cond_b

    .line 303
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v8, v8, v7

    .line 304
    .restart local v8    # "textChar":C
    if-eqz v6, :cond_a

    .line 305
    add-int/lit16 v9, v8, 0x80

    int-to-char v9, v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    const/4 v6, 0x0

    goto :goto_5

    .line 308
    :cond_a
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    .end local v8    # "textChar":C
    nop

    .line 296
    .end local v7    # "cValue":I
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 311
    .restart local v7    # "cValue":I
    :cond_b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 360
    .end local v0    # "i":I
    .end local v7    # "cValue":I
    :cond_c
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-gtz v0, :cond_d

    .line 361
    .end local v5    # "firstByte":I
    return-void

    .line 283
    .restart local v5    # "firstByte":I
    :cond_d
    move v0, v4

    move v4, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTwoBytes(II[I)V
    .locals 4
    .param p0, "firstByte"    # I
    .param p1, "secondByte"    # I
    .param p2, "result"    # [I

    const/4 v0, 0x0

    .line 406
    .local v0, "fullBitValue":I
    shl-int/lit8 v1, p0, 0x8

    add-int/2addr v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 407
    move v0, v1

    div-int/lit16 v1, v1, 0x640

    .line 408
    .local v1, "temp":I
    const/4 v3, 0x0

    aput v1, p2, v3

    .line 409
    mul-int/lit16 v3, v1, 0x640

    sub-int v3, v0, v3

    .line 410
    move v0, v3

    div-int/lit8 v3, v3, 0x28

    .line 411
    .end local v1    # "temp":I
    .local v3, "temp":I
    aput v3, p2, v2

    .line 412
    mul-int/lit8 v1, v3, 0x28

    sub-int v1, v0, v1

    const/4 v2, 0x2

    aput v1, p2, v2

    .line 413
    return-void
.end method

.method private static unrandomize255State(II)I
    .locals 3
    .param p0, "randomizedBase256Codeword"    # I
    .param p1, "base256CodewordPosition"    # I

    .line 492
    mul-int/lit16 v0, p1, 0x95

    rem-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x1

    .line 493
    .local v0, "pseudoRandomNumber":I
    sub-int v1, p0, v0

    const/4 v2, 0x0

    .line 494
    .local v2, "tempVariable":I
    move v2, v1

    if-ltz v1, :cond_0

    return v2

    :cond_0
    add-int/lit16 v1, v2, 0x100

    return v1
.end method
