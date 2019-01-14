.class public Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;
.super Landroid/widget/RelativeLayout;
.source "LoadingViewLayout.java"


# instance fields
.field public loadingBar:Lco/bxvip/wedgit/BxToolIconView;

.field private rootLinearLayout:Landroid/widget/LinearLayout;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const v0, 0x7ffffffb

    invoke-virtual {p0, v0}, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->setId(I)V

    .line 46
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 48
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->rootLinearLayout:Landroid/widget/LinearLayout;

    .line 49
    iget-object v3, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->rootLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v3, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->rootLinearLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    iget-object v3, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->rootLinearLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lco/bxvip/tools/SelectorFactory;->newShapeSelector()Lco/bxvip/tools/SelectorFactory$ShapeSelector;

    move-result-object v4

    .line 52
    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->setDefaultBgColor(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;

    move-result-object v4

    .line 53
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->setCornerRadius(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;

    move-result-object v4

    .line 54
    invoke-virtual {v4}, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->create()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->textView:Landroid/widget/TextView;

    .line 56
    iget-object v3, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->textView:Landroid/widget/TextView;

    const-string v4, "\u52a0\u8f7d\u4e2d"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v3, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->textView:Landroid/widget/TextView;

    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x3c

    invoke-static {p1, v6}, Lco/bxvip/tools/DisplayUtils;->dip2px(Landroid/content/Context;I)I

    move-result v7

    invoke-static {p1, v6}, Lco/bxvip/tools/DisplayUtils;->dip2px(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v3, "loadingBarParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 60
    const/16 v6, 0xf

    invoke-static {p1, v6}, Lco/bxvip/tools/DisplayUtils;->dip2px(Landroid/content/Context;I)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 61
    new-instance v7, Lco/bxvip/wedgit/BxToolIconView;

    invoke-direct {v7, p1}, Lco/bxvip/wedgit/BxToolIconView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->loadingBar:Lco/bxvip/wedgit/BxToolIconView;

    .line 62
    iget-object v7, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->loadingBar:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v7, v5, v5, v5, v5}, Lco/bxvip/wedgit/BxToolIconView;->setPadding(IIII)V

    .line 63
    iget-object v5, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->loadingBar:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v5}, Lco/bxvip/wedgit/BxToolIconView;->createFlowerProgressBar()Lco/bxvip/wedgit/BxToolIconView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lco/bxvip/wedgit/BxToolIconView;->setDrawColor(I)Lco/bxvip/wedgit/BxToolIconView;

    move-result-object v4

    invoke-virtual {v4}, Lco/bxvip/wedgit/BxToolIconView;->draw()V

    .line 64
    iget-object v4, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->rootLinearLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->loadingBar:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v1, v4

    .line 66
    .local v1, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67
    invoke-static {p1, v6}, Lco/bxvip/tools/DisplayUtils;->dip2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 68
    iget-object v2, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->rootLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x78

    invoke-static {p1, v4}, Lco/bxvip/tools/DisplayUtils;->dip2px(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p1, v4}, Lco/bxvip/tools/DisplayUtils;->dip2px(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v2, "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    iget-object v4, p0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->rootLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v2}, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method
