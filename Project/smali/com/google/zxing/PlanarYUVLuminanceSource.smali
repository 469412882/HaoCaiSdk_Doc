.class public final Lcom/google/zxing/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# static fields
.field private static final THUMBNAIL_SCALE_FACTOR:I = 0x2


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 2
    .param p1, "yuvData"    # [B
    .param p2, "dataWidth"    # I
    .param p3, "dataHeight"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "reverseHorizontal"    # Z

    .line 47
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 49
    add-int v0, p4, p6

    if-gt v0, p2, :cond_2

    add-int v0, p5, p7

    if-le v0, p3, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 54
    iput p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 55
    iput p3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 56
    iput p4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 57
    iput p5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    .line 58
    if-eqz p8, :cond_1

    .line 59
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/PlanarYUVLuminanceSource;->reverseHorizontal(II)V

    .line 61
    :cond_1
    return-void

    .line 50
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reverseHorizontal(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 157
    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 158
    .local v0, "yuvData":[B
    const/4 v1, 0x0

    .line 158
    .local v1, "y":I
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int v2, v2, v3

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 158
    .local v2, "rowStart":I
    :goto_0
    add-int/2addr v2, v3

    if-ge v1, p2, :cond_1

    .line 159
    div-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v2

    .line 160
    .local v3, "middle":I
    move v4, v2

    .line 160
    .local v4, "x1":I
    add-int v5, v2, p1

    add-int/lit8 v5, v5, -0x1

    .line 160
    .local v5, "x2":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 161
    aget-byte v6, v0, v4

    .line 162
    .local v6, "temp":B
    aget-byte v7, v0, v5

    aput-byte v7, v0, v4

    .line 163
    aput-byte v6, v0, v5

    .line 160
    .end local v6    # "temp":B
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 158
    .end local v3    # "middle":I
    .end local v4    # "x1":I
    .end local v5    # "x2":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    goto :goto_0

    .line 166
    .end local v1    # "y":I
    .end local v2    # "rowStart":I
    :cond_1
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 114
    new-instance v9, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    iget v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v4, v0, p1

    iget v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    add-int v5, v0, p2

    const/4 v8, 0x0

    move-object v0, v9

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v9
.end method

.method public getMatrix()[B
    .locals 8

    .line 79
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    .line 80
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 84
    .local v1, "height":I
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    return-object v2

    .line 88
    :cond_0
    mul-int v2, v0, v1

    const/4 v3, 0x0

    move v4, v3

    .line 89
    .local v4, "area":I
    move v4, v2

    new-array v2, v2, [B

    .line 90
    .local v2, "matrix":[B
    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int v5, v5, v6

    iget v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v5, v6

    .line 93
    .local v5, "inputOffset":I
    iget v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v0, v6, :cond_1

    .line 94
    iget-object v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    invoke-static {v6, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    return-object v2

    .line 99
    :cond_1
    nop

    .line 99
    .local v3, "y":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 100
    mul-int v6, v3, v0

    .line 101
    .local v6, "outputOffset":I
    iget-object v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    invoke-static {v7, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v5, v7

    .line 99
    .end local v6    # "outputOffset":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "y":I
    :cond_2
    return-object v2
.end method

.method public getRow(I[B)[B
    .locals 4
    .param p1, "y"    # I
    .param p2, "row"    # [B

    .line 65
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    .line 69
    .local v0, "width":I
    if-eqz p2, :cond_1

    array-length v1, p2

    if-ge v1, v0, :cond_2

    .line 70
    :cond_1
    new-array p2, v0, [B

    .line 72
    :cond_2
    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v1, v2

    .line 73
    .local v1, "offset":I
    iget-object v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object p2

    .line 66
    .end local v0    # "width":I
    .end local v1    # "offset":I
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested row is outside the image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isCropSupported()Z
    .locals 1

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public renderThumbnail()[I
    .locals 13

    .line 125
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 126
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 127
    .local v1, "height":I
    mul-int v2, v0, v1

    new-array v2, v2, [I

    .line 128
    .local v2, "pixels":[I
    iget-object v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 129
    .local v3, "yuv":[B
    iget v4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v4, v5

    .line 131
    .local v4, "inputOffset":I
    const/4 v5, 0x0

    move v6, v4

    const/4 v4, 0x0

    .line 131
    .local v4, "y":I
    .local v6, "inputOffset":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 132
    mul-int v7, v4, v0

    .line 133
    .local v7, "outputOffset":I
    const/4 v8, 0x0

    .line 133
    .local v8, "x":I
    :goto_1
    if-ge v8, v0, :cond_0

    .line 134
    shl-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v6

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    .line 135
    .local v9, "grey":I
    add-int v10, v7, v8

    const/high16 v11, -0x1000000

    const v12, 0x10101

    mul-int v12, v12, v9

    or-int/2addr v11, v12

    aput v11, v2, v10

    .line 133
    .end local v9    # "grey":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 137
    .end local v8    # "x":I
    :cond_0
    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v6, v8

    .line 131
    .end local v7    # "outputOffset":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    .end local v4    # "y":I
    :cond_1
    return-object v2
.end method
