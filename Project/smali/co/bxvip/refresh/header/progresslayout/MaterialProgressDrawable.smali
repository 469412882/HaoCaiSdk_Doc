.class public Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;,
        Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 5.0f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final COLOR_START_DELAY_OFFSET:F = 0.75f

.field static final DEFAULT:I = 0x1

.field private static final END_TRIM_START_DELAY_OFFSET:F = 0.5f

.field private static final FULL_ROTATION:F = 1080.0f

.field static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_TRIM_DURATION_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 35
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .line 117
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 59
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, -0x777778

    aput v3, v1, v2

    iput-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->COLORS:[I

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 448
    new-instance v1, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$3;

    invoke-direct {v1, p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$3;-><init>(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;)V

    iput-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 118
    iput-object p2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 121
    new-instance v1, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    iget-object v2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v1, v2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 122
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    iget-object v2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {v1, v2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 124
    invoke-virtual {p0, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->updateSizes(I)V

    .line 125
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setupAnimators()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;FLco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;
    .param p1, "x1"    # F
    .param p2, "x2"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 33
    invoke-direct {p0, p1, p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->applyFinishTranslation(FLco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$100(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)F
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;
    .param p1, "x1"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 33
    invoke-direct {p0, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->getMinProgressArc(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;FLco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;
    .param p1, "x1"    # F
    .param p2, "x2"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 33
    invoke-direct {p0, p1, p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->updateRingColor(FLco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    .line 33
    sget-object v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    .line 33
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRotationCount:F

    return v0
.end method

.method static synthetic access$402(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;
    .param p1, "x1"    # F

    .line 33
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private applyFinishTranslation(FLco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 346
    invoke-direct {p0, p1, p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->updateRingColor(FLco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V

    .line 347
    invoke-virtual {p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 349
    .local v0, "targetRotation":F
    invoke-direct {p0, p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->getMinProgressArc(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)F

    move-result v1

    .line 350
    .local v1, "minProgressArc":F
    invoke-virtual {p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    .line 351
    invoke-virtual {p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v3

    sub-float/2addr v3, v1

    invoke-virtual {p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    .line 353
    .local v2, "startTrim":F
    invoke-virtual {p2, v2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 354
    invoke-virtual {p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v3

    invoke-virtual {p2, v3}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 355
    invoke-virtual {p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    .line 356
    invoke-virtual {p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v4

    sub-float v4, v0, v4

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    .line 357
    .local v3, "rotation":F
    invoke-virtual {p2, v3}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 358
    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 12
    .param p1, "fraction"    # F
    .param p2, "startValue"    # I
    .param p3, "endValue"    # I

    .line 308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 309
    .local v0, "startInt":I
    shr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 310
    .local v1, "startA":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 311
    .local v2, "startR":I
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 312
    .local v3, "startG":I
    and-int/lit16 v4, v0, 0xff

    .line 314
    .local v4, "startB":I
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 315
    .local v5, "endInt":I
    shr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    .line 316
    .local v6, "endA":I
    shr-int/lit8 v7, v5, 0x10

    and-int/lit16 v7, v7, 0xff

    .line 317
    .local v7, "endR":I
    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 318
    .local v8, "endG":I
    and-int/lit16 v9, v5, 0xff

    .line 320
    .local v9, "endB":I
    sub-int v10, v6, v1

    int-to-float v10, v10

    mul-float v10, v10, p1

    float-to-int v10, v10

    add-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x18

    sub-int v11, v7, v2

    int-to-float v11, v11

    mul-float v11, v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v2

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    sub-int v11, v8, v3

    int-to-float v11, v11

    mul-float v11, v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v3

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    sub-int v11, v9, v4

    int-to-float v11, v11

    mul-float v11, v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v4

    or-int/2addr v10, v11

    return v10
.end method

.method private getMinProgressArc(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)F
    .locals 6
    .param p1, "ring"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 302
    nop

    .line 303
    invoke-virtual {p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    .line 302
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getRotation()F
    .locals 1

    .line 254
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 12
    .param p1, "progressCircleWidth"    # D
    .param p3, "progressCircleHeight"    # D
    .param p5, "centerRadius"    # D
    .param p7, "strokeWidth"    # D
    .param p9, "arrowWidth"    # F
    .param p10, "arrowHeight"    # F

    move-object v0, p0

    .line 130
    iget-object v1, v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 131
    .local v1, "ring":Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;
    iget-object v2, v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 132
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 134
    .local v3, "screenDensity":F
    float-to-double v4, v3

    mul-double v4, v4, p1

    iput-wide v4, v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mWidth:D

    .line 135
    float-to-double v4, v3

    mul-double v4, v4, p3

    iput-wide v4, v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mHeight:D

    .line 136
    move-wide/from16 v4, p7

    double-to-float v6, v4

    mul-float v6, v6, v3

    invoke-virtual {v1, v6}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 137
    float-to-double v6, v3

    mul-double v6, v6, p5

    invoke-virtual {v1, v6, v7}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    .line 138
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 139
    mul-float v7, p9, v3

    mul-float v8, p10, v3

    invoke-virtual {v1, v7, v8}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 140
    move-object v9, v2

    move v10, v3

    iget-wide v2, v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mWidth:D

    .line 140
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "screenDensity":F
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    .local v10, "screenDensity":F
    double-to-int v2, v2

    iget-wide v3, v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mHeight:D

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setInsets(II)V

    .line 141
    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .line 361
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 362
    .local v0, "ring":Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;
    new-instance v1, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;

    invoke-direct {v1, p0, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;-><init>(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V

    .line 414
    .local v1, "animation":Landroid/view/animation/Animation;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 415
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 416
    sget-object v2, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 417
    new-instance v2, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;-><init>(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 445
    iput-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 446
    return-void
.end method

.method private updateRingColor(FLco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 332
    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 336
    sub-float v0, p1, v0

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    .line 337
    invoke-virtual {p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingColor()I

    move-result v1

    .line 338
    invoke-virtual {p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getNextColor()I

    move-result v2

    .line 336
    invoke-direct {p0, v0, v1, v2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->evaluateColorChange(FII)I

    move-result v0

    invoke-virtual {p2, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setColor(I)V

    .line 340
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 225
    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 226
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 227
    .local v1, "saveCount":I
    iget v2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 228
    iget-object v2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 229
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 230
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 238
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 215
    iget-wide v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 220
    iget-wide v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 259
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    .line 264
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 265
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 266
    .local v1, "N":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 266
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 267
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    .line 268
    .local v4, "animator":Landroid/view/animation/Animation;
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    const/4 v2, 0x1

    return v2

    .line 266
    .end local v4    # "animator":Landroid/view/animation/Animation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    .end local v3    # "i":I
    :cond_1
    return v2
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 234
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setAlpha(I)V

    .line 235
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 171
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    .line 172
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 198
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 199
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 243
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 244
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    .line 209
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 210
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 211
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .line 191
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 192
    return-void
.end method

.method setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .line 248
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRotation:F

    .line 249
    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->invalidateSelf()V

    .line 250
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .param p1, "startAngle"    # F
    .param p2, "endAngle"    # F

    .line 181
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 182
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 183
    return-void
.end method

.method public showArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 164
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 165
    return-void
.end method

.method public start()V
    .locals 3

    .line 277
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 278
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 280
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mFinishing:Z

    .line 282
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 286
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 287
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 288
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 290
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 294
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setRotation(F)V

    .line 296
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 297
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 298
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mRing:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 299
    return-void
.end method

.method public updateSizes(I)V
    .locals 22
    .param p1, "size"    # I
        .annotation build Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$ProgressDrawableSize;
        .end annotation
    .end param

    .line 151
    if-nez p1, :cond_0

    .line 152
    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v10}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0

    .line 155
    :cond_0
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    const-wide v16, 0x4021800000000000L    # 8.75

    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x40a00000    # 5.0f

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v21}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 158
    :goto_0
    return-void
.end method
