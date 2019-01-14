.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 46
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, " "

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "A"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "B"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "C"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "D"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "E"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "F"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "G"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "H"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "I"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "J"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "K"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "L"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "M"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "N"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "O"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, "P"

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "Q"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "R"

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-string v1, "S"

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-string v1, "T"

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-string v1, "U"

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-string v1, "V"

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-string v1, "W"

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-string v1, "X"

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-string v1, "Y"

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-string v1, "Z"

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-string v1, "CTRL_LL"

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-string v1, "CTRL_ML"

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    const-string v1, "CTRL_DL"

    const/16 v17, 0x1e

    aput-object v1, v0, v17

    const-string v1, "CTRL_BS"

    const/16 v17, 0x1f

    aput-object v1, v0, v17

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v2

    const-string v1, " "

    aput-object v1, v0, v3

    const-string v1, "a"

    aput-object v1, v0, v4

    const-string v1, "b"

    aput-object v1, v0, v5

    const-string v1, "c"

    aput-object v1, v0, v6

    const-string v1, "d"

    aput-object v1, v0, v7

    const-string v1, "e"

    aput-object v1, v0, v8

    const-string v1, "f"

    aput-object v1, v0, v9

    const-string v1, "g"

    aput-object v1, v0, v10

    const-string v1, "h"

    aput-object v1, v0, v11

    const-string v1, "i"

    aput-object v1, v0, v12

    const-string v1, "j"

    aput-object v1, v0, v13

    const-string v1, "k"

    aput-object v1, v0, v14

    const-string v1, "l"

    aput-object v1, v0, v15

    const-string v1, "m"

    aput-object v1, v0, v16

    const-string v1, "n"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "o"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, "p"

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "q"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "r"

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-string v1, "s"

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-string v1, "t"

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-string v1, "u"

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-string v1, "v"

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-string v1, "w"

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-string v1, "x"

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-string v1, "y"

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-string v1, "z"

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-string v1, "CTRL_US"

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-string v1, "CTRL_ML"

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    const-string v1, "CTRL_DL"

    const/16 v17, 0x1e

    aput-object v1, v0, v17

    const-string v1, "CTRL_BS"

    const/16 v17, 0x1f

    aput-object v1, v0, v17

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 56
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v2

    const-string v1, " "

    aput-object v1, v0, v3

    const-string v1, "\u0001"

    aput-object v1, v0, v4

    const-string v1, "\u0002"

    aput-object v1, v0, v5

    const-string v1, "\u0003"

    aput-object v1, v0, v6

    const-string v1, "\u0004"

    aput-object v1, v0, v7

    const-string v1, "\u0005"

    aput-object v1, v0, v8

    const-string v1, "\u0006"

    aput-object v1, v0, v9

    const-string v1, "\u0007"

    aput-object v1, v0, v10

    const-string v1, "\u0008"

    aput-object v1, v0, v11

    const-string v1, "\t"

    aput-object v1, v0, v12

    const-string v1, "\n"

    aput-object v1, v0, v13

    const-string v1, "\u000b"

    aput-object v1, v0, v14

    const-string v1, "\u000c"

    aput-object v1, v0, v15

    const-string v1, "\r"

    aput-object v1, v0, v16

    const-string v1, "\u001b"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "\u001c"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, "\u001d"

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "\u001e"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "\u001f"

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-string v1, "@"

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-string v1, "\\"

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-string v1, "^"

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-string v1, "_"

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-string v1, "`"

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-string v1, "|"

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-string v1, "~"

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-string v1, "\u007f"

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-string v1, "CTRL_LL"

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-string v1, "CTRL_UL"

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    const-string v1, "CTRL_PL"

    const/16 v17, 0x1e

    aput-object v1, v0, v17

    const-string v1, "CTRL_BS"

    const/16 v17, 0x1f

    aput-object v1, v0, v17

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "\r"

    aput-object v1, v0, v3

    const-string v1, "\r\n"

    aput-object v1, v0, v4

    const-string v1, ". "

    aput-object v1, v0, v5

    const-string v1, ", "

    aput-object v1, v0, v6

    const-string v1, ": "

    aput-object v1, v0, v7

    const-string v1, "!"

    aput-object v1, v0, v8

    const-string v1, "\""

    aput-object v1, v0, v9

    const-string v1, "#"

    aput-object v1, v0, v10

    const-string v1, "$"

    aput-object v1, v0, v11

    const-string v1, "%"

    aput-object v1, v0, v12

    const-string v1, "&"

    aput-object v1, v0, v13

    const-string v1, "\'"

    aput-object v1, v0, v14

    const-string v1, "("

    aput-object v1, v0, v15

    const-string v1, ")"

    aput-object v1, v0, v16

    const-string v1, "*"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "+"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, ","

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "-"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "."

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-string v1, "/"

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-string v1, ":"

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-string v1, ";"

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-string v1, "<"

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-string v1, "="

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-string v1, ">"

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-string v1, "?"

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-string v1, "["

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-string v1, "]"

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-string v1, "{"

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    const-string v1, "}"

    const/16 v17, 0x1e

    aput-object v1, v0, v17

    const-string v1, "CTRL_UL"

    const/16 v17, 0x1f

    aput-object v1, v0, v17

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v2

    const-string v1, " "

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "1"

    aput-object v1, v0, v5

    const-string v1, "2"

    aput-object v1, v0, v6

    const-string v1, "3"

    aput-object v1, v0, v7

    const-string v1, "4"

    aput-object v1, v0, v8

    const-string v1, "5"

    aput-object v1, v0, v9

    const-string v1, "6"

    aput-object v1, v0, v10

    const-string v1, "7"

    aput-object v1, v0, v11

    const-string v1, "8"

    aput-object v1, v0, v12

    const-string v1, "9"

    aput-object v1, v0, v13

    const-string v1, ","

    aput-object v1, v0, v14

    const-string v1, "."

    aput-object v1, v0, v15

    const-string v1, "CTRL_UL"

    aput-object v1, v0, v16

    const-string v1, "CTRL_US"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertBoolArrayToByteArray([Z)[B
    .locals 3
    .param p0, "boolArr"    # [Z

    .line 356
    array-length v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 357
    .local v0, "byteArr":[B
    const/4 v1, 0x0

    .line 357
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 358
    shl-int/lit8 v2, v1, 0x3

    invoke-static {p0, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readByte([ZI)B

    move-result v2

    aput-byte v2, v0, v1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private correctBits([Z)[Z
    .locals 19
    .param p1, "rawbits"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 209
    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 210
    const/4 v3, 0x6

    .line 211
    .local v3, "codewordSize":I
    sget-object v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 211
    .local v4, "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :goto_0
    goto :goto_1

    .line 212
    .end local v3    # "codewordSize":I
    .end local v4    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_0
    iget-object v3, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    const/16 v4, 0x8

    if-gt v3, v4, :cond_1

    .line 213
    const/16 v3, 0x8

    .line 214
    .restart local v3    # "codewordSize":I
    sget-object v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 215
    .end local v3    # "codewordSize":I
    :cond_1
    iget-object v3, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    const/16 v4, 0x16

    if-gt v3, v4, :cond_2

    .line 216
    const/16 v3, 0xa

    .line 217
    .restart local v3    # "codewordSize":I
    sget-object v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 219
    .end local v3    # "codewordSize":I
    :cond_2
    const/16 v3, 0xc

    .line 220
    .restart local v3    # "codewordSize":I
    sget-object v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 223
    .restart local v4    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :goto_1
    iget-object v5, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v5}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v5

    .line 224
    .local v5, "numDataCodewords":I
    array-length v6, v2

    div-int/2addr v6, v3

    const/4 v7, 0x0

    move v8, v7

    .line 225
    .local v8, "numCodewords":I
    move v8, v6

    if-ge v6, v5, :cond_3

    .line 226
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 228
    :cond_3
    array-length v6, v2

    rem-int/2addr v6, v3

    .line 230
    .local v6, "offset":I
    new-array v9, v8, [I

    .line 231
    .local v9, "dataWords":[I
    move v10, v6

    const/4 v6, 0x0

    .line 231
    .local v6, "i":I
    .local v10, "offset":I
    :goto_2
    if-ge v6, v8, :cond_4

    .line 232
    invoke-static {v2, v10, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v11

    aput v11, v9, v6

    .line 231
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v10, v3

    goto :goto_2

    .line 236
    .end local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    :try_start_0
    new-instance v11, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v11, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 237
    .local v6, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    sub-int v12, v8, v5

    invoke-virtual {v11, v9, v12}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v6    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    nop

    .line 244
    const/4 v6, 0x1

    shl-int v11, v6, v3

    sub-int/2addr v11, v6

    .line 245
    .local v11, "mask":I
    const/4 v12, 0x0

    .line 246
    .local v12, "stuffedBits":I
    move v14, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 246
    .local v12, "i":I
    .local v13, "dataWord":I
    .local v14, "stuffedBits":I
    :goto_3
    if-ge v12, v5, :cond_9

    .line 247
    aget v15, v9, v12

    .line 248
    move v13, v15

    if-eqz v15, :cond_8

    if-ne v13, v11, :cond_5

    goto :goto_4

    .line 250
    :cond_5
    if-eq v13, v6, :cond_6

    add-int/lit8 v15, v11, -0x1

    if-ne v13, v15, :cond_7

    .line 251
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 246
    .end local v13    # "dataWord":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 249
    :cond_8
    :goto_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 255
    .end local v12    # "i":I
    :cond_9
    mul-int v12, v5, v3

    sub-int/2addr v12, v14

    new-array v12, v12, [Z

    .line 256
    .local v12, "correctedBits":[Z
    const/4 v13, 0x0

    .line 257
    .local v13, "index":I
    move v7, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 257
    .local v7, "index":I
    .local v13, "i":I
    .local v15, "dataWord":I
    :goto_5
    if-ge v13, v5, :cond_f

    .line 258
    aget v6, v9, v13

    .line 259
    move v15, v6

    const/4 v1, 0x1

    if-eq v6, v1, :cond_c

    add-int/lit8 v1, v11, -0x1

    if-ne v15, v1, :cond_a

    goto :goto_8

    .line 264
    :cond_a
    add-int/lit8 v1, v3, -0x1

    .line 264
    .local v1, "bit":I
    :goto_6
    if-ltz v1, :cond_e

    .line 265
    add-int/lit8 v6, v7, 0x1

    .line 265
    .local v6, "index":I
    const/16 v16, 0x1

    shl-int v17, v16, v1

    and-int v17, v15, v17

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    goto :goto_7

    :cond_b
    const/16 v17, 0x0

    :goto_7
    aput-boolean v17, v12, v7

    .line 264
    .end local v7    # "index":I
    add-int/lit8 v1, v1, -0x1

    move v7, v6

    goto :goto_6

    .line 261
    .end local v1    # "bit":I
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_c
    :goto_8
    add-int v1, v7, v3

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    if-le v15, v6, :cond_d

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    :goto_9
    invoke-static {v12, v7, v1, v6}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 262
    add-int/lit8 v1, v3, -0x1

    add-int/2addr v7, v1

    .line 257
    :cond_e
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    const/4 v6, 0x1

    goto :goto_5

    .line 269
    .end local v13    # "i":I
    .end local v15    # "dataWord":I
    :cond_f
    return-object v12

    .line 239
    .end local v7    # "index":I
    .end local v11    # "mask":I
    .end local v12    # "correctedBits":[Z
    .end local v14    # "stuffedBits":I
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 240
    .local v6, "ex":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    nop

    .line 239
    invoke-static {v1}, Lcom/google/zxing/FormatException;->getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 19
    .param p1, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v0, p0

    .line 278
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    .line 279
    .local v2, "compact":Z
    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    .line 280
    .local v3, "layers":I
    if-eqz v2, :cond_0

    const/16 v4, 0xb

    goto :goto_0

    :cond_0
    const/16 v4, 0xe

    :goto_0
    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v5

    .line 281
    .local v6, "baseMatrixSize":I
    move v6, v4

    new-array v4, v4, [I

    .line 282
    .local v4, "alignmentMap":[I
    invoke-static {v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v7

    new-array v7, v7, [Z

    .line 284
    .local v7, "rawbits":[Z
    const/4 v8, 0x2

    if-eqz v2, :cond_1

    .line 285
    const/4 v9, 0x0

    .line 285
    .local v9, "i":I
    :goto_1
    array-length v10, v4

    if-ge v9, v10, :cond_2

    .line 286
    aput v9, v4, v9

    .line 285
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 289
    .end local v9    # "i":I
    :cond_1
    add-int/lit8 v9, v6, 0x1

    div-int/lit8 v10, v6, 0x2

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0xf

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 290
    .local v9, "matrixSize":I
    div-int/lit8 v10, v6, 0x2

    .line 291
    .local v10, "origCenter":I
    div-int/lit8 v11, v9, 0x2

    .line 292
    .local v11, "center":I
    const/4 v12, 0x0

    .line 292
    .local v12, "i":I
    :goto_2
    if-ge v12, v10, :cond_2

    .line 293
    div-int/lit8 v13, v12, 0xf

    add-int/2addr v13, v12

    .line 294
    .local v13, "newOffset":I
    sub-int v14, v10, v12

    add-int/lit8 v14, v14, -0x1

    sub-int v15, v11, v13

    add-int/lit8 v15, v15, -0x1

    aput v15, v4, v14

    .line 295
    add-int v14, v10, v12

    add-int v15, v11, v13

    add-int/lit8 v15, v15, 0x1

    aput v15, v4, v14

    .line 292
    .end local v13    # "newOffset":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 298
    .end local v9    # "matrixSize":I
    .end local v10    # "origCenter":I
    .end local v11    # "center":I
    .end local v12    # "i":I
    :cond_2
    const/4 v9, 0x0

    .line 298
    .local v9, "i":I
    move v10, v9

    const/4 v9, 0x0

    .line 298
    .local v9, "rowOffset":I
    .local v10, "i":I
    :goto_3
    if-ge v10, v3, :cond_6

    .line 299
    sub-int v11, v3, v10

    shl-int/2addr v11, v8

    if-eqz v2, :cond_3

    const/16 v12, 0x9

    goto :goto_4

    :cond_3
    const/16 v12, 0xc

    :goto_4
    add-int/2addr v11, v12

    .line 301
    .local v11, "rowSize":I
    shl-int/lit8 v12, v10, 0x1

    .line 303
    .local v12, "low":I
    add-int/lit8 v13, v6, -0x1

    sub-int/2addr v13, v12

    .line 305
    .local v13, "high":I
    const/4 v14, 0x0

    .line 305
    .local v14, "j":I
    :goto_5
    if-ge v14, v11, :cond_5

    .line 306
    shl-int/lit8 v15, v14, 0x1

    .line 307
    .local v15, "columnOffset":I
    const/16 v16, 0x0

    .line 307
    .local v16, "k":I
    :goto_6
    move/from16 v17, v16

    .line 307
    .end local v16    # "k":I
    .local v17, "k":I
    move/from16 v5, v17

    if-ge v5, v8, :cond_4

    .line 309
    .end local v17    # "k":I
    .local v5, "k":I
    add-int v16, v9, v15

    add-int v16, v16, v5

    add-int v17, v12, v5

    aget v8, v4, v17

    add-int v17, v12, v14

    aget v0, v4, v17

    .line 310
    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v7, v16

    .line 312
    mul-int/lit8 v0, v11, 0x2

    add-int/2addr v0, v9

    add-int/2addr v0, v15

    add-int/2addr v0, v5

    add-int v8, v12, v14

    aget v8, v4, v8

    sub-int v16, v13, v5

    move/from16 v18, v2

    aget v2, v4, v16

    .line 313
    .end local v2    # "compact":Z
    .local v18, "compact":Z
    invoke-virtual {v1, v8, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v7, v0

    .line 315
    mul-int/lit8 v0, v11, 0x4

    add-int/2addr v0, v9

    add-int/2addr v0, v15

    add-int/2addr v0, v5

    sub-int v2, v13, v5

    aget v2, v4, v2

    sub-int v8, v13, v14

    aget v8, v4, v8

    .line 316
    invoke-virtual {v1, v2, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v7, v0

    .line 318
    mul-int/lit8 v0, v11, 0x6

    add-int/2addr v0, v9

    add-int/2addr v0, v15

    add-int/2addr v0, v5

    sub-int v2, v13, v14

    aget v2, v4, v2

    add-int v17, v12, v5

    aget v8, v4, v17

    .line 319
    invoke-virtual {v1, v2, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v7, v0

    .line 307
    add-int/lit8 v16, v5, 0x1

    .line 307
    .end local v5    # "k":I
    .restart local v16    # "k":I
    move/from16 v2, v18

    move-object/from16 v0, p0

    const/4 v5, 0x0

    const/4 v8, 0x2

    goto :goto_6

    .line 305
    .end local v15    # "columnOffset":I
    .end local v16    # "k":I
    .end local v18    # "compact":Z
    .restart local v2    # "compact":Z
    :cond_4
    move/from16 v18, v2

    .line 305
    .end local v2    # "compact":Z
    .restart local v18    # "compact":Z
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    const/4 v5, 0x0

    const/4 v8, 0x2

    goto :goto_5

    .line 322
    .end local v14    # "j":I
    .end local v18    # "compact":Z
    .restart local v2    # "compact":Z
    :cond_5
    move/from16 v18, v2

    .line 322
    .end local v2    # "compact":Z
    .restart local v18    # "compact":Z
    shl-int/lit8 v0, v11, 0x3

    add-int/2addr v9, v0

    .line 298
    .end local v11    # "rowSize":I
    .end local v12    # "low":I
    .end local v13    # "high":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    const/4 v5, 0x0

    const/4 v8, 0x2

    goto/16 :goto_3

    .line 324
    .end local v9    # "rowOffset":I
    .end local v10    # "i":I
    .end local v18    # "compact":Z
    .restart local v2    # "compact":Z
    :cond_6
    move/from16 v18, v2

    .line 324
    .end local v2    # "compact":Z
    .restart local v18    # "compact":Z
    return-object v7
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 2
    .param p0, "table"    # Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .param p1, "code"    # I

    .line 182
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 190
    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 188
    :pswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 186
    :pswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 184
    :pswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .locals 12
    .param p0, "correctedBits"    # [Z

    .line 96
    array-length v0, p0

    .line 97
    .local v0, "endIndex":I
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 98
    .local v1, "latchTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 99
    .local v2, "shiftTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    move-object v5, v1

    const/4 v1, 0x0

    .line 101
    .local v1, "index":I
    .local v5, "latchTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .local v6, "str":Ljava/lang/String;
    :goto_0
    if-ge v1, v0, :cond_7

    .line 102
    sget-object v7, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v8, 0x5

    if-ne v2, v7, :cond_3

    .line 103
    sub-int v7, v0, v1

    if-lt v7, v8, :cond_7

    .line 106
    invoke-static {p0, v1, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    .line 107
    .local v7, "length":I
    add-int/lit8 v1, v1, 0x5

    .line 108
    if-nez v7, :cond_0

    .line 109
    sub-int v8, v0, v1

    const/16 v9, 0xb

    if-lt v8, v9, :cond_7

    .line 112
    invoke-static {p0, v1, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    add-int/lit8 v7, v8, 0x1f

    .line 113
    add-int/lit8 v1, v1, 0xb

    .line 115
    :cond_0
    move v8, v1

    const/4 v1, 0x0

    .line 115
    .local v1, "charCount":I
    .local v8, "index":I
    :goto_1
    if-ge v1, v7, :cond_2

    .line 116
    sub-int v9, v0, v8

    const/16 v10, 0x8

    if-ge v9, v10, :cond_1

    .line 117
    move v8, v0

    .line 118
    goto :goto_2

    .line 120
    :cond_1
    invoke-static {p0, v8, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v9

    .line 121
    .local v9, "code":I
    int-to-char v10, v9

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v8, v8, 0x8

    .line 115
    .end local v9    # "code":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    .end local v8    # "index":I
    .local v1, "index":I
    :cond_2
    :goto_2
    move v1, v8

    move-object v2, v5

    .line 126
    .end local v7    # "length":I
    goto :goto_0

    .line 127
    :cond_3
    sget-object v7, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v2, v7, :cond_4

    const/4 v7, 0x4

    goto :goto_3

    :cond_4
    const/4 v7, 0x5

    .line 128
    .local v7, "size":I
    :goto_3
    sub-int v9, v0, v1

    if-lt v9, v7, :cond_7

    .line 131
    invoke-static {p0, v1, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v9

    .line 132
    .restart local v9    # "code":I
    add-int/2addr v1, v7

    .line 133
    invoke-static {v2, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v10

    .line 134
    move-object v6, v10

    const-string v11, "CTRL_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 139
    move-object v5, v2

    .line 140
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v2

    .line 141
    const/4 v8, 0x6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x4c

    if-ne v8, v10, :cond_6

    .line 142
    move-object v5, v2

    goto :goto_0

    .line 145
    :cond_5
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-object v2, v5

    .line 149
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "size":I
    .end local v9    # "code":I
    :cond_6
    goto :goto_0

    .line 151
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1
    .param p0, "t"    # C

    .line 158
    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x44

    if-eq p0, v0, :cond_1

    const/16 v0, 0x50

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 171
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 164
    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 160
    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 162
    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 166
    :cond_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 168
    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .locals 1
    .param p0, "correctedBits"    # [Z

    .line 87
    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readByte([ZI)B
    .locals 3
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I

    const/4 v0, 0x0

    .line 345
    .local v0, "n":I
    array-length v1, p0

    sub-int/2addr v1, p1

    .line 346
    move v0, v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 347
    invoke-static {p0, p1, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    int-to-byte v1, v1

    return v1

    .line 349
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    sub-int/2addr v2, v0

    shl-int/2addr v1, v2

    int-to-byte v1, v1

    return v1
.end method

.method private static readCode([ZII)I
    .locals 3
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "res":I
    move v1, v0

    move v0, p1

    .line 332
    .local v0, "i":I
    .local v1, "res":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    .line 333
    shl-int/lit8 v1, v1, 0x1

    .line 334
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_0

    .line 335
    or-int/lit8 v1, v1, 0x1

    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .line 364
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


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 8
    .param p1, "detectorResult"    # Lcom/google/zxing/aztec/AztecDetectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 76
    .local v0, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v1

    .line 77
    .local v1, "rawbits":[Z
    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 78
    .local v4, "correctedBits":[Z
    move-object v4, v2

    invoke-static {v2}, Lcom/google/zxing/aztec/decoder/Decoder;->convertBoolArrayToByteArray([Z)[B

    move-result-object v2

    .line 79
    .local v2, "rawBytes":[B
    invoke-static {v4}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "result":Ljava/lang/String;
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    invoke-direct {v6, v2, v5, v3, v3}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 81
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v3, v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/DecoderResult;->setNumBits(I)V

    .line 82
    return-object v3
.end method
