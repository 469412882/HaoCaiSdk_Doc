.class Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mCurrentColor:I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 467
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 468
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 473
    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 474
    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRotation:F

    .line 475
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 476
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 493
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 498
    iput-object p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 500
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 501
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 502
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 504
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 505
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 506
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 549
    iget-boolean v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 552
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 559
    :goto_0
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v0, v0, v1

    .line 560
    .local v0, "inset":F
    iget-wide v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v1, v5

    double-to-float v1, v1

    .line 561
    .local v1, "x":F
    iget-wide v5, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v5, v5, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v5, v2

    double-to-float v2, v5

    .line 567
    .local v2, "y":F
    iget-object v3, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 568
    iget-object v3, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v5, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v5, v5

    iget v6, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v5, v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 569
    iget-object v3, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v4, v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v5, v5

    iget v6, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 571
    iget-object v3, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sub-float v4, v1, v0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 572
    iget-object v3, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 574
    iget-object v3, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v4, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 575
    add-float v3, p2, p3

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 576
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 575
    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 577
    iget-object v3, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v4, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 579
    .end local v0    # "inset":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    return-void
.end method

.method private getNextColorIndex()I
    .locals 2

    .line 620
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private invalidateSelf()V
    .locals 2

    .line 787
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 788
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 527
    iget-object v6, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 528
    .local v6, "arcBounds":Landroid/graphics/RectF;
    invoke-virtual {v6, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 529
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStrokeInset:F

    iget v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v6, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 531
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v7, v0, v1

    .line 532
    .local v7, "startAngle":F
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mEndTrim:F

    iget v2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v2

    mul-float v8, v0, v1

    .line 533
    .local v8, "endAngle":F
    sub-float v9, v8, v7

    .line 535
    .local v9, "sweepAngle":F
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    iget-object v5, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 538
    invoke-direct {p0, p1, v7, v9, p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 540
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mAlpha:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 543
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 546
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 647
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public getCenterRadius()D
    .locals 2

    .line 734
    iget-wide v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-wide v0
.end method

.method public getEndTrim()F
    .locals 1

    .line 695
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mEndTrim:F

    return v0
.end method

.method public getInsets()F
    .locals 1

    .line 722
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return v0
.end method

.method public getNextColor()I
    .locals 2

    .line 616
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mColors:[I

    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 706
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRotation:F

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    .line 672
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartTrim:F

    return v0
.end method

.method public getStartingColor()I
    .locals 2

    .line 684
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getStartingEndTrim()F
    .locals 1

    .line 680
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    return v0
.end method

.method public getStartingRotation()F
    .locals 1

    .line 761
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return v0
.end method

.method public getStartingStartTrim()F
    .locals 1

    .line 676
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 661
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    return v0
.end method

.method public goToNextColor()V
    .locals 1

    .line 628
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 629
    return-void
.end method

.method public resetOriginals()V
    .locals 1

    .line 778
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 779
    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 780
    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 781
    invoke-virtual {p0, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 782
    invoke-virtual {p0, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 783
    invoke-virtual {p0, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 784
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 640
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mAlpha:I

    .line 641
    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 519
    float-to-int v0, p1

    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowWidth:I

    .line 520
    float-to-int v0, p2

    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowHeight:I

    .line 521
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 751
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 752
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 753
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 755
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 509
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    .line 510
    return-void
.end method

.method public setCenterRadius(D)V
    .locals 0
    .param p1, "centerRadius"    # D

    .line 730
    iput-wide p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    .line 731
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 600
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mCurrentColor:I

    .line 601
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .line 632
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 633
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 634
    return-void
.end method

.method public setColorIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 608
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 609
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mCurrentColor:I

    .line 610
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 587
    iput-object p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mColors:[I

    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 590
    return-void
.end method

.method public setEndTrim(F)V
    .locals 0
    .param p1, "endTrim"    # F

    .line 689
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 690
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 691
    return-void
.end method

.method public setInsets(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 710
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 712
    .local v0, "minEdge":F
    iget-wide v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v5, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    div-float v1, v0, v1

    float-to-double v1, v1

    iget-wide v3, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    goto :goto_1

    .line 713
    :cond_1
    :goto_0
    iget v2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 715
    .local v1, "insets":F
    :goto_1
    nop

    .line 717
    iput v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 718
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .line 700
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRotation:F

    .line 701
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 702
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 741
    iget-boolean v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eq v0, p1, :cond_0

    .line 742
    iput-boolean p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 743
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 745
    :cond_0
    return-void
.end method

.method public setStartTrim(F)V
    .locals 0
    .param p1, "startTrim"    # F

    .line 666
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 667
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 668
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .line 654
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 655
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 656
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 657
    return-void
.end method

.method public storeOriginals()V
    .locals 1

    .line 769
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 770
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 771
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 772
    return-void
.end method
