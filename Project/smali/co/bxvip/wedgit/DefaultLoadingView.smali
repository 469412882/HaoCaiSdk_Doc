.class public Lco/bxvip/wedgit/DefaultLoadingView;
.super Landroid/widget/LinearLayout;
.source "DefaultLoadingView.java"


# instance fields
.field arrowView:Lco/bxvip/wedgit/BxToolIconView;

.field loadingView:Lco/bxvip/wedgit/BxToolIconView;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/bxvip/wedgit/DefaultLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/bxvip/wedgit/DefaultLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lco/bxvip/wedgit/DefaultLoadingView;->loadingView:Lco/bxvip/wedgit/BxToolIconView;

    .line 23
    iput-object v0, p0, Lco/bxvip/wedgit/DefaultLoadingView;->arrowView:Lco/bxvip/wedgit/BxToolIconView;

    .line 24
    iput-object v0, p0, Lco/bxvip/wedgit/DefaultLoadingView;->textView:Landroid/widget/TextView;

    .line 36
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lco/bxvip/wedgit/DefaultLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Landroid/support/v7/widget/builder/RecycleViewDimen;->dip2Px(Landroid/content/res/Resources;I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 38
    invoke-virtual {p0, v0}, Lco/bxvip/wedgit/DefaultLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, "layout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v3

    .line 43
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 44
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lco/bxvip/wedgit/DefaultLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x23

    invoke-static {v5, v6}, Landroid/support/v7/widget/builder/RecycleViewDimen;->dip2Px(Landroid/content/res/Resources;I)I

    move-result v5

    invoke-virtual {p0}, Lco/bxvip/wedgit/DefaultLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/support/v7/widget/builder/RecycleViewDimen;->dip2Px(Landroid/content/res/Resources;I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v3

    .line 47
    const/16 v3, 0x10

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 48
    new-instance v5, Lco/bxvip/wedgit/BxToolIconView;

    invoke-direct {v5, p1}, Lco/bxvip/wedgit/BxToolIconView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lco/bxvip/wedgit/DefaultLoadingView;->loadingView:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v5, p0, Lco/bxvip/wedgit/DefaultLoadingView;->loadingView:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v5}, Lco/bxvip/wedgit/BxToolIconView;->createCircleProgressBar()Lco/bxvip/wedgit/BxToolIconView;

    move-result-object v5

    invoke-virtual {v5}, Lco/bxvip/wedgit/BxToolIconView;->startProgressRun()V

    .line 51
    new-instance v5, Lco/bxvip/wedgit/BxToolIconView;

    invoke-direct {v5, p1}, Lco/bxvip/wedgit/BxToolIconView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lco/bxvip/wedgit/DefaultLoadingView;->arrowView:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v5, p0, Lco/bxvip/wedgit/DefaultLoadingView;->arrowView:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v5}, Lco/bxvip/wedgit/BxToolIconView;->createArrow()Lco/bxvip/wedgit/BxToolIconView;

    move-result-object v5

    sget-object v6, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->UP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-virtual {v5, v6}, Lco/bxvip/wedgit/BxToolIconView;->setArrowDirection(Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;)Lco/bxvip/wedgit/BxToolIconView;

    move-result-object v5

    invoke-virtual {v5}, Lco/bxvip/wedgit/BxToolIconView;->invalidate()V

    .line 53
    iget-object v5, p0, Lco/bxvip/wedgit/DefaultLoadingView;->arrowView:Lco/bxvip/wedgit/BxToolIconView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lco/bxvip/wedgit/BxToolIconView;->setVisibility(I)V

    .line 55
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v5

    .line 56
    const/high16 v2, 0x40c00000    # 6.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 57
    invoke-virtual {p0, v1, v0}, Lco/bxvip/wedgit/DefaultLoadingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v2

    .line 60
    const/high16 v2, 0x40a00000    # 5.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 61
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 62
    const/16 v2, 0x14

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 63
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lco/bxvip/wedgit/DefaultLoadingView;->textView:Landroid/widget/TextView;

    .line 64
    iget-object v2, p0, Lco/bxvip/wedgit/DefaultLoadingView;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    iget-object v2, p0, Lco/bxvip/wedgit/DefaultLoadingView;->textView:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lco/bxvip/wedgit/DefaultLoadingView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lco/bxvip/wedgit/DefaultLoadingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    const-string v0, "window"

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 133
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    return v1
.end method


# virtual methods
.method public getArrowView()Lco/bxvip/wedgit/BxToolIconView;
    .locals 1

    .line 74
    iget-object v0, p0, Lco/bxvip/wedgit/DefaultLoadingView;->arrowView:Lco/bxvip/wedgit/BxToolIconView;

    return-object v0
.end method

.method public getLoadingView()Lco/bxvip/wedgit/BxToolIconView;
    .locals 1

    .line 70
    iget-object v0, p0, Lco/bxvip/wedgit/DefaultLoadingView;->loadingView:Lco/bxvip/wedgit/BxToolIconView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 78
    iget-object v0, p0, Lco/bxvip/wedgit/DefaultLoadingView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 83
    invoke-virtual {p0}, Lco/bxvip/wedgit/DefaultLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Landroid/support/v7/widget/builder/RecycleViewDimen;->dip2Px(Landroid/content/res/Resources;I)I

    move-result v0

    .line 92
    .local v0, "minWH":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lco/bxvip/wedgit/DefaultLoadingView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lco/bxvip/wedgit/DefaultLoadingView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 93
    .local v1, "height":I
    if-gt v1, v0, :cond_0

    .line 94
    move v1, v0

    .line 96
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 98
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 103
    return-void
.end method

.method public setLoadText(Ljava/lang/String;)Lco/bxvip/wedgit/DefaultLoadingView;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lco/bxvip/wedgit/DefaultLoadingView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-object p0
.end method

.method public setLoadingViewColor(I)Lco/bxvip/wedgit/DefaultLoadingView;
    .locals 1
    .param p1, "color"    # I

    .line 111
    iget-object v0, p0, Lco/bxvip/wedgit/DefaultLoadingView;->loadingView:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v0, p1}, Lco/bxvip/wedgit/BxToolIconView;->setDrawColor(I)Lco/bxvip/wedgit/BxToolIconView;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/wedgit/BxToolIconView;->invalidate()V

    .line 112
    return-object p0
.end method
