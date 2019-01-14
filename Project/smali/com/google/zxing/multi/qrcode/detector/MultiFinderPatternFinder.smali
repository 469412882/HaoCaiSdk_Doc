.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 93
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 98
    return-void
.end method

.method private selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    .local v0, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v1

    .line 108
    move-object v0, v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 110
    .local v3, "size":I
    move v3, v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 112
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 118
    :cond_0
    const/4 v1, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 119
    new-array v6, v5, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    new-array v4, v4, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v7, v4, v2

    .line 122
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v7, v4, v5

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v5, v4, v1

    aput-object v4, v6, v2

    .line 119
    return-object v6

    .line 129
    :cond_1
    new-instance v6, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    const/4 v8, 0x0

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    const/4 v7, 0x0

    const/4 v13, 0x0

    .line 148
    .local v7, "i1":I
    .local v8, "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .local v9, "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .local v10, "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .local v11, "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .local v12, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .local v13, "estimatedModuleCount":F
    :goto_0
    add-int/lit8 v14, v3, -0x2

    if-ge v7, v14, :cond_b

    .line 149
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 150
    move-object v8, v14

    if-eqz v14, :cond_a

    .line 154
    add-int/lit8 v14, v7, 0x1

    .line 154
    .local v14, "i2":I
    :goto_1
    add-int/lit8 v15, v3, -0x1

    if-ge v14, v15, :cond_a

    .line 155
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 156
    move-object v9, v15

    if-eqz v15, :cond_9

    .line 161
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v15

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v16

    sub-float v15, v15, v16

    .line 162
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v1

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v15, v1

    .line 163
    .local v15, "vModSize12":F
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v1

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 164
    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v5

    const v16, 0x3d4ccccd    # 0.05f

    if-lez v1, :cond_3

    cmpl-float v1, v15, v16

    if-gez v1, :cond_2

    goto :goto_2

    .line 148
    .end local v14    # "i2":I
    .end local v15    # "vModSize12":F
    :cond_2
    move-object/from16 v23, v0

    move/from16 v24, v3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v20, 0x0

    goto/16 :goto_7

    .line 170
    .restart local v14    # "i2":I
    .restart local v15    # "vModSize12":F
    :cond_3
    :goto_2
    add-int/lit8 v1, v14, 0x1

    .line 170
    .local v1, "i3":I
    :goto_3
    if-ge v1, v3, :cond_9

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 172
    move-object/from16 v10, v19

    if-eqz v19, :cond_7

    .line 177
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v19

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v20

    sub-float v19, v19, v20

    .line 178
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v2

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v19, v19, v2

    .line 179
    .local v19, "vModSize23":F
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v2

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 180
    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    cmpl-float v2, v19, v16

    if-gez v2, :cond_4

    goto :goto_4

    .line 154
    .end local v1    # "i3":I
    .end local v15    # "vModSize12":F
    .end local v19    # "vModSize23":F
    :cond_4
    move-object/from16 v23, v0

    move/from16 v24, v3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v20, 0x0

    goto/16 :goto_6

    .line 186
    .restart local v1    # "i3":I
    .restart local v15    # "vModSize12":F
    .restart local v19    # "vModSize23":F
    :cond_5
    :goto_4
    const/4 v2, 0x3

    new-array v4, v2, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/16 v20, 0x0

    aput-object v8, v4, v20

    const/16 v18, 0x1

    aput-object v9, v4, v18

    const/16 v17, 0x2

    aput-object v10, v4, v17

    .line 187
    move-object v11, v4

    invoke-static {v4}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 190
    new-instance v4, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v4, v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 191
    move-object v12, v4

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 192
    .local v2, "dA":F
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    .line 193
    .local v4, "dC":F
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    move-object/from16 v23, v0

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v0

    .line 193
    .end local v0    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .local v23, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    invoke-static {v5, v0}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    .line 196
    .local v0, "dB":F
    add-float v5, v2, v0

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v21, v21, v22

    div-float v5, v5, v21

    .line 197
    move v13, v5

    const/high16 v21, 0x43340000    # 180.0f

    cmpl-float v5, v5, v21

    if-gtz v5, :cond_6

    const/high16 v5, 0x41100000    # 9.0f

    cmpg-float v5, v13, v5

    if-ltz v5, :cond_6

    .line 203
    sub-float v5, v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v21

    div-float v5, v5, v21

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 204
    const v21, 0x3dcccccd    # 0.1f

    cmpl-float v5, v5, v21

    if-gez v5, :cond_6

    .line 209
    mul-float v5, v2, v2

    mul-float v22, v0, v0

    add-float v5, v5, v22

    move/from16 v25, v2

    move/from16 v24, v3

    float-to-double v2, v5

    .line 209
    .end local v2    # "dA":F
    .end local v3    # "size":I
    .local v24, "size":I
    .local v25, "dA":F
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 211
    .local v2, "dCpy":F
    sub-float v3, v4, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 213
    cmpl-float v3, v3, v21

    if-gez v3, :cond_8

    .line 218
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v0    # "dB":F
    .end local v2    # "dCpy":F
    .end local v4    # "dC":F
    .end local v10    # "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v11    # "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v12    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .end local v13    # "estimatedModuleCount":F
    .end local v19    # "vModSize23":F
    .end local v25    # "dA":F
    goto :goto_5

    .line 170
    .end local v24    # "size":I
    .restart local v3    # "size":I
    :cond_6
    move/from16 v24, v3

    .line 170
    .end local v3    # "size":I
    .restart local v24    # "size":I
    goto :goto_5

    .line 170
    .end local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v24    # "size":I
    .local v0, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v3    # "size":I
    .restart local v11    # "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v12    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .restart local v13    # "estimatedModuleCount":F
    :cond_7
    move-object/from16 v23, v0

    move/from16 v24, v3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v20, 0x0

    .line 170
    .end local v0    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v3    # "size":I
    .restart local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v24    # "size":I
    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v23

    move/from16 v3, v24

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/high16 v5, 0x3f000000    # 0.5f

    goto/16 :goto_3

    .line 154
    .end local v1    # "i3":I
    .end local v15    # "vModSize12":F
    .end local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v24    # "size":I
    .restart local v0    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v3    # "size":I
    .restart local v10    # "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_9
    move-object/from16 v23, v0

    move/from16 v24, v3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v20, 0x0

    .line 154
    .end local v0    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v3    # "size":I
    .restart local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v24    # "size":I
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v23

    move/from16 v3, v24

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 148
    .end local v14    # "i2":I
    .end local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v24    # "size":I
    .restart local v0    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v3    # "size":I
    :cond_a
    move-object/from16 v23, v0

    move/from16 v24, v3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v20, 0x0

    .line 148
    .end local v0    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v3    # "size":I
    .restart local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v24    # "size":I
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v23

    move/from16 v3, v24

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 223
    .end local v7    # "i1":I
    .end local v8    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v9    # "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v10    # "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v11    # "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v12    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .end local v13    # "estimatedModuleCount":F
    .end local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v24    # "size":I
    .restart local v0    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v3    # "size":I
    :cond_b
    move-object/from16 v23, v0

    move/from16 v24, v3

    .line 223
    .end local v0    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v3    # "size":I
    .restart local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v24    # "size":I
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 224
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    return-object v0

    .line 228
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 232
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    .line 232
    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v4, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 233
    .local v4, "tryHarder":Z
    :goto_0
    if-eqz v1, :cond_1

    sget-object v5, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 234
    .local v5, "pureBarcode":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    .line 235
    .local v8, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v8, v6

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 236
    .local v6, "maxI":I
    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v9

    .line 244
    .local v9, "maxJ":I
    int-to-float v10, v6

    const/high16 v11, 0x43640000    # 228.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    mul-float v10, v10, v11

    float-to-int v10, v10

    move v11, v3

    .line 245
    .local v11, "iSkip":I
    move v11, v10

    const/4 v12, 0x3

    if-lt v10, v12, :cond_2

    if-eqz v4, :cond_3

    .line 246
    :cond_2
    const/4 v11, 0x3

    .line 249
    :cond_3
    const/4 v10, 0x5

    new-array v10, v10, [I

    .line 250
    .local v10, "stateCount":[I
    add-int/lit8 v13, v11, -0x1

    .line 250
    .local v13, "i":I
    :goto_2
    if-ge v13, v6, :cond_b

    .line 252
    aput v3, v10, v3

    .line 253
    aput v3, v10, v2

    .line 254
    const/4 v14, 0x2

    aput v3, v10, v14

    .line 255
    aput v3, v10, v12

    .line 256
    const/4 v15, 0x4

    aput v3, v10, v15

    .line 257
    const/16 v16, 0x0

    .line 258
    .local v16, "currentState":I
    move/from16 v7, v16

    const/16 v16, 0x0

    .line 258
    .local v7, "currentState":I
    .local v16, "j":I
    :goto_3
    move/from16 v18, v16

    .line 258
    .end local v16    # "j":I
    .local v18, "j":I
    move/from16 v12, v18

    if-ge v12, v9, :cond_9

    .line 259
    .end local v18    # "j":I
    .local v12, "j":I
    invoke-virtual {v8, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 261
    and-int/lit8 v14, v7, 0x1

    if-ne v14, v2, :cond_4

    .line 262
    add-int/lit8 v7, v7, 0x1

    .line 264
    :cond_4
    aget v14, v10, v7

    add-int/2addr v14, v2

    aput v14, v10, v7

    .line 258
    const/4 v14, 0x2

    const/16 v16, 0x3

    goto :goto_4

    .line 266
    :cond_5
    and-int/lit8 v14, v7, 0x1

    if-nez v14, :cond_8

    .line 267
    if-ne v7, v15, :cond_7

    .line 268
    invoke-static {v10}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v0, v10, v13, v12, v5}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 270
    const/4 v7, 0x0

    .line 271
    aput v3, v10, v3

    .line 272
    aput v3, v10, v2

    .line 273
    const/4 v14, 0x2

    aput v3, v10, v14

    .line 274
    const/16 v16, 0x3

    aput v3, v10, v16

    .line 275
    aput v3, v10, v15

    goto :goto_4

    .line 277
    :cond_6
    const/4 v14, 0x2

    const/16 v16, 0x3

    aget v18, v10, v14

    aput v18, v10, v3

    .line 278
    aget v18, v10, v16

    aput v18, v10, v2

    .line 279
    aget v18, v10, v15

    aput v18, v10, v14

    .line 280
    aput v2, v10, v16

    .line 281
    aput v3, v10, v15

    .line 282
    const/4 v7, 0x3

    goto :goto_4

    .line 285
    :cond_7
    const/4 v14, 0x2

    const/16 v16, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v18, v10, v7

    add-int/lit8 v18, v18, 0x1

    aput v18, v10, v7

    goto :goto_4

    .line 288
    :cond_8
    const/4 v14, 0x2

    const/16 v16, 0x3

    aget v18, v10, v7

    add-int/lit8 v18, v18, 0x1

    aput v18, v10, v7

    .line 258
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v12

    const/4 v12, 0x3

    goto :goto_3

    .line 293
    .end local v12    # "j":I
    :cond_9
    const/16 v16, 0x3

    invoke-static {v10}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 294
    invoke-virtual {v0, v10, v13, v9, v5}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    .line 250
    .end local v7    # "currentState":I
    :cond_a
    add-int/2addr v13, v11

    const/4 v7, 0x0

    const/4 v12, 0x3

    goto/16 :goto_2

    .line 297
    .end local v13    # "i":I
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    .line 298
    .local v2, "patternInfo":[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPatternInfo;>;"
    array-length v12, v2

    const/16 v17, 0x0

    .line 299
    .local v17, "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    :goto_5
    if-ge v3, v12, :cond_c

    aget-object v13, v2, v3

    move-object/from16 v14, v17

    .line 300
    .end local v17    # "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .local v14, "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v14, v13

    invoke-static {v13}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 301
    new-instance v13, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v13, v14}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v14    # "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v17, v14

    goto :goto_5

    .line 304
    :cond_c
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 305
    sget-object v3, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object v3

    .line 307
    :cond_d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-interface {v7, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object v3
.end method
