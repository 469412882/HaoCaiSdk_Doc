.class final Lcom/google/zxing/datamatrix/encoder/Base256Encoder;
.super Ljava/lang/Object;
.source "Base256Encoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static randomize255State(CI)C
    .locals 4
    .param p0, "ch"    # C
    .param p1, "codewordPosition"    # I

    .line 65
    mul-int/lit16 v0, p1, 0x95

    const/16 v1, 0xff

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 66
    .local v0, "pseudoRandom":I
    add-int v2, p0, v0

    const/4 v3, 0x0

    .line 67
    .local v3, "tempVariable":I
    move v3, v2

    if-gt v2, v1, :cond_0

    .line 68
    int-to-char v1, v3

    return v1

    .line 70
    :cond_0
    add-int/lit16 v1, v3, -0x100

    int-to-char v1, v1

    return v1
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 10
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    const/4 v0, 0x0

    .line 28
    .local v0, "buffer":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    move-object v0, v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    const/4 v1, 0x0

    .line 30
    .local v1, "newMode":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v3

    .line 32
    .local v3, "c":C
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    iget v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v5, v4

    iput v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 37
    move v1, v5

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 38
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 39
    goto :goto_1

    .line 41
    .end local v3    # "c":C
    :cond_0
    goto :goto_0

    .line 42
    .local v1, "lengthFieldSize":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 44
    .local v3, "dataCount":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    .line 45
    .local v5, "currentSize":I
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 46
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v6

    sub-int/2addr v6, v5

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 47
    .local v6, "mustPad":Z
    :goto_2
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v6, :cond_5

    .line 48
    :cond_3
    const/16 v7, 0xf9

    if-gt v3, v7, :cond_4

    .line 49
    int-to-char v7, v3

    invoke-virtual {v0, v2, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    .line 50
    :cond_4
    const/16 v8, 0x613

    if-gt v3, v8, :cond_7

    .line 51
    div-int/lit16 v8, v3, 0xfa

    add-int/2addr v8, v7

    int-to-char v7, v8

    invoke-virtual {v0, v2, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 52
    rem-int/lit16 v2, v3, 0xfa

    int-to-char v2, v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 58
    :cond_5
    :goto_3
    const/4 v2, 0x0

    .line 58
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 58
    .local v7, "c":I
    :goto_4
    if-ge v2, v7, :cond_6

    .line 59
    nop

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v9

    add-int/2addr v9, v4

    .line 59
    invoke-static {v8, v9}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->randomize255State(CI)C

    move-result v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 62
    .end local v2    # "i":I
    .end local v7    # "c":I
    :cond_6
    return-void

    .line 54
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Message length not in valid ranges: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getEncodingMode()I
    .locals 1

    .line 23
    const/4 v0, 0x5

    return v0
.end method
