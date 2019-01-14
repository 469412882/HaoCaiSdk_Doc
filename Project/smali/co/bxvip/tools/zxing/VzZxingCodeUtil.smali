.class public Lco/bxvip/tools/zxing/VzZxingCodeUtil;
.super Ljava/lang/Object;
.source "VzZxingCodeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "logo"    # Landroid/graphics/Bitmap;

    .line 101
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 102
    return-object v0

    .line 105
    :cond_0
    if-nez p1, :cond_1

    .line 106
    return-object p0

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 111
    .local v1, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 112
    .local v2, "srcHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 113
    .local v3, "logoWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 115
    .local v4, "logoHeight":I
    if-eqz v1, :cond_5

    if-nez v2, :cond_2

    goto :goto_2

    .line 119
    :cond_2
    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    goto :goto_1

    .line 124
    :cond_3
    int-to-float v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 125
    .local v5, "scaleFactor":F
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 128
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    invoke-virtual {v7, p0, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 130
    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, v5, v5, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 131
    sub-int v8, v1, v3

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-int v9, v2, v4

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, p1, v8, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 134
    const/16 v0, 0x1f

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 135
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v6

    .line 120
    .end local v5    # "scaleFactor":F
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 116
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static createZxingImage(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 18
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "widthPix"    # I
    .param p2, "heightPix"    # I
    .param p3, "logoBm"    # Landroid/graphics/Bitmap;
    .param p4, "filePath"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move-object/from16 v13, p3

    .line 38
    move-object/from16 v12, p4

    const/4 v11, 0x0

    if-eqz v7, :cond_8

    :try_start_0
    const-string v1, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 43
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v10, v1

    .line 44
    .local v10, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, v7

    move v4, v15

    move v5, v14

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 53
    .local v1, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v2, v15, v14

    new-array v2, v2, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 56
    .local v2, "pixels":[I
    const/4 v3, 0x0

    .line 56
    .local v3, "y":I
    :goto_0
    if-ge v3, v14, :cond_3

    .line 57
    const/4 v4, 0x0

    .line 57
    .local v4, "x":I
    :goto_1
    if-ge v4, v15, :cond_2

    .line 58
    :try_start_1
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    mul-int v5, v3, v15

    add-int/2addr v5, v4

    const/high16 v6, -0x1000000

    aput v6, v2, v5

    goto :goto_2

    .line 62
    :cond_1
    mul-int v5, v3, v15

    add-int/2addr v5, v4

    const/4 v6, -0x1

    aput v6, v2, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    .end local v1    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v2    # "pixels":[I
    .end local v3    # "y":I
    .end local v4    # "x":I
    .end local v10    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v4, v12

    move-object v5, v13

    goto/16 :goto_5

    .line 56
    .restart local v1    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v2    # "pixels":[I
    .restart local v3    # "y":I
    .restart local v10    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "y":I
    :cond_3
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, v3

    move-object v9, v2

    move-object/from16 v16, v10

    move v10, v4

    .line 70
    .end local v10    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .local v16, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    move v11, v15

    move-object v4, v12

    move v12, v5

    move-object v5, v13

    move v13, v6

    move v14, v15

    move/from16 v15, p2

    :try_start_3
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 72
    if-eqz v5, :cond_4

    .line 73
    invoke-static {v3, v5}, Lco/bxvip/tools/zxing/VzZxingCodeUtil;->addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v3, v6

    .line 76
    :cond_4
    new-instance v6, Ljava/io/File;

    const-string v8, "/"

    .line 77
    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 79
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_5
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_6

    .line 83
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 87
    :cond_6
    if-eqz v3, :cond_7

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 88
    invoke-virtual {v3, v9, v10, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v9, :cond_7

    .line 87
    const/4 v11, 0x1

    goto :goto_3

    .line 88
    :cond_7
    nop

    .line 87
    const/4 v11, 0x0

    :goto_3
    return v11

    .line 90
    .end local v1    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v2    # "pixels":[I
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "dir":Ljava/io/File;
    .end local v8    # "file":Ljava/io/File;
    .end local v16    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v4, v12

    move-object v5, v13

    :goto_4
    move-object v1, v0

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1

    .line 39
    :cond_8
    :goto_6
    move-object v4, v12

    move-object v5, v13

    const/4 v1, 0x0

    return v1
.end method
