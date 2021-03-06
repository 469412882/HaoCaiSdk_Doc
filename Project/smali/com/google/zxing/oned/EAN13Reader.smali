.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN13Reader.java"


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .line 69
    return-void
.end method

.method private static determineFirstDigit(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "resultString"    # Ljava/lang/StringBuilder;
    .param p1, "lgPatternFound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 129
    .local v1, "d":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 130
    sget-object v2, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    .line 131
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 132
    return-void

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "d":I
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 12
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    .local v0, "counters":[I
    iget-object v1, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .line 76
    move-object v0, v1

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 77
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 78
    const/4 v3, 0x2

    aput v2, v0, v3

    .line 79
    const/4 v3, 0x3

    aput v2, v0, v3

    .line 80
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 81
    .local v3, "end":I
    aget v4, p2, v1

    .line 83
    .local v4, "rowOffset":I
    const/4 v5, 0x0

    .line 85
    .local v5, "lgPatternFound":I
    move v6, v5

    move v5, v4

    const/4 v4, 0x0

    .line 85
    .local v4, "x":I
    .local v5, "rowOffset":I
    .local v6, "lgPatternFound":I
    :goto_0
    const/4 v7, 0x6

    if-ge v4, v7, :cond_2

    if-ge v5, v3, :cond_2

    .line 86
    sget-object v7, Lcom/google/zxing/oned/EAN13Reader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v0, v5, v7}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v7

    .line 87
    .local v7, "bestMatch":I
    rem-int/lit8 v8, v7, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    array-length v8, v0

    move v9, v5

    const/4 v5, 0x0

    .line 88
    .end local v5    # "rowOffset":I
    .local v9, "rowOffset":I
    :goto_1
    if-ge v5, v8, :cond_0

    aget v10, v0, v5

    .line 89
    .local v10, "counter":I
    add-int/2addr v9, v10

    .line 88
    .end local v10    # "counter":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 91
    :cond_0
    const/16 v5, 0xa

    if-lt v7, v5, :cond_1

    .line 92
    rsub-int/lit8 v5, v4, 0x5

    shl-int v5, v1, v5

    or-int/2addr v5, v6

    .line 85
    .end local v6    # "lgPatternFound":I
    .end local v7    # "bestMatch":I
    .local v5, "lgPatternFound":I
    move v6, v5

    .line 85
    .end local v5    # "lgPatternFound":I
    .restart local v6    # "lgPatternFound":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_0

    .line 96
    .end local v4    # "x":I
    .end local v9    # "rowOffset":I
    .local v5, "rowOffset":I
    :cond_2
    invoke-static {p3, v6}, Lcom/google/zxing/oned/EAN13Reader;->determineFirstDigit(Ljava/lang/StringBuilder;I)V

    .line 98
    sget-object v4, Lcom/google/zxing/oned/EAN13Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v5, v1, v4}, Lcom/google/zxing/oned/EAN13Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v4

    const/4 v8, 0x0

    .line 99
    .local v8, "middleRange":[I
    aget v1, v4, v1

    .line 101
    .end local v5    # "rowOffset":I
    .local v1, "rowOffset":I
    move v4, v1

    const/4 v1, 0x0

    .line 101
    .local v1, "x":I
    .local v4, "rowOffset":I
    :goto_2
    if-ge v1, v7, :cond_4

    if-ge v4, v3, :cond_4

    .line 102
    sget-object v5, Lcom/google/zxing/oned/EAN13Reader;->L_PATTERNS:[[I

    invoke-static {p1, v0, v4, v5}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v5

    .line 103
    .local v5, "bestMatch":I
    add-int/lit8 v9, v5, 0x30

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    array-length v9, v0

    move v10, v4

    const/4 v4, 0x0

    .line 104
    .end local v4    # "rowOffset":I
    .local v10, "rowOffset":I
    :goto_3
    if-ge v4, v9, :cond_3

    aget v11, v0, v4

    .line 105
    .local v11, "counter":I
    add-int/2addr v10, v11

    .line 104
    .end local v11    # "counter":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 101
    .end local v5    # "bestMatch":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v4, v10

    goto :goto_2

    .line 109
    .end local v1    # "x":I
    .end local v10    # "rowOffset":I
    .restart local v4    # "rowOffset":I
    :cond_4
    return v4
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 114
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
