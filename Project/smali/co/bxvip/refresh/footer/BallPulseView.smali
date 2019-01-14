.class public Lco/bxvip/refresh/footer/BallPulseView;
.super Landroid/view/View;
.source "BallPulseView.java"

# interfaces
.implements Lco/bxvip/refresh/footer/IBottomView;


# static fields
.field public static final DEFAULT_SIZE:I = 0x32


# instance fields
.field private animatingColor:I

.field private circleSpacing:F

.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mUpdateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/animation/ValueAnimator;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private normalColor:I

.field private scaleFloats:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/bxvip/refresh/footer/BallPulseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/bxvip/refresh/footer/BallPulseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->scaleFloats:[F

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->mUpdateListeners:Ljava/util/Map;

    .line 63
    const v0, -0x111112

    iput v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->normalColor:I

    .line 64
    const v0, -0x18a6ba

    iput v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->animatingColor:I

    .line 47
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p1, v0}, Lco/bxvip/refresh/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 48
    .local v0, "default_size":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 49
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lco/bxvip/refresh/footer/BallPulseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p1, v2}, Lco/bxvip/refresh/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lco/bxvip/refresh/footer/BallPulseView;->circleSpacing:F

    .line 53
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lco/bxvip/refresh/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v2, p0, Lco/bxvip/refresh/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v2, p0, Lco/bxvip/refresh/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v2, p0, Lco/bxvip/refresh/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lco/bxvip/refresh/footer/BallPulseView;)[F
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/footer/BallPulseView;

    .line 25
    iget-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->scaleFloats:[F

    return-object v0
.end method

.method private createAnimators()V
    .locals 7

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    .line 136
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 137
    .local v1, "delays":[I
    const/4 v2, 0x0

    .line 137
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 138
    move v3, v2

    .line 140
    .local v3, "index":I
    new-array v4, v0, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 142
    .local v4, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0x2ee

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 144
    aget v5, v1, v2

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 146
    iget-object v5, p0, Lco/bxvip/refresh/footer/BallPulseView;->mUpdateListeners:Ljava/util/Map;

    new-instance v6, Lco/bxvip/refresh/footer/BallPulseView$1;

    invoke-direct {v6, p0, v3}, Lco/bxvip/refresh/footer/BallPulseView$1;-><init>(Lco/bxvip/refresh/footer/BallPulseView;I)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v5, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v3    # "index":I
    .end local v4    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "i":I
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x78
        0xf0
        0x168
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isStarted()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 129
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    return v1

    .line 131
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 159
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 92
    iget-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 92
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 76
    invoke-virtual {p0}, Lco/bxvip/refresh/footer/BallPulseView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lco/bxvip/refresh/footer/BallPulseView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lco/bxvip/refresh/footer/BallPulseView;->circleSpacing:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    .line 77
    .local v0, "radius":F
    invoke-virtual {p0}, Lco/bxvip/refresh/footer/BallPulseView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v3, v0, v2

    iget v4, p0, Lco/bxvip/refresh/footer/BallPulseView;->circleSpacing:F

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 78
    .local v1, "x":F
    invoke-virtual {p0}, Lco/bxvip/refresh/footer/BallPulseView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 79
    .local v3, "y":F
    const/4 v4, 0x0

    .line 79
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    mul-float v5, v0, v2

    int-to-float v6, v4

    mul-float v5, v5, v6

    add-float/2addr v5, v1

    iget v6, p0, Lco/bxvip/refresh/footer/BallPulseView;->circleSpacing:F

    int-to-float v7, v4

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    .line 82
    .local v5, "translateX":F
    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    iget-object v6, p0, Lco/bxvip/refresh/footer/BallPulseView;->scaleFloats:[F

    aget v6, v6, v4

    iget-object v7, p0, Lco/bxvip/refresh/footer/BallPulseView;->scaleFloats:[F

    aget v7, v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 84
    iget-object v6, p0, Lco/bxvip/refresh/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v7, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 79
    .end local v5    # "translateX":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lco/bxvip/refresh/footer/BallPulseView;->stopAnim()V

    .line 180
    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 0
    .param p1, "fraction"    # F
    .param p2, "maxHeadHeight"    # F
    .param p3, "headHeight"    # F

    .line 174
    invoke-virtual {p0}, Lco/bxvip/refresh/footer/BallPulseView;->stopAnim()V

    .line 175
    return-void
.end method

.method public onPullingUp(FFF)V
    .locals 0
    .param p1, "fraction"    # F
    .param p2, "maxHeadHeight"    # F
    .param p3, "headHeight"    # F

    .line 164
    invoke-virtual {p0}, Lco/bxvip/refresh/footer/BallPulseView;->stopAnim()V

    .line 165
    return-void
.end method

.method public reset()V
    .locals 0

    .line 184
    invoke-virtual {p0}, Lco/bxvip/refresh/footer/BallPulseView;->stopAnim()V

    .line 185
    return-void
.end method

.method public setAnimatingColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 71
    iput p1, p0, Lco/bxvip/refresh/footer/BallPulseView;->animatingColor:I

    .line 72
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 60
    iget-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    return-void
.end method

.method public setNormalColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 67
    iput p1, p0, Lco/bxvip/refresh/footer/BallPulseView;->normalColor:I

    .line 68
    return-void
.end method

.method public startAnim()V
    .locals 3

    .line 98
    iget-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lco/bxvip/refresh/footer/BallPulseView;->createAnimators()V

    .line 99
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    .line 100
    :cond_1
    invoke-direct {p0}, Lco/bxvip/refresh/footer/BallPulseView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 102
    :cond_2
    const/4 v0, 0x0

    .line 102
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 103
    iget-object v1, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 106
    .local v1, "animator":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lco/bxvip/refresh/footer/BallPulseView;->mUpdateListeners:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 107
    .local v2, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    :cond_3
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 102
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    .end local v2    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    :cond_4
    iget v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->animatingColor:I

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/footer/BallPulseView;->setIndicatorColor(I)V

    .line 113
    return-void
.end method

.method public startAnim(FF)V
    .locals 0
    .param p1, "maxHeadHeight"    # F
    .param p2, "headHeight"    # F

    .line 169
    invoke-virtual {p0}, Lco/bxvip/refresh/footer/BallPulseView;->startAnim()V

    .line 170
    return-void
.end method

.method public stopAnim()V
    .locals 3

    .line 116
    iget-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 118
    .local v1, "animator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 120
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 122
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    iget v0, p0, Lco/bxvip/refresh/footer/BallPulseView;->normalColor:I

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/footer/BallPulseView;->setIndicatorColor(I)V

    .line 125
    return-void
.end method
