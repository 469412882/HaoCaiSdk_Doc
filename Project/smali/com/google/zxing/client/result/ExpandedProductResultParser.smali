.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    .line 179
    return-object v1

    .line 182
    :cond_0
    add-int/lit8 v0, p0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "rawTextAux":Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v2, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 185
    .local v3, "index":I
    .local v4, "currentChar":C
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 186
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 187
    move v4, v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_1

    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    :cond_1
    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2

    .line 190
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    :cond_2
    return-object v1

    .line 195
    .end local v3    # "index":I
    .end local v4    # "currentChar":C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "rawTextAux":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 202
    .local v2, "index":I
    .local v3, "c":C
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 204
    move v3, v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_0

    .line 207
    invoke-static {v2, v1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 208
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 213
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "index":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .locals 33
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 48
    return-object v2

    .line 50
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "rawText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 53
    .local v1, "productID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 54
    .local v3, "sscc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 55
    .local v4, "lotNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 56
    .local v5, "productionDate":Ljava/lang/String;
    const/4 v6, 0x0

    .line 57
    .local v6, "packagingDate":Ljava/lang/String;
    const/4 v7, 0x0

    .line 58
    .local v7, "bestBeforeDate":Ljava/lang/String;
    const/4 v8, 0x0

    .line 59
    .local v8, "expirationDate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 60
    .local v9, "weight":Ljava/lang/String;
    const/4 v10, 0x0

    .line 61
    .local v10, "weightType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 62
    .local v11, "weightIncrement":Ljava/lang/String;
    const/4 v12, 0x0

    .line 63
    .local v12, "price":Ljava/lang/String;
    const/4 v13, 0x0

    .line 64
    .local v13, "priceIncrement":Ljava/lang/String;
    const/4 v14, 0x0

    .line 65
    .local v14, "priceCurrency":Ljava/lang/String;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v15, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 69
    .end local v4    # "lotNumber":Ljava/lang/String;
    .end local v5    # "productionDate":Ljava/lang/String;
    .end local v6    # "packagingDate":Ljava/lang/String;
    .end local v7    # "bestBeforeDate":Ljava/lang/String;
    .end local v8    # "expirationDate":Ljava/lang/String;
    .end local v9    # "weight":Ljava/lang/String;
    .end local v10    # "weightType":Ljava/lang/String;
    .end local v11    # "weightIncrement":Ljava/lang/String;
    .end local v12    # "price":Ljava/lang/String;
    .end local v13    # "priceIncrement":Ljava/lang/String;
    .end local v14    # "priceCurrency":Ljava/lang/String;
    .local v1, "i":I
    .local v3, "ai":Ljava/lang/String;
    .local v20, "productID":Ljava/lang/String;
    .local v21, "sscc":Ljava/lang/String;
    .local v22, "lotNumber":Ljava/lang/String;
    .local v23, "productionDate":Ljava/lang/String;
    .local v24, "packagingDate":Ljava/lang/String;
    .local v25, "bestBeforeDate":Ljava/lang/String;
    .local v26, "expirationDate":Ljava/lang/String;
    .local v27, "weight":Ljava/lang/String;
    .local v28, "weightType":Ljava/lang/String;
    .local v29, "weightIncrement":Ljava/lang/String;
    .local v30, "price":Ljava/lang/String;
    .local v31, "priceIncrement":Ljava/lang/String;
    .local v32, "priceCurrency":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 70
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    move-object v3, v4

    if-nez v4, :cond_1

    .line 74
    const/4 v2, 0x0

    return-object v2

    .line 76
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 77
    move v1, v4

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    .line 80
    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x622

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v7, v8, :cond_4

    const/16 v8, 0x624

    if-eq v7, v8, :cond_3

    const/16 v8, 0x626

    if-eq v7, v8, :cond_2

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    packed-switch v7, :pswitch_data_4

    packed-switch v7, :pswitch_data_5

    goto/16 :goto_1

    :pswitch_0
    const-string v5, "3933"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x22

    goto/16 :goto_2

    :pswitch_1
    const-string v5, "3932"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x21

    goto/16 :goto_2

    :pswitch_2
    const-string v5, "3931"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto/16 :goto_2

    :pswitch_3
    const-string v5, "3930"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x1f

    goto/16 :goto_2

    :pswitch_4
    const-string v5, "3923"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x1e

    goto/16 :goto_2

    :pswitch_5
    const-string v5, "3922"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x1d

    goto/16 :goto_2

    :pswitch_6
    const-string v5, "3921"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x1c

    goto/16 :goto_2

    :pswitch_7
    const-string v5, "3920"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x1b

    goto/16 :goto_2

    :pswitch_8
    const-string v5, "3209"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x1a

    goto/16 :goto_2

    :pswitch_9
    const-string v5, "3208"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x19

    goto/16 :goto_2

    :pswitch_a
    const-string v5, "3207"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x18

    goto/16 :goto_2

    :pswitch_b
    const-string v5, "3206"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x17

    goto/16 :goto_2

    :pswitch_c
    const-string v5, "3205"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x16

    goto/16 :goto_2

    :pswitch_d
    const-string v5, "3204"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x15

    goto/16 :goto_2

    :pswitch_e
    const-string v5, "3203"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x14

    goto/16 :goto_2

    :pswitch_f
    const-string v5, "3202"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x13

    goto/16 :goto_2

    :pswitch_10
    const-string v5, "3201"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x12

    goto/16 :goto_2

    :pswitch_11
    const-string v5, "3200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x11

    goto/16 :goto_2

    :pswitch_12
    const-string v5, "3109"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x10

    goto/16 :goto_2

    :pswitch_13
    const-string v5, "3108"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xf

    goto/16 :goto_2

    :pswitch_14
    const-string v5, "3107"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xe

    goto/16 :goto_2

    :pswitch_15
    const-string v5, "3106"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xd

    goto/16 :goto_2

    :pswitch_16
    const-string v5, "3105"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xc

    goto/16 :goto_2

    :pswitch_17
    const-string v5, "3104"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xb

    goto/16 :goto_2

    :pswitch_18
    const-string v5, "3103"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xa

    goto/16 :goto_2

    :pswitch_19
    const-string v5, "3102"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x9

    goto :goto_2

    :pswitch_1a
    const-string v5, "3101"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x8

    goto :goto_2

    :pswitch_1b
    const-string v5, "3100"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x7

    goto :goto_2

    :pswitch_1c
    const-string v5, "11"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    :pswitch_1d
    const-string v7, "10"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :pswitch_1e
    const-string v5, "01"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :pswitch_1f
    const-string v5, "00"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const-string v5, "17"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x6

    goto :goto_2

    :cond_3
    const-string v5, "15"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    goto :goto_2

    :cond_4
    const-string v5, "13"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_6

    .line 153
    const/4 v5, 0x0

    invoke-interface {v15, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v4    # "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 141
    .restart local v4    # "value":Ljava/lang/String;
    :pswitch_20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v9, :cond_6

    .line 145
    const/4 v5, 0x0

    return-object v5

    .line 147
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 148
    invoke-virtual {v4, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 149
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    .line 150
    goto/16 :goto_0

    .line 134
    :pswitch_21
    const/4 v5, 0x0

    move-object/from16 v30, v4

    .line 135
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    .line 136
    goto/16 :goto_0

    .line 126
    :pswitch_22
    const/4 v5, 0x0

    move-object/from16 v27, v4

    .line 127
    const-string v28, "LB"

    .line 128
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 129
    goto/16 :goto_0

    .line 112
    :pswitch_23
    const/4 v5, 0x0

    move-object/from16 v27, v4

    .line 113
    const-string v28, "KG"

    .line 114
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 115
    goto/16 :goto_0

    .line 100
    :pswitch_24
    const/4 v5, 0x0

    move-object/from16 v26, v4

    .line 101
    goto/16 :goto_0

    .line 97
    :pswitch_25
    const/4 v5, 0x0

    move-object/from16 v25, v4

    .line 98
    goto/16 :goto_0

    .line 94
    :pswitch_26
    const/4 v5, 0x0

    move-object/from16 v24, v4

    .line 95
    goto/16 :goto_0

    .line 91
    :pswitch_27
    const/4 v5, 0x0

    move-object/from16 v23, v4

    .line 92
    goto/16 :goto_0

    .line 88
    :pswitch_28
    const/4 v5, 0x0

    move-object/from16 v22, v4

    .line 89
    goto/16 :goto_0

    .line 85
    :pswitch_29
    const/4 v5, 0x0

    move-object/from16 v20, v4

    .line 86
    goto/16 :goto_0

    .line 82
    :pswitch_2a
    const/4 v5, 0x0

    move-object/from16 v21, v4

    .line 83
    goto/16 :goto_0

    .line 158
    .end local v3    # "ai":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    new-instance v2, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object v3, v2

    move-object v4, v0

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    move-object/from16 v19, v15

    move-object/from16 v15, v30

    .line 158
    .end local v15    # "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v19, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v16, v31

    move-object/from16 v17, v32

    move-object/from16 v18, v19

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61f
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17ecde
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x17f09f
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x180b24
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x180b43
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object p1

    return-object p1
.end method
