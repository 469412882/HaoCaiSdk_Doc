.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$CType;
    }
.end annotation


# static fields
.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static chooseCode(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "oldCode"    # I

    const/4 v0, 0x0

    .line 210
    .local v0, "lookahead":Lcom/google/zxing/oned/Code128Writer$CType;
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v1

    .line 211
    move-object v0, v1

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    const/16 v3, 0x64

    if-eq v1, v2, :cond_c

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 214
    :cond_0
    const/16 v1, 0x63

    if-ne p2, v1, :cond_1

    .line 215
    return p2

    .line 217
    :cond_1
    if-ne p2, v3, :cond_9

    .line 218
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v2, :cond_2

    .line 219
    return p2

    .line 222
    :cond_2
    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v2

    .line 223
    move-object v0, v2

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v2, v4, :cond_8

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 226
    :cond_3
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v2, :cond_5

    .line 227
    add-int/lit8 v2, p1, 0x3

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v2

    .line 228
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v2, v4, :cond_4

    .line 229
    return v1

    .line 231
    :cond_4
    return v3

    .line 236
    :cond_5
    add-int/lit8 v2, p1, 0x4

    .line 237
    .local v2, "index":I
    :goto_0
    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v4

    move-object v0, v4

    sget-object v5, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v4, v5, :cond_6

    .line 238
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 240
    :cond_6
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v4, :cond_7

    .line 241
    return v3

    .line 243
    :cond_7
    return v1

    .line 224
    .end local v2    # "index":I
    :cond_8
    :goto_1
    return p2

    .line 246
    :cond_9
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v2, :cond_a

    .line 247
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v0

    .line 249
    :cond_a
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v2, :cond_b

    .line 250
    return v1

    .line 252
    :cond_b
    return v3

    .line 212
    :cond_c
    :goto_2
    return v3
.end method

.method private static findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;
    .locals 5
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 188
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 189
    .local v0, "last":I
    if-lt p1, v0, :cond_0

    .line 190
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 192
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    .line 193
    .local v2, "c":C
    move v2, v1

    const/16 v3, 0xf1

    if-ne v1, v3, :cond_1

    .line 194
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 196
    :cond_1
    const/16 v1, 0x30

    if-lt v2, v1, :cond_6

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 199
    :cond_2
    add-int/lit8 v4, p1, 0x1

    if-lt v4, v0, :cond_3

    .line 200
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 202
    :cond_3
    add-int/lit8 v4, p1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 203
    move v2, v4

    if-lt v4, v1, :cond_5

    if-le v2, v3, :cond_4

    goto :goto_0

    .line 206
    :cond_4
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 204
    :cond_5
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 197
    :cond_6
    :goto_1
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1
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

    .line 66
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_128, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 16
    .param p1, "contents"    # Ljava/lang/String;

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 74
    .local v1, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 76
    move v1, v2

    if-lez v2, :cond_d

    const/16 v2, 0x50

    if-le v1, v2, :cond_0

    goto/16 :goto_9

    .line 81
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 81
    .local v3, "i":I
    .local v4, "c":C
    :goto_0
    const/16 v5, 0x20

    if-ge v3, v1, :cond_3

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 83
    move v4, v6

    if-lt v6, v5, :cond_1

    const/16 v5, 0x7e

    if-le v4, v5, :cond_2

    .line 84
    :cond_1
    packed-switch v4, :pswitch_data_0

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad character in input: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :pswitch_0
    nop

    .line 81
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v3, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    const/4 v4, 0x0

    .line 98
    .local v4, "checkSum":I
    const/4 v6, 0x1

    .line 99
    .local v6, "checkWeight":I
    const/4 v7, 0x0

    .line 100
    .local v7, "codeSet":I
    move v8, v4

    move v9, v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 102
    .local v4, "position":I
    .local v6, "newCodeSet":I
    .local v8, "checkSum":I
    .local v9, "checkWeight":I
    :goto_1
    const/4 v10, 0x1

    if-ge v4, v1, :cond_9

    .line 104
    invoke-static {v0, v4, v7}, Lcom/google/zxing/oned/Code128Writer;->chooseCode(Ljava/lang/CharSequence;II)I

    move-result v11

    .line 108
    move v6, v11

    const/16 v12, 0x64

    if-ne v11, v7, :cond_5

    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    packed-switch v11, :pswitch_data_1

    .line 126
    if-ne v7, v12, :cond_4

    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sub-int/2addr v11, v5

    .line 127
    .local v11, "patternIndex":I
    goto :goto_2

    .line 122
    .end local v11    # "patternIndex":I
    :pswitch_1
    const/16 v11, 0x64

    .line 123
    .restart local v11    # "patternIndex":I
    goto :goto_2

    .line 119
    .end local v11    # "patternIndex":I
    :pswitch_2
    const/16 v11, 0x60

    .line 120
    .restart local v11    # "patternIndex":I
    goto :goto_2

    .line 116
    .end local v11    # "patternIndex":I
    :pswitch_3
    const/16 v11, 0x61

    .line 117
    .restart local v11    # "patternIndex":I
    goto :goto_2

    .line 113
    .end local v11    # "patternIndex":I
    :pswitch_4
    const/16 v11, 0x66

    .line 114
    .restart local v11    # "patternIndex":I
    goto :goto_2

    .line 129
    .end local v11    # "patternIndex":I
    :cond_4
    add-int/lit8 v11, v4, 0x2

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 130
    .restart local v11    # "patternIndex":I
    add-int/lit8 v4, v4, 0x1

    .line 133
    :goto_2
    add-int/2addr v4, v10

    goto :goto_5

    .line 137
    .end local v11    # "patternIndex":I
    :cond_5
    if-nez v7, :cond_7

    .line 139
    if-ne v6, v12, :cond_6

    .line 140
    const/16 v10, 0x68

    .line 140
    .local v10, "patternIndex":I
    :goto_3
    goto :goto_4

    .line 143
    .end local v10    # "patternIndex":I
    :cond_6
    const/16 v10, 0x69

    goto :goto_3

    .line 147
    :cond_7
    move v10, v6

    .line 147
    .restart local v10    # "patternIndex":I
    :goto_4
    move v11, v10

    .line 149
    .end local v10    # "patternIndex":I
    .restart local v11    # "patternIndex":I
    move v7, v6

    .line 153
    :goto_5
    sget-object v10, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v10, v10, v11

    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    mul-int v10, v11, v9

    add-int/2addr v8, v10

    .line 157
    if-eqz v4, :cond_8

    .line 158
    add-int/lit8 v9, v9, 0x1

    .line 160
    .end local v6    # "newCodeSet":I
    .end local v11    # "patternIndex":I
    :cond_8
    goto :goto_1

    .line 163
    :cond_9
    rem-int/lit8 v8, v8, 0x67

    .line 164
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v5, v5, v8

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v6, 0x6a

    aget-object v5, v5, v6

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v5, 0x0

    .line 171
    .local v5, "codeWidth":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v11, 0x0

    .line 171
    .local v11, "pattern":[I
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 172
    array-length v13, v12

    move v14, v5

    const/4 v5, 0x0

    .line 172
    .end local v5    # "codeWidth":I
    .local v14, "codeWidth":I
    :goto_7
    if-ge v5, v13, :cond_a

    aget v15, v12, v5

    .line 173
    .local v15, "width":I
    add-int/2addr v14, v15

    .line 172
    .end local v15    # "width":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 175
    :cond_a
    nop

    .line 171
    move v5, v14

    goto :goto_6

    .line 178
    .end local v11    # "pattern":[I
    .end local v14    # "codeWidth":I
    .restart local v5    # "codeWidth":I
    :cond_b
    new-array v2, v5, [Z

    .line 179
    .local v2, "result":[Z
    const/4 v6, 0x0

    .line 180
    .local v6, "pos":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 181
    .local v12, "pattern":[I
    invoke-static {v2, v6, v12, v10}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v6, v13

    .line 182
    .end local v12    # "pattern":[I
    goto :goto_8

    .line 184
    :cond_c
    return-object v2

    .line 77
    .end local v2    # "result":[Z
    .end local v3    # "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    .end local v4    # "position":I
    .end local v5    # "codeWidth":I
    .end local v6    # "pos":I
    .end local v7    # "codeSet":I
    .end local v8    # "checkSum":I
    .end local v9    # "checkWeight":I
    :cond_d
    :goto_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Contents length should be between 1 and 80 characters, but got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
