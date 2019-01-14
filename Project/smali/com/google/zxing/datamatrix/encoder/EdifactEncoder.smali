.class final Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;
.super Ljava/lang/Object;
.source "EdifactEncoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeChar(CLjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "c"    # C
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 103
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 105
    :cond_0
    const/16 v0, 0x40

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_1

    .line 106
    add-int/lit8 v0, p0, -0x40

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 108
    :cond_1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    .line 110
    return-void
.end method

.method private static encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 13
    .param p0, "sb"    # Ljava/lang/CharSequence;
    .param p1, "startPos"    # I

    const/4 v0, 0x0

    .line 113
    .local v0, "len":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p1

    .line 114
    move v0, v1

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "StringBuilder must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 118
    .local v1, "c1":C
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    add-int/lit8 v4, p1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 119
    .local v4, "c2":C
    :goto_0
    const/4 v5, 0x3

    if-lt v0, v5, :cond_2

    add-int/lit8 v6, p1, 0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 120
    .local v6, "c3":C
    :goto_1
    const/4 v7, 0x4

    if-lt v0, v7, :cond_3

    add-int/lit8 v7, p1, 0x3

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 122
    .local v7, "c4":C
    :goto_2
    shl-int/lit8 v8, v1, 0x12

    shl-int/lit8 v9, v4, 0xc

    add-int/2addr v8, v9

    shl-int/lit8 v9, v6, 0x6

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 123
    .local v3, "v":I
    move v3, v8

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    .line 124
    .local v8, "cw1":C
    shr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-char v9, v9

    .line 125
    .local v9, "cw2":C
    and-int/lit16 v10, v3, 0xff

    int-to-char v10, v10

    .line 126
    .local v10, "cw3":C
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v12, 0x0

    .line 127
    .local v12, "res":Ljava/lang/StringBuilder;
    move-object v12, v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    if-lt v0, v2, :cond_4

    .line 129
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    :cond_4
    if-lt v0, v5, :cond_5

    .line 132
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/CharSequence;)V
    .locals 7
    .param p0, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .line 59
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    .line 60
    .local v2, "count":I
    move v2, v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 61
    return-void

    .line 63
    :cond_0
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 65
    :try_start_1
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 66
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    sub-int/2addr v4, v5

    .line 67
    .local v4, "available":I
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getRemainingCharacters()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v0

    .line 68
    .local v6, "remaining":I
    if-nez v5, :cond_1

    if-gt v4, v1, :cond_1

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 69
    return-void

    .line 73
    .end local v4    # "available":I
    .end local v6    # "remaining":I
    :cond_1
    const/4 v4, 0x4

    if-le v2, v4, :cond_2

    .line 74
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Count must not exceed 4"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_2
    add-int/lit8 v4, v2, -0x1

    .line 77
    .local v4, "restChars":I
    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "encoded":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    .line 79
    xor-int/2addr v6, v3

    if-eqz v6, :cond_3

    if-gt v4, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 81
    .local v3, "restInAscii":Z
    :goto_0
    if-gt v4, v1, :cond_4

    .line 82
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 83
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v6

    sub-int/2addr v1, v6

    .line 84
    const/4 v6, 0x3

    if-lt v1, v6, :cond_4

    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 91
    :cond_4
    if-eqz v3, :cond_5

    .line 92
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V

    .line 93
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {p0, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .end local v2    # "count":I
    .end local v3    # "restInAscii":Z
    .end local v4    # "restChars":I
    .end local v5    # "encoded":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    throw v1
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 5
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 32
    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeChar(CLjava/lang/StringBuilder;)V

    .line 33
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 36
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 37
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->getEncodingMode()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->getEncodingMode()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 42
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 43
    goto :goto_1

    .line 46
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public getEncodingMode()I
    .locals 1

    .line 23
    const/4 v0, 0x4

    return v0
.end method
