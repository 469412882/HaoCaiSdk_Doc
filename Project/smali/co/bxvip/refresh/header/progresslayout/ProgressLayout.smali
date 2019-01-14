.class public Lco/bxvip/refresh/header/progresslayout/ProgressLayout;
.super Landroid/widget/FrameLayout;
.source "ProgressLayout.java"

# interfaces
.implements Lco/bxvip/refresh/header/IHeaderView;


# static fields
.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field public static final LARGE:I = 0x0

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mCircleHeight:I

.field private mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

.field private mCircleWidth:I

.field private mIsBeingDragged:Z

.field private mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mIsBeingDragged:Z

    .line 57
    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 58
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleWidth:I

    .line 59
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleHeight:I

    .line 60
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->createProgressView()V

    .line 61
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 63
    return-void
.end method

.method private createProgressView()V
    .locals 4

    .line 66
    new-instance v0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v2, v3}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    .line 67
    new-instance v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    .line 68
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 69
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setVisibility(I)V

    .line 71
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 72
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-virtual {v1, v0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-virtual {p0, v1}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->addView(Landroid/view/View;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 158
    return-object p0
.end method

.method public onFinish(Lco/bxvip/refresh/OnAnimEndListener;)V
    .locals 2
    .param p1, "animEndListener"    # Lco/bxvip/refresh/OnAnimEndListener;

    .line 219
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lco/bxvip/refresh/header/progresslayout/ProgressLayout$1;

    invoke-direct {v1, p0, p1}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout$1;-><init>(Lco/bxvip/refresh/header/progresslayout/ProgressLayout;Lco/bxvip/refresh/OnAnimEndListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 226
    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 2
    .param p1, "fraction"    # F
    .param p2, "maxHeadHeight"    # F
    .param p3, "headHeight"    # F

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mIsBeingDragged:Z

    .line 197
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 198
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 199
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 202
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 204
    :goto_0
    return-void
.end method

.method public onPullingDown(FFF)V
    .locals 6
    .param p1, "fraction"    # F
    .param p2, "maxHeadHeight"    # F
    .param p3, "headHeight"    # F

    .line 165
    iget-boolean v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mIsBeingDragged:Z

    .line 167
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setAlpha(I)V

    .line 170
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setVisibility(I)V

    .line 174
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_2

    .line 175
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 176
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-static {v1, p1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 179
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-static {v1, p1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 182
    :goto_0
    cmpg-float v1, p1, v0

    if-gtz v1, :cond_3

    .line 183
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    const/high16 v2, 0x42980000    # 76.0f

    const/high16 v3, 0x43330000    # 179.0f

    mul-float v3, v3, p1

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setAlpha(I)V

    .line 186
    :cond_3
    float-to-double v1, p1

    const-wide v3, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    .line 187
    .local v1, "adjustedPercent":F
    const v2, 0x3f4ccccd    # 0.8f

    mul-float v3, v1, v2

    .line 188
    .local v3, "strokeStart":F
    iget-object v4, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v4, v5, v2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 189
    iget-object v2, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setArrowScale(F)V

    .line 190
    const/high16 v0, -0x41800000    # -0.25f

    const v2, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v2, v2, v0

    .line 191
    .local v2, "rotation":F
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 192
    return-void
.end method

.method public reset()V
    .locals 2

    .line 145
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->clearAnimation()V

    .line 146
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->stop()V

    .line 147
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 150
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setAlpha(I)V

    .line 151
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 152
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 153
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 154
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .line 119
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 120
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "colorResIds"    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 103
    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, "res":Landroid/content/res/Resources;
    array-length v1, p1

    new-array v1, v1, [I

    .line 105
    .local v1, "colorRes":[I
    const/4 v2, 0x0

    .line 105
    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 106
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->setColorSchemeColors([I)V

    .line 109
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 91
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 93
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 82
    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 83
    return-void
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "size"    # I

    .line 126
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 130
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_1

    .line 131
    const/high16 v1, 0x42600000    # 56.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleWidth:I

    iput v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleHeight:I

    goto :goto_0

    .line 133
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleWidth:I

    iput v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleHeight:I

    .line 138
    :goto_0
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v1, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->updateSizes(I)V

    .line 140
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    iget-object v2, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v1, v2}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    return-void
.end method

.method public startAnim(FF)V
    .locals 2
    .param p1, "maxHeadHeight"    # F
    .param p2, "headHeight"    # F

    .line 208
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 210
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setAlpha(I)V

    .line 211
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 212
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mCircleView:Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 213
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setArrowScale(F)V

    .line 214
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;->mProgress:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->start()V

    .line 215
    return-void
.end method
