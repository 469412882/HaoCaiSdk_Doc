.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .locals 20
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v0, p0

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v1

    .line 52
    .local v1, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    const/4 v2, 0x0

    .line 53
    .local v2, "totalBlocks":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v3

    const/4 v4, 0x0

    .line 54
    .local v4, "ecBlockArray":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v4, v3

    array-length v5, v3

    move v7, v2

    const/4 v2, 0x0

    .line 54
    .end local v2    # "totalBlocks":I
    .local v7, "totalBlocks":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v8, v3, v2

    .line 55
    .local v8, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v9

    add-int/2addr v7, v9

    .line 54
    .end local v8    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-array v3, v7, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    .line 60
    .local v3, "result":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/4 v5, 0x0

    .line 61
    .local v5, "numResultBlocks":I
    array-length v8, v4

    move v9, v5

    const/4 v5, 0x0

    .line 61
    .end local v5    # "numResultBlocks":I
    .local v9, "numResultBlocks":I
    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v10, v4, v5

    .line 62
    .local v10, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move v11, v9

    const/4 v9, 0x0

    .line 62
    .local v9, "i":I
    .local v11, "numResultBlocks":I
    :goto_2
    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v12

    if-ge v9, v12, :cond_1

    .line 63
    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v12

    .line 64
    .local v12, "numDataCodewords":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v13

    add-int/2addr v13, v12

    .line 65
    .local v13, "numBlockCodewords":I
    add-int/lit8 v14, v11, 0x1

    .line 65
    .local v14, "numResultBlocks":I
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v6, v13, [B

    invoke-direct {v15, v12, v6}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v15, v3, v11

    .line 62
    .end local v11    # "numResultBlocks":I
    .end local v12    # "numDataCodewords":I
    .end local v13    # "numBlockCodewords":I
    add-int/lit8 v9, v9, 0x1

    move v11, v14

    goto :goto_2

    .line 61
    .end local v9    # "i":I
    .end local v10    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .end local v14    # "numResultBlocks":I
    .restart local v11    # "numResultBlocks":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v9, v11

    goto :goto_1

    .line 72
    .end local v11    # "numResultBlocks":I
    .local v9, "numResultBlocks":I
    :cond_2
    const/4 v5, 0x0

    aget-object v6, v3, v5

    iget-object v5, v6, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v5, v5

    .line 75
    .local v2, "longerBlocksTotalCodewords":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v6

    sub-int/2addr v5, v6

    move v6, v8

    .line 76
    .local v6, "longerBlocksNumDataCodewords":I
    move v6, v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    .line 79
    .local v5, "shorterBlocksNumDataCodewords":I
    const/4 v10, 0x0

    .line 80
    .local v10, "rawCodewordsOffset":I
    move v11, v10

    const/4 v10, 0x0

    .line 80
    .local v10, "i":I
    .local v11, "rawCodewordsOffset":I
    :goto_3
    if-ge v10, v5, :cond_4

    .line 81
    move v12, v11

    const/4 v11, 0x0

    .line 81
    .local v11, "j":I
    .local v12, "rawCodewordsOffset":I
    :goto_4
    if-ge v11, v9, :cond_3

    .line 82
    aget-object v13, v3, v11

    iget-object v13, v13, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v14, v12, 0x1

    .line 82
    .local v14, "rawCodewordsOffset":I
    aget-byte v12, v0, v12

    .line 82
    .end local v12    # "rawCodewordsOffset":I
    aput-byte v12, v13, v10

    .line 81
    add-int/lit8 v11, v11, 0x1

    move v12, v14

    goto :goto_4

    .line 80
    .end local v11    # "j":I
    .end local v14    # "rawCodewordsOffset":I
    .restart local v12    # "rawCodewordsOffset":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    move v11, v12

    goto :goto_3

    .line 87
    .end local v12    # "rawCodewordsOffset":I
    .local v11, "rawCodewordsOffset":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v12

    const/16 v13, 0x18

    if-ne v12, v13, :cond_5

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 88
    .local v10, "specialVersion":Z
    :goto_5
    move v10, v8

    if-eqz v8, :cond_6

    const/16 v8, 0x8

    goto :goto_6

    :cond_6
    move v8, v9

    .line 89
    .local v8, "numLongerBlocks":I
    :goto_6
    move v12, v11

    const/4 v11, 0x0

    .line 89
    .local v11, "j":I
    .restart local v12    # "rawCodewordsOffset":I
    :goto_7
    if-ge v11, v8, :cond_7

    .line 90
    aget-object v13, v3, v11

    iget-object v13, v13, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v14, v6, -0x1

    add-int/lit8 v15, v12, 0x1

    .line 90
    .local v15, "rawCodewordsOffset":I
    aget-byte v12, v0, v12

    .line 90
    .end local v12    # "rawCodewordsOffset":I
    aput-byte v12, v13, v14

    .line 89
    add-int/lit8 v11, v11, 0x1

    move v12, v15

    goto :goto_7

    .line 94
    .end local v11    # "j":I
    .end local v15    # "rawCodewordsOffset":I
    .restart local v12    # "rawCodewordsOffset":I
    :cond_7
    const/4 v11, 0x0

    aget-object v13, v3, v11

    iget-object v13, v13, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v13, v13

    .line 95
    .local v13, "max":I
    move v14, v12

    move v12, v6

    .line 95
    .local v12, "i":I
    .restart local v14    # "rawCodewordsOffset":I
    :goto_8
    if-ge v12, v13, :cond_c

    .line 96
    move v15, v14

    const/4 v14, 0x0

    .line 96
    .local v14, "j":I
    .restart local v15    # "rawCodewordsOffset":I
    :goto_9
    if-ge v14, v9, :cond_b

    .line 97
    if-eqz v10, :cond_8

    add-int/lit8 v16, v14, 0x8

    rem-int v16, v16, v9

    goto :goto_a

    :cond_8
    move/from16 v16, v14

    :goto_a
    move/from16 v17, v16

    .line 98
    .local v17, "jOffset":I
    if-eqz v10, :cond_9

    const/4 v11, 0x7

    move-object/from16 v18, v1

    move/from16 v1, v17

    if-le v1, v11, :cond_a

    .line 98
    .end local v17    # "jOffset":I
    .local v1, "jOffset":I
    .local v18, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    add-int/lit8 v11, v12, -0x1

    goto :goto_b

    .line 98
    .end local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .local v1, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v17    # "jOffset":I
    :cond_9
    move-object/from16 v18, v1

    move/from16 v1, v17

    .line 98
    .end local v17    # "jOffset":I
    .local v1, "jOffset":I
    .restart local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    :cond_a
    move v11, v12

    .line 99
    .local v11, "iOffset":I
    :goto_b
    move/from16 v19, v2

    aget-object v2, v3, v1

    .line 99
    .end local v2    # "longerBlocksTotalCodewords":I
    .local v19, "longerBlocksTotalCodewords":I
    iget-object v2, v2, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v16, v15, 0x1

    .line 99
    .local v16, "rawCodewordsOffset":I
    aget-byte v15, v0, v15

    .line 99
    .end local v15    # "rawCodewordsOffset":I
    aput-byte v15, v2, v11

    .line 96
    .end local v1    # "jOffset":I
    .end local v11    # "iOffset":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    const/4 v11, 0x0

    goto :goto_9

    .line 95
    .end local v14    # "j":I
    .end local v16    # "rawCodewordsOffset":I
    .end local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .end local v19    # "longerBlocksTotalCodewords":I
    .local v1, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v2    # "longerBlocksTotalCodewords":I
    .restart local v15    # "rawCodewordsOffset":I
    :cond_b
    move-object/from16 v18, v1

    move/from16 v19, v2

    .line 95
    .end local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .end local v2    # "longerBlocksTotalCodewords":I
    .restart local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v19    # "longerBlocksTotalCodewords":I
    add-int/lit8 v12, v12, 0x1

    move v14, v15

    const/4 v11, 0x0

    goto :goto_8

    .line 103
    .end local v12    # "i":I
    .end local v15    # "rawCodewordsOffset":I
    .end local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .end local v19    # "longerBlocksTotalCodewords":I
    .restart local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v2    # "longerBlocksTotalCodewords":I
    .local v14, "rawCodewordsOffset":I
    :cond_c
    move-object/from16 v18, v1

    move/from16 v19, v2

    .line 103
    .end local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .end local v2    # "longerBlocksTotalCodewords":I
    .restart local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v19    # "longerBlocksTotalCodewords":I
    array-length v1, v0

    if-eq v14, v1, :cond_d

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 107
    :cond_d
    return-object v3
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
