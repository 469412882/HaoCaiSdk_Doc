.class public final Lcom/google/zxing/oned/ITFWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "ITFWriter.java"


# static fields
.field private static final END_PATTERN:[I

.field private static final START_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

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

    .line 42
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode ITF, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 12
    .param p1, "contents"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 52
    move v0, v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of the input should be even"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    const/16 v1, 0x50

    if-le v0, v1, :cond_1

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_1
    mul-int/lit8 v1, v0, 0x9

    add-int/lit8 v1, v1, 0x9

    new-array v1, v1, [Z

    const/4 v2, 0x0

    .line 60
    .local v2, "result":[Z
    move-object v2, v1

    sget-object v3, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v4, v3, v5}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v1

    .line 61
    .local v1, "pos":I
    move v3, v1

    const/4 v1, 0x0

    .line 61
    .local v1, "i":I
    .local v3, "pos":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 63
    .local v6, "one":I
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 64
    .local v7, "two":I
    const/16 v8, 0x12

    new-array v8, v8, [I

    .line 65
    .local v8, "encoding":[I
    const/4 v9, 0x0

    .line 65
    .local v9, "j":I
    :goto_1
    const/4 v10, 0x5

    if-ge v9, v10, :cond_2

    .line 66
    mul-int/lit8 v10, v9, 0x2

    sget-object v11, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v11, v11, v6

    aget v11, v11, v9

    aput v11, v8, v10

    .line 67
    mul-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v5

    sget-object v11, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v11, v11, v7

    aget v11, v11, v9

    aput v11, v8, v10

    .line 65
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 69
    .end local v9    # "j":I
    :cond_2
    invoke-static {v2, v3, v8, v5}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v3, v9

    .line 61
    .end local v6    # "one":I
    .end local v7    # "two":I
    .end local v8    # "encoding":[I
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_3
    sget-object v1, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    invoke-static {v2, v3, v1, v5}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    .line 73
    return-object v2
.end method
