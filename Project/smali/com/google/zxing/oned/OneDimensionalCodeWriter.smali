.class public abstract Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.super Ljava/lang/Object;
.source "OneDimensionalCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendPattern([ZI[IZ)I
    .locals 8
    .param p0, "target"    # [Z
    .param p1, "pos"    # I
    .param p2, "pattern"    # [I
    .param p3, "startColor"    # Z

    .line 102
    move v0, p3

    .line 103
    .local v0, "color":Z
    const/4 v1, 0x0

    .line 104
    .local v1, "numAdded":I
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v0

    move v0, p1

    const/4 p1, 0x0

    .line 104
    .end local p1    # "pos":I
    .local v0, "pos":I
    .local v4, "color":Z
    :goto_0
    if-ge p1, v2, :cond_2

    aget v5, p2, p1

    .line 105
    .local v5, "len":I
    move v6, v0

    const/4 v0, 0x0

    .line 105
    .local v0, "j":I
    .local v6, "pos":I
    :goto_1
    if-ge v0, v5, :cond_0

    .line 106
    add-int/lit8 v7, v6, 0x1

    .line 106
    .local v7, "pos":I
    aput-boolean v4, p0, v6

    .line 105
    .end local v6    # "pos":I
    add-int/lit8 v0, v0, 0x1

    move v6, v7

    goto :goto_1

    .line 108
    .end local v0    # "j":I
    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    :cond_0
    add-int/2addr v1, v5

    .line 109
    if-nez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    move v4, v0

    .line 104
    .end local v5    # "len":I
    add-int/lit8 p1, p1, 0x1

    move v0, v6

    goto :goto_0

    .line 111
    .end local v6    # "pos":I
    .local v0, "pos":I
    :cond_2
    return v1
.end method

.method private static renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;
    .locals 10
    .param p0, "code"    # [Z
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sidesMargin"    # I

    const/4 v0, 0x0

    .line 75
    .local v0, "inputWidth":I
    array-length v1, p0

    .line 77
    move v0, v1

    add-int/2addr v1, p3

    .line 78
    .local v1, "fullWidth":I
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 79
    .local v2, "outputWidth":I
    const/4 v3, 0x1

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 81
    .local v3, "outputHeight":I
    div-int v4, v2, v1

    .line 82
    .local v4, "multiple":I
    mul-int v5, v0, v4

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    .line 84
    .local v5, "leftPadding":I
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 85
    .local v6, "output":Lcom/google/zxing/common/BitMatrix;
    const/4 v7, 0x0

    .line 85
    .local v7, "inputX":I
    move v8, v7

    move v7, v5

    .line 85
    .local v7, "outputX":I
    .local v8, "inputX":I
    :goto_0
    if-ge v8, v0, :cond_1

    .line 86
    aget-boolean v9, p0, v8

    if-eqz v9, :cond_0

    .line 87
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v4, v3}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 85
    :cond_0
    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v4

    goto :goto_0

    .line 90
    .end local v7    # "outputX":I
    .end local v8    # "inputX":I
    :cond_1
    return-object v6
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 37
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

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

    .line 53
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-ltz p3, :cond_3

    if-gez p4, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->getDefaultMargin()I

    move-result v0

    .line 63
    .local v0, "sidesMargin":I
    if-eqz p5, :cond_2

    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;)[Z

    move-result-object v1

    .line 68
    invoke-static {v1, p3, p4, v0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1

    .line 58
    .end local v0    # "sidesMargin":I
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative size is not allowed. Input: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract encode(Ljava/lang/String;)[Z
.end method

.method public getDefaultMargin()I
    .locals 1

    .line 117
    const/16 v0, 0xa

    return v0
.end method
