.class public Lco/bxvip/refresh/header/progresslayout/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/refresh/header/progresslayout/CircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShadowRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "radius"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 38
    .local v0, "density":F
    mul-float v1, p3, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 39
    .local v1, "diameter":I
    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 40
    .local v2, "shadowYOffset":I
    const/4 v3, 0x0

    mul-float v3, v3, v0

    float-to-int v3, v3

    .line 42
    .local v3, "shadowXOffset":I
    const/high16 v4, 0x40600000    # 3.5f

    mul-float v4, v4, v0

    float-to-int v4, v4

    iput v4, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mShadowRadius:I

    .line 45
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->elevationSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 47
    .local v4, "circle":Landroid/graphics/drawable/ShapeDrawable;
    const/high16 v5, 0x40800000    # 4.0f

    mul-float v5, v5, v0

    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 49
    .end local v4    # "circle":Landroid/graphics/drawable/ShapeDrawable;
    :cond_0
    new-instance v4, Lco/bxvip/refresh/header/progresslayout/CircleImageView$OvalShadow;

    iget v5, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mShadowRadius:I

    invoke-direct {v4, p0, v5, v1}, Lco/bxvip/refresh/header/progresslayout/CircleImageView$OvalShadow;-><init>(Lco/bxvip/refresh/header/progresslayout/CircleImageView;II)V

    .line 50
    .local v4, "oval":Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 51
    .local v5, "circle":Landroid/graphics/drawable/ShapeDrawable;
    const/4 v6, 0x1

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-static {p0, v6, v7}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 52
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget v7, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mShadowRadius:I

    int-to-float v7, v7

    int-to-float v8, v3

    int-to-float v9, v2

    const/high16 v10, 0x1e000000

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 54
    iget v6, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mShadowRadius:I

    .line 56
    .local v6, "padding":I
    invoke-virtual {p0, v6, v6, v6, v6}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setPadding(IIII)V

    .line 58
    .end local v4    # "oval":Landroid/graphics/drawable/shapes/OvalShape;
    .end local v6    # "padding":I
    move-object v4, v5

    .line 58
    .end local v5    # "circle":Landroid/graphics/drawable/ShapeDrawable;
    .local v4, "circle":Landroid/graphics/drawable/ShapeDrawable;
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    invoke-virtual {p0, v4}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lco/bxvip/refresh/header/progresslayout/CircleImageView;)I
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/header/progresslayout/CircleImageView;

    .line 21
    iget v0, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mShadowRadius:I

    return v0
.end method

.method static synthetic access$002(Lco/bxvip/refresh/header/progresslayout/CircleImageView;I)I
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/header/progresslayout/CircleImageView;
    .param p1, "x1"    # I

    .line 21
    iput p1, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mShadowRadius:I

    return p1
.end method

.method private elevationSupported()Z
    .locals 2

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 90
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 82
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 69
    invoke-direct {p0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->elevationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setMeasuredDimension(II)V

    .line 73
    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 76
    iput-object p1, p0, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 77
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 106
    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 1
    .param p1, "colorRes"    # I

    .line 101
    invoke-virtual {p0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/header/progresslayout/CircleImageView;->setBackgroundColor(I)V

    .line 102
    return-void
.end method
