.class public Lco/bxvip/refresh/header/SinaRefreshView;
.super Landroid/widget/FrameLayout;
.source "SinaRefreshView.java"

# interfaces
.implements Lco/bxvip/refresh/header/IHeaderView;


# instance fields
.field private loadingView:Landroid/widget/ImageView;

.field private pullDownStr:Ljava/lang/String;

.field private refreshArrow:Landroid/widget/ImageView;

.field private refreshTextView:Landroid/widget/TextView;

.field private refreshingStr:Ljava/lang/String;

.field private releaseRefreshStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/bxvip/refresh/header/SinaRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/bxvip/refresh/header/SinaRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const-string v0, "\u4e0b\u62c9\u5237\u65b0"

    iput-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->pullDownStr:Ljava/lang/String;

    .line 74
    const-string v0, "\u91ca\u653e\u5237\u65b0"

    iput-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->releaseRefreshStr:Ljava/lang/String;

    .line 75
    const-string v0, "\u6b63\u5728\u5237\u65b0"

    iput-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshingStr:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lco/bxvip/refresh/header/SinaRefreshView;->init()V

    .line 41
    return-void
.end method

.method private init()V
    .locals 3

    .line 44
    new-instance v0, Lco/bxvip/wedgit/DefaultLoadingView;

    invoke-virtual {p0}, Lco/bxvip/refresh/header/SinaRefreshView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/bxvip/wedgit/DefaultLoadingView;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "rootView":Lco/bxvip/wedgit/DefaultLoadingView;
    invoke-virtual {v0}, Lco/bxvip/wedgit/DefaultLoadingView;->getArrowView()Lco/bxvip/wedgit/BxToolIconView;

    move-result-object v1

    iput-object v1, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {v0}, Lco/bxvip/wedgit/DefaultLoadingView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    .line 47
    invoke-virtual {v0}, Lco/bxvip/wedgit/DefaultLoadingView;->getLoadingView()Lco/bxvip/wedgit/BxToolIconView;

    move-result-object v1

    iput-object v1, p0, Lco/bxvip/refresh/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50
    invoke-virtual {p0, v0, v1}, Lco/bxvip/refresh/header/SinaRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 79
    return-object p0
.end method

.method public onFinish(Lco/bxvip/refresh/OnAnimEndListener;)V
    .locals 0
    .param p1, "listener"    # Lco/bxvip/refresh/OnAnimEndListener;

    .line 116
    invoke-interface {p1}, Lco/bxvip/refresh/OnAnimEndListener;->onAnimEnd()V

    .line 117
    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 3
    .param p1, "fraction"    # F
    .param p2, "maxHeadHeight"    # F
    .param p3, "headHeight"    # F

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 92
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lco/bxvip/refresh/header/SinaRefreshView;->pullDownStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    mul-float v1, p1, p3

    div-float/2addr v1, p2

    const/high16 v2, 0x43340000    # 180.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 94
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    instance-of v0, v0, Lco/bxvip/wedgit/BxToolIconView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    check-cast v0, Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v0}, Lco/bxvip/wedgit/BxToolIconView;->stopProgressRun()V

    .line 98
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :cond_1
    return-void
.end method

.method public onPullingDown(FFF)V
    .locals 3
    .param p1, "fraction"    # F
    .param p2, "maxHeadHeight"    # F
    .param p3, "headHeight"    # F

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iget-object v1, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lco/bxvip/refresh/header/SinaRefreshView;->pullDownStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lco/bxvip/refresh/header/SinaRefreshView;->releaseRefreshStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    mul-float v1, p1, p3

    div-float/2addr v1, p2

    const/high16 v2, 0x43340000    # 180.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 87
    return-void
.end method

.method public reset()V
    .locals 2

    .line 121
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lco/bxvip/refresh/header/SinaRefreshView;->pullDownStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public setArrowResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 54
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    return-void
.end method

.method public setPullDownStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "pullDownStr1"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lco/bxvip/refresh/header/SinaRefreshView;->pullDownStr:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setRefreshingStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshingStr1"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshingStr:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setReleaseRefreshStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseRefreshStr1"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lco/bxvip/refresh/header/SinaRefreshView;->releaseRefreshStr:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    return-void
.end method

.method public startAnim(FF)V
    .locals 2
    .param p1, "maxHeadHeight"    # F
    .param p2, "headHeight"    # F

    .line 105
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshingStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    instance-of v0, v0, Lco/bxvip/wedgit/BxToolIconView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    check-cast v0, Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v0}, Lco/bxvip/wedgit/BxToolIconView;->startProgressRun()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 112
    :goto_0
    return-void
.end method
