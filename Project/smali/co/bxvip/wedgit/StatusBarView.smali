.class public Lco/bxvip/wedgit/StatusBarView;
.super Landroid/widget/FrameLayout;
.source "StatusBarView.java"


# instance fields
.field private statusBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/bxvip/wedgit/StatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/bxvip/wedgit/StatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lco/bxvip/wedgit/StatusBarView;->initialize()V

    .line 32
    const v0, -0x333334

    invoke-virtual {p0, v0}, Lco/bxvip/wedgit/StatusBarView;->setBackgroundColor(I)V

    .line 33
    return-void
.end method

.method private initialize()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lco/bxvip/wedgit/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/bxvip/tools/DisplayUtils;->getStatusBarHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lco/bxvip/wedgit/StatusBarView;->statusBarHeight:I

    .line 37
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 41
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 42
    invoke-static {}, Lco/bxvip/tools/DisplayUtils;->getScreenWidth()I

    move-result v0

    iget v1, p0, Lco/bxvip/wedgit/StatusBarView;->statusBarHeight:I

    invoke-virtual {p0, v0, v1}, Lco/bxvip/wedgit/StatusBarView;->setMeasuredDimension(II)V

    .line 43
    return-void
.end method
