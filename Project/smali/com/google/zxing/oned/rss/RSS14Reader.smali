.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 39
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    .line 40
    new-array v2, v0, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 41
    new-array v2, v1, [I

    fill-array-data v2, :array_3

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    .line 42
    new-array v2, v0, [I

    fill-array-data v2, :array_4

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 43
    new-array v2, v1, [I

    fill-array-data v2, :array_5

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    .line 45
    const/16 v2, 0x9

    new-array v2, v2, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_8

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_9

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_a

    aput-object v3, v2, v1

    new-array v3, v1, [I

    fill-array-data v3, :array_b

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    const/4 v3, 0x7

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    const/16 v1, 0x8

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 63
    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 5
    .param p1, "pair"    # Lcom/google/zxing/oned/rss/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    .line 90
    .local p0, "possiblePairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/Pair;>;"
    if-nez p1, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 94
    .local v0, "found":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 94
    .local v2, "other":Lcom/google/zxing/oned/rss/Pair;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/Pair;

    .line 95
    move-object v2, v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 96
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    .line 97
    const/4 v0, 0x1

    .line 98
    goto :goto_1

    .line 100
    :cond_1
    goto :goto_0

    .line 101
    .end local v2    # "other":Lcom/google/zxing/oned/rss/Pair;
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 102
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    return-void
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 11
    .param p1, "outsideChar"    # Z
    .param p2, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    .line 360
    .local v0, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v1

    .line 362
    .local v1, "evenSum":I
    const/4 v2, 0x0

    .line 363
    .local v2, "incrementOdd":Z
    const/4 v3, 0x0

    .line 364
    .local v3, "decrementOdd":Z
    const/4 v4, 0x0

    .line 365
    .local v4, "incrementEven":Z
    const/4 v5, 0x0

    .line 367
    .local v5, "decrementEven":Z
    const/4 v6, 0x4

    if-eqz p1, :cond_3

    .line 368
    const/16 v7, 0xc

    if-le v0, v7, :cond_0

    .line 369
    const/4 v3, 0x1

    goto :goto_0

    .line 370
    :cond_0
    if-ge v0, v6, :cond_1

    .line 371
    const/4 v2, 0x1

    .line 373
    :cond_1
    :goto_0
    if-le v1, v7, :cond_2

    .line 374
    const/4 v5, 0x1

    goto :goto_2

    .line 375
    :cond_2
    if-ge v1, v6, :cond_7

    .line 376
    const/4 v4, 0x1

    goto :goto_2

    .line 379
    :cond_3
    const/16 v7, 0xb

    if-le v0, v7, :cond_4

    .line 380
    const/4 v3, 0x1

    goto :goto_1

    .line 381
    :cond_4
    const/4 v7, 0x5

    if-ge v0, v7, :cond_5

    .line 382
    const/4 v2, 0x1

    .line 384
    :cond_5
    :goto_1
    const/16 v7, 0xa

    if-le v1, v7, :cond_6

    .line 385
    const/4 v5, 0x1

    goto :goto_2

    .line 386
    :cond_6
    if-ge v1, v6, :cond_7

    .line 387
    const/4 v4, 0x1

    .line 391
    :cond_7
    :goto_2
    add-int v6, v0, v1

    sub-int/2addr v6, p2

    .line 392
    .local v6, "mismatch":I
    and-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, p1, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    .line 393
    .local v7, "oddParityBad":Z
    :goto_3
    and-int/lit8 v10, v1, 0x1

    if-ne v10, v9, :cond_9

    const/4 v8, 0x1

    nop

    .line 406
    .local v8, "evenParityBad":Z
    :cond_9
    if-ne v6, v9, :cond_d

    .line 407
    if-eqz v7, :cond_b

    .line 408
    if-eqz v8, :cond_a

    .line 409
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 411
    :cond_a
    const/4 v3, 0x1

    goto :goto_4

    .line 413
    :cond_b
    if-nez v8, :cond_c

    .line 414
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 416
    :cond_c
    const/4 v5, 0x1

    goto :goto_4

    .line 418
    :cond_d
    const/4 v9, -0x1

    if-ne v6, v9, :cond_11

    .line 419
    if-eqz v7, :cond_f

    .line 420
    if-eqz v8, :cond_e

    .line 421
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 423
    :cond_e
    const/4 v2, 0x1

    goto :goto_4

    .line 425
    :cond_f
    if-nez v8, :cond_10

    .line 426
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 428
    :cond_10
    const/4 v4, 0x1

    goto :goto_4

    .line 430
    :cond_11
    if-nez v6, :cond_1c

    .line 431
    if-eqz v7, :cond_14

    .line 432
    if-nez v8, :cond_12

    .line 433
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 436
    :cond_12
    if-ge v0, v1, :cond_13

    .line 437
    const/4 v2, 0x1

    .line 438
    const/4 v5, 0x1

    goto :goto_4

    .line 440
    :cond_13
    const/4 v3, 0x1

    .line 441
    const/4 v4, 0x1

    goto :goto_4

    .line 444
    :cond_14
    if-eqz v8, :cond_15

    .line 445
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 453
    :cond_15
    :goto_4
    if-eqz v2, :cond_17

    .line 454
    if-eqz v3, :cond_16

    .line 455
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 457
    :cond_16
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 459
    :cond_17
    if-eqz v3, :cond_18

    .line 460
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 462
    :cond_18
    if-eqz v4, :cond_1a

    .line 463
    if-eqz v5, :cond_19

    .line 464
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 466
    :cond_19
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 468
    :cond_1a
    if-eqz v5, :cond_1b

    .line 469
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 472
    :cond_1b
    return-void

    .line 450
    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 5
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .line 148
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4f

    .line 149
    .local v0, "checkValue":I
    nop

    .line 150
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    .line 151
    .local v3, "targetCheckValue":I
    move v3, v1

    const/16 v4, 0x48

    if-le v1, v4, :cond_0

    .line 152
    add-int/lit8 v3, v3, -0x1

    .line 154
    :cond_0
    const/16 v1, 0x8

    if-le v3, v1, :cond_1

    .line 155
    add-int/lit8 v3, v3, -0x1

    .line 157
    :cond_1
    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    return v2
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 12
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .line 113
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x453af5

    mul-long v0, v0, v2

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v2

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 114
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    rsub-int/lit8 v2, v2, 0xd

    .line 117
    .local v2, "i":I
    :goto_0
    const/16 v4, 0x30

    if-lez v2, :cond_0

    .line 118
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 120
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "checkDigit":I
    const/4 v5, 0x0

    move v6, v2

    const/4 v2, 0x0

    .line 123
    .local v2, "i":I
    .local v6, "checkDigit":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    sub-int/2addr v7, v4

    .line 125
    .local v7, "digit":I
    and-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_1

    mul-int/lit8 v8, v7, 0x3

    goto :goto_2

    :cond_1
    move v8, v7

    :goto_2
    add-int/2addr v6, v8

    .line 123
    .end local v7    # "digit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    .end local v2    # "i":I
    :cond_2
    rem-int/lit8 v2, v6, 0xa

    const/16 v3, 0xa

    rsub-int/lit8 v2, v2, 0xa

    .line 128
    move v4, v2

    .line 128
    .end local v6    # "checkDigit":I
    .local v4, "checkDigit":I
    if-ne v2, v3, :cond_3

    .line 129
    const/4 v4, 0x0

    .line 131
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 134
    .local v2, "leftPoints":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 135
    .local v3, "rightPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v6, Lcom/google/zxing/Result;

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/google/zxing/ResultPoint;

    aget-object v10, v2, v5

    aput-object v10, v9, v5

    const/4 v10, 0x1

    aget-object v11, v2, v10

    aput-object v11, v9, v10

    const/4 v11, 0x2

    aget-object v5, v3, v5

    aput-object v5, v9, v11

    aget-object v5, v3, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 135
    return-object v6
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 27
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "outsideChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 190
    .local v2, "counters":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDataCharacterCounters()[I

    move-result-object v3

    .line 191
    move-object v2, v3

    const/4 v4, 0x0

    aput v4, v3, v4

    .line 192
    const/4 v3, 0x1

    aput v4, v2, v3

    .line 193
    const/4 v5, 0x2

    aput v4, v2, v5

    .line 194
    const/4 v6, 0x3

    aput v4, v2, v6

    .line 195
    const/4 v6, 0x4

    aput v4, v2, v6

    .line 196
    const/4 v7, 0x5

    aput v4, v2, v7

    .line 197
    const/4 v7, 0x6

    aput v4, v2, v7

    .line 198
    const/4 v7, 0x7

    aput v4, v2, v7

    .line 200
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v7

    aget v7, v7, v4

    invoke-static {v0, v7, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    goto :goto_1

    .line 203
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v7

    aget v7, v7, v3

    add-int/2addr v7, v3

    invoke-static {v0, v7, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 205
    const/4 v7, 0x0

    .line 205
    .local v7, "i":I
    array-length v8, v2

    sub-int/2addr v8, v3

    .line 205
    .local v8, "j":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 206
    aget v9, v2, v7

    .line 207
    .local v9, "temp":I
    aget v10, v2, v8

    aput v10, v2, v7

    .line 208
    aput v9, v2, v8

    .line 205
    .end local v9    # "temp":I
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 212
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/16 v7, 0x10

    goto :goto_2

    :cond_2
    const/16 v7, 0xf

    .line 213
    .local v7, "numModules":I
    :goto_2
    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    .line 215
    .local v8, "elementWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    .line 216
    .local v9, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v10

    .line 217
    .local v10, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v11

    .line 218
    .local v11, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v12

    .line 220
    .local v12, "evenRoundingErrors":[F
    const/4 v13, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 220
    .local v13, "i":I
    .local v14, "value":F
    .local v15, "count":I
    :goto_3
    array-length v4, v2

    if-ge v13, v4, :cond_6

    .line 221
    aget v4, v2, v13

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 222
    move v14, v4

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v4, v4, v17

    float-to-int v4, v4

    .line 223
    move v15, v4

    if-gtz v4, :cond_3

    .line 224
    const/4 v4, 0x1

    .line 228
    .end local v15    # "count":I
    .local v4, "count":I
    :goto_4
    move v15, v4

    goto :goto_5

    .line 225
    .end local v4    # "count":I
    .restart local v15    # "count":I
    :cond_3
    const/16 v4, 0x8

    if-le v15, v4, :cond_4

    .line 226
    const/16 v4, 0x8

    goto :goto_4

    .line 228
    :cond_4
    :goto_5
    div-int/lit8 v4, v13, 0x2

    .line 229
    .local v4, "offset":I
    and-int/lit8 v17, v13, 0x1

    if-nez v17, :cond_5

    .line 230
    aput v15, v9, v4

    .line 231
    int-to-float v5, v15

    sub-float v5, v14, v5

    aput v5, v11, v4

    goto :goto_6

    .line 233
    :cond_5
    aput v15, v10, v4

    .line 234
    int-to-float v5, v15

    sub-float v5, v14, v5

    aput v5, v12, v4

    .line 220
    .end local v4    # "offset":I
    .end local v14    # "value":F
    .end local v15    # "count":I
    :goto_6
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto :goto_3

    .line 238
    .end local v13    # "i":I
    :cond_6
    move-object/from16 v4, p0

    invoke-direct {v4, v1, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 240
    const/4 v5, 0x0

    .line 241
    .local v5, "oddSum":I
    const/4 v13, 0x0

    .line 242
    .local v13, "oddChecksumPortion":I
    array-length v14, v9

    sub-int/2addr v14, v3

    .line 242
    .local v14, "i":I
    :goto_7
    if-ltz v14, :cond_7

    .line 243
    mul-int/lit8 v15, v13, 0x9

    .line 244
    aget v17, v9, v14

    add-int v13, v15, v17

    .line 245
    aget v15, v9, v14

    add-int/2addr v5, v15

    .line 242
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 247
    .end local v14    # "i":I
    :cond_7
    const/4 v14, 0x0

    .line 248
    .local v14, "evenChecksumPortion":I
    const/4 v15, 0x0

    .line 249
    .local v15, "evenSum":I
    array-length v6, v10

    sub-int/2addr v6, v3

    .line 249
    .local v6, "i":I
    :goto_8
    if-ltz v6, :cond_8

    .line 250
    mul-int/lit8 v17, v14, 0x9

    .line 251
    aget v19, v10, v6

    add-int v14, v17, v19

    .line 252
    aget v17, v10, v6

    add-int v15, v15, v17

    .line 249
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 254
    .end local v6    # "i":I
    :cond_8
    mul-int/lit8 v6, v14, 0x3

    add-int/2addr v6, v13

    .line 256
    .local v6, "checksumPortion":I
    if-eqz v1, :cond_b

    .line 257
    and-int/lit8 v17, v5, 0x1

    if-nez v17, :cond_a

    const/16 v3, 0xc

    if-gt v5, v3, :cond_a

    const/4 v3, 0x4

    if-ge v5, v3, :cond_9

    .line 258
    move-object/from16 v20, v2

    goto :goto_9

    .line 260
    :cond_9
    const/16 v3, 0xc

    sub-int/2addr v3, v5

    const/16 v17, 0x2

    div-int/lit8 v3, v3, 0x2

    .line 261
    .local v3, "group":I
    sget-object v17, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v0, v17, v3

    .line 262
    .local v0, "oddWidest":I
    rsub-int/lit8 v1, v0, 0x9

    .line 263
    .local v1, "evenWidest":I
    move-object/from16 v20, v2

    const/4 v2, 0x0

    invoke-static {v9, v0, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    .line 264
    .local v2, "vOdd":I
    .local v20, "counters":[I
    move/from16 v21, v0

    const/4 v0, 0x1

    invoke-static {v10, v1, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v0

    .line 265
    .local v0, "vEven":I
    .local v21, "oddWidest":I
    sget-object v16, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v16, v16, v3

    .line 266
    .local v16, "tEven":I
    sget-object v17, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v17, v17, v3

    .line 267
    .local v17, "gSum":I
    move/from16 v22, v1

    new-instance v1, Lcom/google/zxing/oned/rss/DataCharacter;

    .line 267
    .end local v1    # "evenWidest":I
    .local v22, "evenWidest":I
    mul-int v18, v2, v16

    add-int v18, v18, v0

    move/from16 v23, v0

    add-int v0, v18, v17

    .line 267
    .end local v0    # "vEven":I
    .local v23, "vEven":I
    invoke-direct {v1, v0, v6}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v1

    .line 258
    .end local v3    # "group":I
    .end local v16    # "tEven":I
    .end local v17    # "gSum":I
    .end local v20    # "counters":[I
    .end local v21    # "oddWidest":I
    .end local v22    # "evenWidest":I
    .end local v23    # "vEven":I
    .local v2, "counters":[I
    :cond_a
    move-object/from16 v20, v2

    .line 258
    .end local v2    # "counters":[I
    .restart local v20    # "counters":[I
    :goto_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 269
    .end local v20    # "counters":[I
    .restart local v2    # "counters":[I
    :cond_b
    move-object/from16 v20, v2

    .line 269
    .end local v2    # "counters":[I
    .restart local v20    # "counters":[I
    and-int/lit8 v0, v15, 0x1

    if-nez v0, :cond_d

    const/16 v0, 0xa

    if-gt v15, v0, :cond_d

    const/4 v1, 0x4

    if-ge v15, v1, :cond_c

    goto :goto_a

    .line 272
    :cond_c
    sub-int/2addr v0, v15

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 273
    .local v0, "group":I
    sget-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v1, v1, v0

    .line 274
    .local v1, "oddWidest":I
    rsub-int/lit8 v2, v1, 0x9

    .line 275
    .local v2, "evenWidest":I
    const/4 v3, 0x1

    invoke-static {v9, v1, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v3

    .line 276
    .local v3, "vOdd":I
    move/from16 v24, v1

    const/4 v1, 0x0

    invoke-static {v10, v2, v1}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 277
    .local v1, "vEven":I
    .local v24, "oddWidest":I
    sget-object v16, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v16, v16, v0

    .line 278
    .local v16, "tOdd":I
    sget-object v17, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v17, v17, v0

    .line 279
    .restart local v17    # "gSum":I
    move/from16 v25, v0

    new-instance v0, Lcom/google/zxing/oned/rss/DataCharacter;

    .line 279
    .end local v0    # "group":I
    .local v25, "group":I
    mul-int v18, v1, v16

    add-int v18, v18, v3

    move/from16 v26, v1

    add-int v1, v18, v17

    .line 279
    .end local v1    # "vEven":I
    .local v26, "vEven":I
    invoke-direct {v0, v1, v6}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v0

    .line 270
    .end local v2    # "evenWidest":I
    .end local v3    # "vOdd":I
    .end local v16    # "tOdd":I
    .end local v17    # "gSum":I
    .end local v24    # "oddWidest":I
    .end local v25    # "group":I
    .end local v26    # "vEven":I
    :cond_d
    :goto_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .locals 10
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "right"    # Z
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    .line 162
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I

    move-result-object v2
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .local v2, "startEnd":[I
    :try_start_1
    invoke-direct {p0, p1, p3, p2, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    .line 165
    .local v3, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez p4, :cond_0

    .line 166
    move-object v4, v1

    goto :goto_0

    .line 165
    :cond_0
    sget-object v4, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 166
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/ResultPointCallback;

    :goto_0
    move-object v5, v1

    .line 168
    .local v5, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    move-object v5, v4

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 169
    aget v4, v2, v0

    aget v7, v2, v6

    add-int/2addr v4, v7

    int-to-float v4, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    .line 170
    .local v4, "center":F
    if-eqz p2, :cond_1

    .line 172
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    sub-int/2addr v7, v6

    int-to-float v7, v7

    sub-float v4, v7, v4

    .line 174
    :cond_1
    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p3

    invoke-direct {v7, v4, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v5, v7}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 177
    .end local v4    # "center":F
    :cond_2
    invoke-direct {p0, p1, v3, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    .line 178
    .local v4, "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-direct {p0, p1, v3, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    .line 179
    .local v0, "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    new-instance v6, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v7

    mul-int/lit16 v7, v7, 0x63d

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    add-int/2addr v7, v8

    .line 180
    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    invoke-direct {v6, v7, v8, v3}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    return-object v6

    .line 182
    .end local v0    # "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v3    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v4    # "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v5    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 182
    .end local v2    # "startEnd":[I
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 182
    .local v2, "ignored":Lcom/google/zxing/NotFoundException;
    :goto_1
    move-object v0, v2

    .line 183
    .end local v2    # "ignored":Lcom/google/zxing/NotFoundException;
    .local v0, "ignored":Lcom/google/zxing/NotFoundException;
    return-object v1
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I
    .locals 12
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowOffset"    # I
    .param p3, "rightFinderPattern"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 287
    .local v0, "counters":[I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v1

    .line 288
    move-object v0, v1

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 289
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 290
    const/4 v3, 0x2

    aput v2, v0, v3

    .line 291
    const/4 v4, 0x3

    aput v2, v0, v4

    .line 293
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 294
    .local v5, "width":I
    move v6, p2

    const/4 p2, 0x0

    .line 295
    .local v6, "rowOffset":I
    .local p2, "isWhite":Z
    :goto_0
    if-ge v6, v5, :cond_0

    .line 296
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v1

    move p2, v7

    .line 297
    if-eq p3, p2, :cond_0

    .line 301
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 304
    :cond_0
    const/4 v7, 0x0

    .line 305
    .local v7, "counterPosition":I
    move v8, v6

    .line 306
    .local v8, "patternStart":I
    move v9, v8

    move v8, v7

    move v7, p2

    move p2, v6

    .line 306
    .local v7, "isWhite":Z
    .local v8, "counterPosition":I
    .local v9, "patternStart":I
    .local p2, "x":I
    :goto_1
    if-ge p2, v5, :cond_5

    .line 307
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v7

    if-eqz v10, :cond_1

    .line 308
    aget v10, v0, v8

    add-int/2addr v10, v1

    aput v10, v0, v8

    goto :goto_4

    .line 310
    :cond_1
    if-ne v8, v4, :cond_3

    .line 311
    invoke-static {v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 312
    new-array v3, v3, [I

    aput v9, v3, v2

    aput p2, v3, v1

    return-object v3

    .line 314
    :cond_2
    aget v10, v0, v2

    aget v11, v0, v1

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 315
    aget v10, v0, v3

    aput v10, v0, v2

    .line 316
    aget v10, v0, v4

    aput v10, v0, v1

    .line 317
    aput v2, v0, v3

    .line 318
    aput v2, v0, v4

    .line 319
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 321
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 323
    :goto_2
    aput v1, v0, v8

    .line 324
    if-nez v7, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    move v7, v10

    .line 306
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 327
    .end local p2    # "x":I
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p2

    throw p2
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 17
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "right"    # Z
    .param p4, "startEnd"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 334
    const/4 v1, 0x0

    aget v2, p4, v1

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    .line 335
    .local v2, "firstIsBlack":Z
    aget v3, p4, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 337
    .local v3, "firstElementStart":I
    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_0

    .line 338
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 340
    :cond_0
    add-int/2addr v3, v4

    .line 341
    aget v5, p4, v1

    sub-int/2addr v5, v3

    .line 343
    .local v5, "firstCounter":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v6

    const/4 v7, 0x0

    .line 344
    .local v7, "counters":[I
    move-object v7, v6

    array-length v8, v7

    sub-int/2addr v8, v4

    invoke-static {v6, v1, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    aput v5, v7, v1

    .line 346
    sget-object v6, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v7, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v6

    .line 347
    .local v6, "value":I
    move v8, v3

    .line 348
    .local v8, "start":I
    aget v9, p4, v4

    .line 349
    .local v9, "end":I
    if-eqz p3, :cond_1

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    sub-int/2addr v10, v4

    sub-int/2addr v10, v8

    .line 352
    .end local v8    # "start":I
    .local v10, "start":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    sub-int/2addr v8, v4

    sub-int/2addr v8, v9

    .line 354
    .end local v9    # "end":I
    .local v8, "end":I
    move v15, v8

    move v14, v10

    goto :goto_1

    .line 354
    .end local v10    # "start":I
    .local v8, "start":I
    .restart local v9    # "end":I
    :cond_1
    move v14, v8

    move v15, v9

    .line 354
    .end local v8    # "start":I
    .end local v9    # "end":I
    .local v14, "start":I
    .local v15, "end":I
    :goto_1
    new-instance v16, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v8, 0x2

    new-array v10, v8, [I

    aput v3, v10, v1

    aget v1, p4, v4

    aput v1, v10, v4

    move-object/from16 v8, v16

    move v9, v6

    move v11, v14

    move v12, v15

    move/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v16
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 8
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 69
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v0

    .line 70
    .local v0, "leftPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 71
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 72
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v2

    .line 73
    .local v2, "rightPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {v3, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 74
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 75
    iget-object v3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 75
    .local v4, "left":Lcom/google/zxing/oned/rss/Pair;
    .local v5, "right":Lcom/google/zxing/oned/rss/Pair;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/Pair;

    .line 76
    move-object v4, v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v6

    if-le v6, v1, :cond_1

    .line 77
    iget-object v6, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/Pair;

    .line 78
    move-object v5, v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v7

    if-le v7, v1, :cond_0

    .line 79
    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 80
    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v1

    return-object v1

    .line 83
    :cond_0
    goto :goto_1

    .line 85
    :cond_1
    goto :goto_0

    .line 86
    .end local v4    # "left":Lcom/google/zxing/oned/rss/Pair;
    .end local v5    # "right":Lcom/google/zxing/oned/rss/Pair;
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    return-void
.end method
