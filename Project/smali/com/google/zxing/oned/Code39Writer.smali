.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .locals 3
    .param p0, "a"    # I
    .param p1, "toReturn"    # [I

    .line 83
    const/4 v0, 0x0

    .line 83
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 84
    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    .line 85
    .local v1, "temp":I
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    :goto_1
    aput v2, p1, v0

    .line 83
    .end local v1    # "temp":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 39
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_39, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 12
    .param p1, "contents"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 48
    move v0, v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    const/16 v1, 0x9

    new-array v2, v1, [I

    .line 54
    .local v2, "widths":[I
    add-int/lit8 v3, v0, 0x19

    .line 55
    .local v3, "codeWidth":I
    const/4 v4, 0x0

    move v6, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 55
    .local v3, "i":I
    .local v5, "indexInString":I
    .local v6, "codeWidth":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 56
    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 57
    move v5, v7

    if-gez v7, :cond_1

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Bad contents: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    sget-object v7, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v7, v7, v5

    invoke-static {v7, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 61
    move v7, v6

    const/4 v6, 0x0

    .line 61
    .end local v6    # "codeWidth":I
    .local v7, "codeWidth":I
    :goto_1
    if-ge v6, v1, :cond_2

    aget v8, v2, v6

    .line 62
    .local v8, "width":I
    add-int/2addr v7, v8

    .line 61
    .end local v8    # "width":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 55
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v6, v7

    goto :goto_0

    .line 65
    .end local v3    # "i":I
    .end local v5    # "indexInString":I
    .end local v7    # "codeWidth":I
    .restart local v6    # "codeWidth":I
    :cond_3
    new-array v1, v6, [Z

    .line 66
    .local v1, "result":[Z
    sget v3, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    invoke-static {v3, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 67
    const/4 v3, 0x1

    invoke-static {v1, v4, v2, v3}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v5

    .line 68
    .local v5, "pos":I
    new-array v7, v3, [I

    aput v3, v7, v4

    .line 69
    .local v7, "narrowWhite":[I
    invoke-static {v1, v5, v7, v4}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v5, v8

    .line 71
    move v8, v5

    const/4 v5, 0x0

    .line 71
    .local v5, "i":I
    .local v8, "pos":I
    :goto_2
    if-ge v5, v0, :cond_4

    .line 72
    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 73
    .local v9, "indexInString":I
    sget-object v10, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v10, v10, v9

    invoke-static {v10, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 74
    invoke-static {v1, v8, v2, v3}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v10, v8

    .line 75
    move v8, v10

    invoke-static {v1, v8, v7, v4}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v11

    add-int v8, v10, v11

    .line 71
    .end local v9    # "indexInString":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 77
    .end local v5    # "i":I
    :cond_4
    sget v4, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    invoke-static {v4, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 78
    invoke-static {v1, v8, v2, v3}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    .line 79
    return-object v1
.end method
