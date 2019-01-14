.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "BitArrayBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    .line 43
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    sub-int/2addr v0, v1

    .line 44
    .local v0, "charNumber":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 48
    :cond_0
    mul-int/lit8 v2, v0, 0xc

    .line 50
    .local v2, "size":I
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 51
    .local v3, "binary":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    .line 53
    .local v4, "accPos":I
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 54
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v5

    .line 55
    .local v5, "firstValue":I
    const/16 v6, 0xb

    move v7, v4

    const/16 v4, 0xb

    .line 55
    .local v4, "i":I
    .local v7, "accPos":I
    :goto_0
    if-ltz v4, :cond_2

    .line 56
    shl-int v8, v1, v4

    and-int/2addr v8, v5

    if-eqz v8, :cond_1

    .line 57
    invoke-virtual {v3, v7}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 59
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 55
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 62
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    move v8, v7

    move-object v7, v4

    const/4 v4, 0x1

    .line 62
    .restart local v4    # "i":I
    .local v7, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .local v8, "accPos":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 63
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 65
    move-object v7, v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    .line 66
    .local v9, "leftValue":I
    move v10, v8

    const/16 v8, 0xb

    .line 66
    .local v8, "j":I
    .local v10, "accPos":I
    :goto_2
    if-ltz v8, :cond_4

    .line 67
    shl-int v11, v1, v8

    and-int/2addr v11, v9

    if-eqz v11, :cond_3

    .line 68
    invoke-virtual {v3, v10}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 70
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 66
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 73
    .end local v8    # "j":I
    :cond_4
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 74
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    .line 75
    .local v8, "rightValue":I
    move v11, v10

    const/16 v10, 0xb

    .line 75
    .local v10, "j":I
    .local v11, "accPos":I
    :goto_3
    if-ltz v10, :cond_6

    .line 76
    shl-int v12, v1, v10

    and-int/2addr v12, v8

    if-eqz v12, :cond_5

    .line 77
    invoke-virtual {v3, v11}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 79
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 75
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 62
    .end local v8    # "rightValue":I
    .end local v9    # "leftValue":I
    .end local v10    # "j":I
    :cond_6
    move v8, v11

    goto :goto_4

    .line 62
    .end local v11    # "accPos":I
    .local v10, "accPos":I
    :cond_7
    move v8, v10

    .line 62
    .end local v10    # "accPos":I
    .local v8, "accPos":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 83
    .end local v4    # "i":I
    .end local v7    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_8
    return-object v3
.end method
