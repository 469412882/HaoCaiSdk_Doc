.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final QUIET_ZONE_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;
    .locals 20
    .param p0, "code"    # Lcom/google/zxing/qrcode/encoder/QRCode;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "quietZone"    # I

    const/4 v1, 0x0

    .line 85
    .local v1, "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object v2

    .line 86
    move-object v1, v2

    if-nez v2, :cond_0

    .line 87
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 89
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    .line 90
    .local v2, "inputWidth":I
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 91
    .local v3, "inputHeight":I
    shl-int/lit8 v4, p3, 0x1

    add-int/2addr v4, v2

    .line 92
    .local v4, "qrWidth":I
    shl-int/lit8 v5, p3, 0x1

    add-int/2addr v5, v3

    .line 93
    .local v5, "qrHeight":I
    move/from16 v6, p1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 94
    .local v7, "outputWidth":I
    move/from16 v8, p2

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 96
    .local v9, "outputHeight":I
    div-int v10, v7, v4

    div-int v11, v9, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 101
    .local v10, "multiple":I
    mul-int v11, v2, v10

    sub-int v11, v7, v11

    div-int/lit8 v11, v11, 0x2

    .line 102
    .local v11, "leftPadding":I
    mul-int v12, v3, v10

    sub-int v12, v9, v12

    div-int/lit8 v12, v12, 0x2

    .line 104
    .local v12, "topPadding":I
    new-instance v13, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v13, v7, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 106
    .local v13, "output":Lcom/google/zxing/common/BitMatrix;
    const/4 v14, 0x0

    .line 106
    .local v14, "inputY":I
    move v15, v14

    move v14, v12

    .line 106
    .local v14, "outputY":I
    .local v15, "inputY":I
    :goto_0
    if-ge v15, v3, :cond_3

    .line 108
    const/16 v16, 0x0

    .line 108
    .local v16, "inputX":I
    move/from16 v0, v16

    move/from16 v16, v11

    .line 108
    .local v0, "inputX":I
    .local v16, "outputX":I
    :goto_1
    move/from16 v17, v16

    .line 108
    .end local v16    # "outputX":I
    .local v17, "outputX":I
    if-ge v0, v2, :cond_2

    .line 109
    move/from16 v18, v2

    invoke-virtual {v1, v0, v15}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    .line 109
    .end local v2    # "inputWidth":I
    .local v18, "inputWidth":I
    move-object/from16 v19, v1

    const/4 v1, 0x1

    .line 109
    .end local v1    # "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .local v19, "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    if-ne v2, v1, :cond_1

    .line 110
    move/from16 v1, v17

    invoke-virtual {v13, v1, v14, v10, v10}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    goto :goto_2

    .line 108
    :cond_1
    move/from16 v1, v17

    .line 108
    .end local v17    # "outputX":I
    .local v1, "outputX":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int v16, v1, v10

    .line 108
    .end local v1    # "outputX":I
    .restart local v16    # "outputX":I
    move/from16 v2, v18

    move-object/from16 v1, v19

    goto :goto_1

    .line 106
    .end local v0    # "inputX":I
    .end local v16    # "outputX":I
    .end local v18    # "inputWidth":I
    .end local v19    # "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .local v1, "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .restart local v2    # "inputWidth":I
    :cond_2
    move-object/from16 v19, v1

    move/from16 v18, v2

    .line 106
    .end local v1    # "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .end local v2    # "inputWidth":I
    .restart local v18    # "inputWidth":I
    .restart local v19    # "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    add-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v10

    goto :goto_0

    .line 115
    .end local v14    # "outputY":I
    .end local v15    # "inputY":I
    .end local v18    # "inputWidth":I
    .end local v19    # "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .restart local v1    # "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .restart local v2    # "inputWidth":I
    :cond_3
    move-object/from16 v19, v1

    move/from16 v18, v2

    .line 115
    .end local v1    # "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .end local v2    # "inputWidth":I
    .restart local v18    # "inputWidth":I
    .restart local v19    # "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return-object v13
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
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

    .line 44
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

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

    .line 54
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode QR_CODE, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    if-ltz p3, :cond_5

    if-gez p4, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 68
    .local v0, "errorCorrectionLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    const/4 v1, 0x4

    .line 69
    .local v1, "quietZone":I
    if-eqz p5, :cond_4

    .line 70
    sget-object v2, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    sget-object v2, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    .line 73
    :cond_3
    sget-object v2, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    sget-object v2, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    :cond_4
    invoke-static {p1, v0, p5}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v2

    .line 79
    invoke-static {v2, p3, p4, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2

    .line 63
    .end local v0    # "errorCorrectionLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .end local v1    # "quietZone":I
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested dimensions are too small: "

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
