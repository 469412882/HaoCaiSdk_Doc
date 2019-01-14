.class public final Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# instance fields
.field private final field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 36
    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I
    .locals 5
    .param p1, "errorLocator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    .local v0, "numErrors":I
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    .line 151
    move v0, v1

    new-array v1, v1, [I

    .line 152
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 153
    .local v2, "e":I
    const/4 v3, 0x1

    .line 153
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    if-ge v2, v0, :cond_1

    .line 154
    invoke-virtual {p1, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 155
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v4

    aput v4, v1, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 153
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "i":I
    :cond_1
    if-eq v2, v0, :cond_2

    .line 160
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3

    .line 162
    :cond_2
    return-object v1
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I
    .locals 11
    .param p1, "errorEvaluator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p2, "errorLocator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p3, "errorLocations"    # [I

    const/4 v0, 0x0

    .line 168
    .local v0, "errorLocatorDegree":I
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    .line 169
    move v0, v1

    new-array v1, v1, [I

    .line 170
    .local v1, "formalDerivativeCoefficients":[I
    const/4 v2, 0x1

    .line 170
    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 171
    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 172
    invoke-virtual {p2, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v4

    aput v4, v1, v3

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v2, v3, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 177
    .local v2, "formalDerivative":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    array-length v3, p3

    const/4 v4, 0x0

    move v5, v4

    .line 178
    .local v5, "s":I
    move v5, v3

    new-array v3, v3, [I

    .line 179
    .local v3, "result":[I
    const/4 v6, 0x0

    .line 179
    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 180
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v8, p3, v6

    invoke-virtual {v7, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v7

    .line 181
    .local v7, "xiInverse":I
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p1, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v9

    invoke-virtual {v8, v4, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v8

    .line 182
    .local v8, "numerator":I
    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v9

    .line 183
    .local v9, "denominator":I
    iget-object v10, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v10, v8, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v10

    aput v10, v3, v6

    .line 179
    .end local v7    # "xiInverse":I
    .end local v8    # "numerator":I
    .end local v9    # "denominator":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 185
    .end local v6    # "i":I
    :cond_1
    return-object v3
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 12
    .param p1, "a"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p2, "b"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p3, "R"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 101
    move-object v0, p1

    .line 102
    .local v0, "temp":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object p1, p2

    .line 103
    move-object p2, v0

    .line 106
    .end local v0    # "temp":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_0
    move-object v0, p1

    .line 107
    .local v0, "rLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v1, p2

    .line 108
    .local v1, "r":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v2

    .line 109
    .local v2, "tLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    .line 112
    .local v3, "t":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_0
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v4

    div-int/lit8 v5, p3, 0x2

    if-lt v4, v5, :cond_3

    .line 113
    move-object v4, v0

    .line 114
    .local v4, "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v5, v2

    .line 115
    .local v5, "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v0, v1

    .line 116
    move-object v2, v3

    .line 119
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v6

    throw v6

    .line 123
    :cond_1
    move-object v1, v4

    .line 124
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v6

    .line 125
    .local v6, "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v7

    .line 126
    .local v7, "denominatorLeadingTerm":I
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v8, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v8

    .line 127
    .local v8, "dltInverse":I
    :goto_1
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v10

    if-lt v9, v10, :cond_2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v9

    if-nez v9, :cond_2

    .line 128
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v10

    sub-int/2addr v9, v10

    .line 129
    .local v9, "degreeDiff":I
    iget-object v10, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v11

    invoke-virtual {v10, v11, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v10

    .line 130
    .local v10, "scale":I
    iget-object v11, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v11, v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v6

    .line 131
    invoke-virtual {v0, v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiplyByMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v1

    .line 132
    .end local v9    # "degreeDiff":I
    .end local v10    # "scale":I
    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v6, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    .line 135
    .end local v4    # "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v5    # "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v6    # "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v7    # "denominatorLeadingTerm":I
    .end local v8    # "dltInverse":I
    goto :goto_0

    .line 137
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v5

    move v6, v4

    .line 138
    .local v6, "sigmaTildeAtZero":I
    move v6, v5

    if-nez v5, :cond_4

    .line 139
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 142
    :cond_4
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v5, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v5

    .line 143
    .local v5, "inverse":I
    invoke-virtual {v3, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v7

    .line 144
    .local v7, "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-virtual {v1, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    .line 145
    .local v8, "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    aput-object v7, v9, v4

    const/4 v4, 0x1

    aput-object v8, v9, v4

    return-object v9
.end method


# virtual methods
.method public decode([II[I)I
    .locals 18
    .param p1, "received"    # [I
    .param p2, "numECCodewords"    # I
    .param p3, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 49
    move-object/from16 v3, p3

    new-instance v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v5, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v4, v5, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 50
    .local v4, "poly":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    new-array v5, v2, [I

    .line 51
    .local v5, "S":[I
    const/4 v6, 0x0

    .line 52
    .local v6, "error":Z
    move v7, v6

    move v6, v2

    .line 52
    .local v6, "i":I
    .local v7, "error":Z
    :goto_0
    if-lez v6, :cond_1

    .line 53
    iget-object v8, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v8, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v8

    .line 54
    .local v8, "eval":I
    sub-int v9, v2, v6

    aput v8, v5, v9

    .line 55
    if-eqz v8, :cond_0

    .line 56
    const/4 v7, 0x1

    .line 52
    .end local v8    # "eval":I
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 60
    .end local v6    # "i":I
    :cond_1
    const/4 v6, 0x0

    if-nez v7, :cond_2

    .line 61
    return v6

    .line 64
    :cond_2
    iget-object v8, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    .line 65
    .local v8, "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    const/4 v9, 0x1

    if-eqz v3, :cond_3

    .line 66
    array-length v10, v3

    move-object v11, v8

    const/4 v8, 0x0

    .line 66
    .end local v8    # "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .local v11, "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_1
    if-ge v8, v10, :cond_4

    aget v12, v3, v8

    .line 67
    .local v12, "erasure":I
    iget-object v13, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    array-length v14, v1

    sub-int/2addr v14, v9

    sub-int/2addr v14, v12

    invoke-virtual {v13, v14}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v13

    .line 69
    .local v13, "b":I
    new-instance v14, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v15, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    const/4 v9, 0x2

    new-array v9, v9, [I

    iget-object v3, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v3, v6, v13}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v3

    aput v3, v9, v6

    const/4 v3, 0x1

    aput v3, v9, v3

    invoke-direct {v14, v15, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v3, v14

    .line 70
    .local v3, "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-virtual {v11, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v11

    .line 66
    .end local v3    # "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v12    # "erasure":I
    .end local v13    # "b":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p3

    const/4 v9, 0x1

    goto :goto_1

    .line 74
    .end local v11    # "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v8    # "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_3
    move-object v11, v8

    .line 74
    .end local v8    # "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v11    # "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_4
    new-instance v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v8, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v3, v8, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 77
    .local v3, "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    iget-object v8, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 78
    const/4 v9, 0x1

    invoke-virtual {v8, v2, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    invoke-direct {v0, v8, v3, v2}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    const/4 v10, 0x0

    .line 79
    .local v10, "sigmaOmega":[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v10, v8

    aget-object v8, v8, v6

    .line 80
    .local v8, "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    aget-object v12, v10, v9

    .line 84
    .local v12, "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-direct {v0, v8}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I

    move-result-object v9

    .line 85
    .local v9, "errorLocations":[I
    invoke-direct {v0, v12, v8, v9}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I

    move-result-object v13

    .line 87
    .local v13, "errorMagnitudes":[I
    const/4 v14, 0x0

    .line 87
    .restart local v6    # "i":I
    .local v14, "position":I
    :goto_2
    array-length v15, v9

    if-ge v6, v15, :cond_6

    .line 88
    array-length v15, v1

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    iget-object v2, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v17, v3

    aget v3, v9, v6

    .line 88
    .end local v3    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .local v17, "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-virtual {v2, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->log(I)I

    move-result v2

    sub-int/2addr v15, v2

    move v2, v14

    .line 89
    .end local v14    # "position":I
    .local v2, "position":I
    move v14, v15

    .line 89
    .end local v2    # "position":I
    .restart local v14    # "position":I
    if-gez v15, :cond_5

    .line 90
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v2

    throw v2

    .line 92
    :cond_5
    iget-object v2, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v3, v1, v14

    aget v15, v13, v6

    invoke-virtual {v2, v3, v15}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v2

    aput v2, v1, v14

    .line 87
    .end local v14    # "position":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v17

    move/from16 v2, p2

    goto :goto_2

    .line 94
    .end local v6    # "i":I
    .end local v17    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v3    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_6
    move-object/from16 v17, v3

    .line 94
    .end local v3    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v17    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    array-length v2, v9

    return v2
.end method
