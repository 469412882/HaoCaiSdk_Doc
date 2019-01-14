.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 34
    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    .local v0, "counters":[I
    iget-object v1, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 41
    move-object v0, v1

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 42
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 43
    const/4 v3, 0x2

    aput v2, v0, v3

    .line 44
    const/4 v3, 0x3

    aput v2, v0, v3

    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 46
    .local v3, "end":I
    aget v4, p2, v1

    .line 48
    .local v4, "rowOffset":I
    move v5, v4

    const/4 v4, 0x0

    .line 48
    .local v4, "x":I
    .local v5, "rowOffset":I
    :goto_0
    const/4 v6, 0x4

    if-ge v4, v6, :cond_1

    if-ge v5, v3, :cond_1

    .line 49
    sget-object v6, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v0, v5, v6}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v6

    .line 50
    .local v6, "bestMatch":I
    add-int/lit8 v7, v6, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    array-length v7, v0

    move v8, v5

    const/4 v5, 0x0

    .line 51
    .end local v5    # "rowOffset":I
    .local v8, "rowOffset":I
    :goto_1
    if-ge v5, v7, :cond_0

    aget v9, v0, v5

    .line 52
    .local v9, "counter":I
    add-int/2addr v8, v9

    .line 51
    .end local v9    # "counter":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 48
    .end local v6    # "bestMatch":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_0

    .line 56
    .end local v4    # "x":I
    .end local v8    # "rowOffset":I
    .restart local v5    # "rowOffset":I
    :cond_1
    sget-object v4, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v5, v1, v4}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v4

    const/4 v7, 0x0

    .line 57
    .local v7, "middleRange":[I
    aget v1, v4, v1

    .line 59
    .end local v5    # "rowOffset":I
    .local v1, "rowOffset":I
    move v4, v1

    const/4 v1, 0x0

    .line 59
    .local v1, "x":I
    .local v4, "rowOffset":I
    :goto_2
    if-ge v1, v6, :cond_3

    if-ge v4, v3, :cond_3

    .line 60
    sget-object v5, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v0, v4, v5}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v5

    .line 61
    .local v5, "bestMatch":I
    add-int/lit8 v8, v5, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    array-length v8, v0

    move v9, v4

    const/4 v4, 0x0

    .line 62
    .end local v4    # "rowOffset":I
    .local v9, "rowOffset":I
    :goto_3
    if-ge v4, v8, :cond_2

    aget v10, v0, v4

    .line 63
    .local v10, "counter":I
    add-int/2addr v9, v10

    .line 62
    .end local v10    # "counter":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 59
    .end local v5    # "bestMatch":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v4, v9

    goto :goto_2

    .line 67
    .end local v1    # "x":I
    .end local v9    # "rowOffset":I
    .restart local v4    # "rowOffset":I
    :cond_3
    return v4
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 72
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
