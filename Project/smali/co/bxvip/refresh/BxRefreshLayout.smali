.class public Lco/bxvip/refresh/BxRefreshLayout;
.super Landroid/widget/RelativeLayout;
.source "BxRefreshLayout.java"

# interfaces
.implements Lco/bxvip/refresh/PullListener;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/refresh/BxRefreshLayout$CoContext;
    }
.end annotation


# static fields
.field private static FOOTER_CLASS_NAME:Ljava/lang/String;

.field private static HEADER_CLASS_NAME:Ljava/lang/String;


# instance fields
.field protected autoLoadMore:Z

.field private cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

.field private decorator:Lco/bxvip/refresh/processor/IDecorator;

.field protected enableKeepIView:Z

.field protected enableLoadMore:Z

.field protected enableOverScroll:Z

.field protected enableRefresh:Z

.field protected floatRefresh:Z

.field protected isLoadingMore:Z

.field protected isLoadingVisible:Z

.field protected isOverScrollBottomShow:Z

.field protected isOverScrollTopShow:Z

.field protected isPureScrollModeOn:Z

.field protected isRefreshVisible:Z

.field protected isRefreshing:Z

.field private listener:Lco/bxvip/refresh/OnGestureListener;

.field private mActivePointerId:I

.field private mAlwaysInTapRegion:Z

.field private mBottomHeight:F

.field private mBottomLayout:Landroid/widget/FrameLayout;

.field private mBottomView:Lco/bxvip/refresh/footer/IBottomView;

.field private final mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mChildView:Landroid/view/View;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private mExHeadHeight:I

.field private mExtraHeadLayout:Landroid/widget/FrameLayout;

.field protected mHeadHeight:F

.field protected mHeadLayout:Landroid/widget/FrameLayout;

.field private mHeadView:Lco/bxvip/refresh/header/IHeaderView;

.field private mIsBeingDragged:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private mLastTouchX:I

.field private mLastTouchY:I

.field protected mMaxBottomHeight:F

.field protected mMaxHeadHeight:F

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private final mNestedOffsets:[I

.field protected mOverScrollHeight:F

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private final mTouchSlop:I

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private pullListener:Lco/bxvip/refresh/PullListener;

.field private refreshListener:Lco/bxvip/refresh/PullListener;

.field protected showLoadingWhenOverScroll:Z

.field protected showRefreshingWhenOverScroll:Z

.field private vx:F

.field private vy:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-string v0, ""

    sput-object v0, Lco/bxvip/refresh/BxRefreshLayout;->HEADER_CLASS_NAME:Ljava/lang/String;

    .line 68
    const-string v0, ""

    sput-object v0, Lco/bxvip/refresh/BxRefreshLayout;->FOOTER_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lco/bxvip/refresh/BxRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/bxvip/refresh/BxRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mExHeadHeight:I

    .line 78
    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->isRefreshVisible:Z

    .line 81
    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->isLoadingVisible:Z

    .line 84
    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->isRefreshing:Z

    .line 85
    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->isLoadingMore:Z

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableLoadMore:Z

    .line 90
    iput-boolean v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableRefresh:Z

    .line 93
    iput-boolean v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->isOverScrollTopShow:Z

    .line 95
    iput-boolean v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->isOverScrollBottomShow:Z

    .line 98
    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->isPureScrollModeOn:Z

    .line 101
    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->autoLoadMore:Z

    .line 104
    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->floatRefresh:Z

    .line 107
    iput-boolean v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableOverScroll:Z

    .line 110
    iput-boolean v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableKeepIView:Z

    .line 113
    iput-boolean v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->showRefreshingWhenOverScroll:Z

    .line 116
    iput-boolean v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->showLoadingWhenOverScroll:Z

    .line 119
    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mTouchSlop:I

    .line 121
    iput-object p0, p0, Lco/bxvip/refresh/BxRefreshLayout;->pullListener:Lco/bxvip/refresh/PullListener;

    .line 258
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMaximumFlingVelocity:I

    .line 259
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMinimumFlingVelocity:I

    .line 262
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mTouchSlop:I

    iget v2, p0, Lco/bxvip/refresh/BxRefreshLayout;->mTouchSlop:I

    mul-int v0, v0, v2

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mTouchSlopSquare:I

    .line 407
    const/4 v0, 0x2

    new-array v2, v0, [I

    iput-object v2, p0, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    .line 408
    new-array v2, v0, [I

    iput-object v2, p0, Lco/bxvip/refresh/BxRefreshLayout;->mScrollConsumed:[I

    .line 409
    new-array v0, v0, [I

    iput-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mNestedOffsets:[I

    .line 410
    const/4 v0, -0x1

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mActivePointerId:I

    .line 136
    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {p1, v0}, Lco/bxvip/refresh/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxHeadHeight:F

    .line 137
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Lco/bxvip/refresh/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadHeight:F

    .line 138
    invoke-static {p1, v0}, Lco/bxvip/refresh/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxBottomHeight:F

    .line 139
    invoke-static {p1, v2}, Lco/bxvip/refresh/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomHeight:F

    .line 140
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadHeight:F

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mOverScrollHeight:F

    .line 141
    new-instance v0, Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;-><init>(Lco/bxvip/refresh/BxRefreshLayout;)V

    iput-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    .line 143
    invoke-direct {p0}, Lco/bxvip/refresh/BxRefreshLayout;->addHeader()V

    .line 144
    invoke-direct {p0}, Lco/bxvip/refresh/BxRefreshLayout;->addFooter()V

    .line 146
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->floatRefresh:Z

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/BxRefreshLayout;->setFloatRefresh(Z)V

    .line 147
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->autoLoadMore:Z

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/BxRefreshLayout;->setAutoLoadMore(Z)V

    .line 148
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableRefresh:Z

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/BxRefreshLayout;->setEnableRefresh(Z)V

    .line 149
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableLoadMore:Z

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/BxRefreshLayout;->setEnableLoadMore(Z)V

    .line 151
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 152
    invoke-virtual {p0, v1}, Lco/bxvip/refresh/BxRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/processor/IDecorator;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    return-object v0
.end method

.method static synthetic access$100(Lco/bxvip/refresh/BxRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->vx:F

    return v0
.end method

.method static synthetic access$1000(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/footer/IBottomView;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomView:Lco/bxvip/refresh/footer/IBottomView;

    return-object v0
.end method

.method static synthetic access$1200(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/PullListener;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->pullListener:Lco/bxvip/refresh/PullListener;

    return-object v0
.end method

.method static synthetic access$1301(Lco/bxvip/refresh/BxRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 40
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lco/bxvip/refresh/BxRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->vy:F

    return v0
.end method

.method static synthetic access$300(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    return-object v0
.end method

.method static synthetic access$400(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mExtraHeadLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lco/bxvip/refresh/BxRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomHeight:F

    return v0
.end method

.method static synthetic access$700(Lco/bxvip/refresh/BxRefreshLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lco/bxvip/refresh/BxRefreshLayout;)I
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$900(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/header/IHeaderView;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 40
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadView:Lco/bxvip/refresh/header/IHeaderView;

    return-object v0
.end method

.method private addFooter()V
    .locals 7

    .line 187
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "bottomViewLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v1, "layoutParams2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iput-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomLayout:Landroid/widget/FrameLayout;

    .line 193
    iget-object v3, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lco/bxvip/refresh/BxRefreshLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v3, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomView:Lco/bxvip/refresh/footer/IBottomView;

    if-nez v3, :cond_1

    .line 196
    sget-object v3, Lco/bxvip/refresh/BxRefreshLayout;->FOOTER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    :try_start_0
    sget-object v3, Lco/bxvip/refresh/BxRefreshLayout;->FOOTER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 199
    .local v3, "clazz":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 200
    .local v5, "ct":Ljava/lang/reflect/Constructor;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/bxvip/refresh/footer/IBottomView;

    invoke-virtual {p0, v2}, Lco/bxvip/refresh/BxRefreshLayout;->setBottomView(Lco/bxvip/refresh/footer/IBottomView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v5    # "ct":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "TwinklingRefreshLayout:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultFooter classname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v3, Lco/bxvip/refresh/footer/BallPulseView;

    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lco/bxvip/refresh/footer/BallPulseView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lco/bxvip/refresh/BxRefreshLayout;->setBottomView(Lco/bxvip/refresh/footer/IBottomView;)V

    .line 204
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 206
    :cond_0
    new-instance v2, Lco/bxvip/refresh/footer/BallPulseView;

    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lco/bxvip/refresh/footer/BallPulseView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lco/bxvip/refresh/BxRefreshLayout;->setBottomView(Lco/bxvip/refresh/footer/IBottomView;)V

    .line 209
    :cond_1
    :goto_1
    return-void
.end method

.method private addHeader()V
    .locals 9

    .line 156
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "headViewLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 161
    .local v4, "extraHeadLayout":Landroid/widget/FrameLayout;
    const v5, 0x7ffffffc

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 162
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v2, v5

    .line 164
    .local v2, "layoutParams2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v4, v2}, Lco/bxvip/refresh/BxRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-virtual {p0, v0, v1}, Lco/bxvip/refresh/BxRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iput-object v4, p0, Lco/bxvip/refresh/BxRefreshLayout;->mExtraHeadLayout:Landroid/widget/FrameLayout;

    .line 168
    iput-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    .line 170
    iget-object v5, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadView:Lco/bxvip/refresh/header/IHeaderView;

    if-nez v5, :cond_1

    .line 171
    sget-object v5, Lco/bxvip/refresh/BxRefreshLayout;->HEADER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 173
    :try_start_0
    sget-object v5, Lco/bxvip/refresh/BxRefreshLayout;->HEADER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 174
    .local v5, "headClazz":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 175
    .local v7, "ct":Ljava/lang/reflect/Constructor;
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/bxvip/refresh/header/IHeaderView;

    invoke-virtual {p0, v3}, Lco/bxvip/refresh/BxRefreshLayout;->setHeaderView(Lco/bxvip/refresh/header/IHeaderView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v5    # "headClazz":Ljava/lang/Class;
    .end local v7    # "ct":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 176
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "TwinklingRefreshLayout:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDefaultHeader classname="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v5, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;

    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lco/bxvip/refresh/BxRefreshLayout;->setHeaderView(Lco/bxvip/refresh/header/IHeaderView;)V

    .line 179
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 181
    :cond_0
    new-instance v3, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;

    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lco/bxvip/refresh/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lco/bxvip/refresh/BxRefreshLayout;->setHeaderView(Lco/bxvip/refresh/header/IHeaderView;)V

    .line 184
    :cond_1
    :goto_1
    return-void
.end method

.method private detectGesture(Landroid/view/MotionEvent;Lco/bxvip/refresh/OnGestureListener;)V
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "listener"    # Lco/bxvip/refresh/OnGestureListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 265
    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 267
    .local v3, "action":I
    iget-object v4, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_0

    .line 268
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 270
    :cond_0
    iget-object v4, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 272
    and-int/lit16 v4, v3, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 273
    .local v4, "pointerUp":Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    .line 276
    .local v5, "skipIndex":I
    :goto_1
    const/4 v8, 0x0

    .line 276
    .local v8, "sumX":F
    const/4 v9, 0x0

    .line 277
    .local v9, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 278
    .local v10, "count":I
    move v11, v9

    move v9, v8

    const/4 v8, 0x0

    .line 278
    .local v8, "i":I
    .local v9, "sumX":F
    .local v11, "sumY":F
    :goto_2
    if-ge v8, v10, :cond_4

    .line 279
    if-ne v5, v8, :cond_3

    goto :goto_3

    .line 280
    :cond_3
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v9, v12

    .line 281
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v11, v12

    .line 278
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 283
    .end local v8    # "i":I
    :cond_4
    if-eqz v4, :cond_5

    add-int/lit8 v8, v10, -0x1

    goto :goto_4

    :cond_5
    move v8, v10

    .line 284
    .local v8, "div":I
    :goto_4
    int-to-float v12, v8

    div-float v12, v9, v12

    .line 285
    .local v12, "focusX":F
    int-to-float v13, v8

    div-float v13, v11, v13

    .line 287
    .local v13, "focusY":F
    and-int/lit16 v14, v3, 0xff

    const/4 v15, 0x0

    const/16 v6, 0x3e8

    packed-switch v14, :pswitch_data_0

    .line 374
    :pswitch_0
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    .line 374
    .end local v3    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .local v19, "action":I
    .local v20, "pointerUp":Z
    .local v21, "skipIndex":I
    goto/16 :goto_8

    .line 293
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .restart local v3    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_1
    iput v12, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusX:F

    iput v12, v0, Lco/bxvip/refresh/BxRefreshLayout;->mDownFocusX:F

    .line 294
    iput v13, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusY:F

    iput v13, v0, Lco/bxvip/refresh/BxRefreshLayout;->mDownFocusY:F

    .line 298
    iget-object v14, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v15, v0, Lco/bxvip/refresh/BxRefreshLayout;->mMaximumFlingVelocity:I

    int-to-float v15, v15

    invoke-virtual {v14, v6, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 300
    .local v6, "upIndex":I
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 301
    .local v14, "id1":I
    iget-object v15, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15, v14}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v15

    .line 302
    .local v15, "x1":F
    iget-object v7, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v14}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    .line 303
    .local v7, "y1":F
    const/16 v17, 0x0

    .line 303
    .local v17, "i":I
    :goto_5
    move/from16 v18, v17

    .line 303
    .end local v17    # "i":I
    .local v18, "i":I
    move/from16 v19, v3

    move/from16 v3, v18

    if-ge v3, v10, :cond_8

    .line 304
    .end local v18    # "i":I
    .local v3, "i":I
    .restart local v19    # "action":I
    if-ne v3, v6, :cond_6

    .line 303
    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    goto :goto_6

    .line 306
    :cond_6
    move/from16 v20, v4

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 307
    .local v4, "id2":I
    .restart local v20    # "pointerUp":Z
    move/from16 v21, v5

    iget-object v5, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 307
    .end local v5    # "skipIndex":I
    .restart local v21    # "skipIndex":I
    invoke-virtual {v5, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    mul-float v5, v5, v15

    .line 308
    .local v5, "x":F
    move/from16 v22, v6

    iget-object v6, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 308
    .end local v6    # "upIndex":I
    .local v22, "upIndex":I
    invoke-virtual {v6, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    mul-float v6, v6, v7

    .line 310
    .local v6, "y":F
    add-float v16, v5, v6

    .line 311
    .local v16, "dot":F
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_7

    .line 312
    move/from16 v23, v4

    iget-object v4, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 312
    .end local v4    # "id2":I
    .local v23, "id2":I
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 313
    goto :goto_7

    .line 303
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v16    # "dot":F
    .end local v23    # "id2":I
    :cond_7
    :goto_6
    add-int/lit8 v17, v3, 0x1

    .line 303
    .end local v3    # "i":I
    .restart local v17    # "i":I
    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    goto :goto_5

    .line 316
    .end local v17    # "i":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .end local v22    # "upIndex":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    .local v6, "upIndex":I
    :cond_8
    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    .line 316
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v6    # "upIndex":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    .restart local v22    # "upIndex":I
    :goto_7
    goto/16 :goto_8

    .line 289
    .end local v7    # "y1":F
    .end local v14    # "id1":I
    .end local v15    # "x1":F
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .end local v22    # "upIndex":I
    .local v3, "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_2
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    .line 289
    .end local v3    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    iput v12, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusX:F

    iput v12, v0, Lco/bxvip/refresh/BxRefreshLayout;->mDownFocusX:F

    .line 290
    iput v13, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusY:F

    iput v13, v0, Lco/bxvip/refresh/BxRefreshLayout;->mDownFocusY:F

    .line 291
    goto/16 :goto_8

    .line 367
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .restart local v3    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_3
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    .line 367
    .end local v3    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    const/4 v3, 0x0

    iput-boolean v3, v0, Lco/bxvip/refresh/BxRefreshLayout;->mAlwaysInTapRegion:Z

    .line 368
    iget-object v3, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_f

    .line 369
    iget-object v3, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 370
    iput-object v15, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_8

    .line 328
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .restart local v3    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_4
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    .line 328
    .end local v3    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    iget v3, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusX:F

    sub-float/2addr v3, v12

    .line 329
    .local v3, "scrollX":F
    iget v4, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusY:F

    sub-float/2addr v4, v13

    .line 330
    .local v4, "scrollY":F
    iget-boolean v5, v0, Lco/bxvip/refresh/BxRefreshLayout;->mAlwaysInTapRegion:Z

    if-eqz v5, :cond_a

    .line 331
    iget v5, v0, Lco/bxvip/refresh/BxRefreshLayout;->mDownFocusX:F

    sub-float v5, v12, v5

    float-to-int v5, v5

    .line 332
    .local v5, "deltaX":I
    iget v6, v0, Lco/bxvip/refresh/BxRefreshLayout;->mDownFocusY:F

    sub-float v6, v13, v6

    float-to-int v6, v6

    .line 333
    .local v6, "deltaY":I
    mul-int v7, v5, v5

    mul-int v14, v6, v6

    add-int/2addr v7, v14

    .line 334
    .local v7, "distance":I
    iget v14, v0, Lco/bxvip/refresh/BxRefreshLayout;->mTouchSlopSquare:I

    if-le v7, v14, :cond_9

    .line 335
    iget-object v14, v0, Lco/bxvip/refresh/BxRefreshLayout;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v14, v1, v3, v4}, Lco/bxvip/refresh/OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 336
    iput v12, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusX:F

    .line 337
    iput v13, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusY:F

    .line 338
    const/4 v14, 0x0

    iput-boolean v14, v0, Lco/bxvip/refresh/BxRefreshLayout;->mAlwaysInTapRegion:Z

    .line 340
    .end local v5    # "deltaX":I
    .end local v6    # "deltaY":I
    .end local v7    # "distance":I
    :cond_9
    goto/16 :goto_8

    :cond_a
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-gez v5, :cond_b

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_f

    .line 341
    :cond_b
    iget-object v5, v0, Lco/bxvip/refresh/BxRefreshLayout;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v5, v1, v3, v4}, Lco/bxvip/refresh/OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 342
    iput v12, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusX:F

    .line 343
    iput v13, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusY:F

    goto/16 :goto_8

    .line 347
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .local v3, "action":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    :pswitch_5
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    .line 347
    .end local v3    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 348
    .local v3, "pointerId":I
    iget-object v4, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, v0, Lco/bxvip/refresh/BxRefreshLayout;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 349
    iget-object v4, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    iput v4, v0, Lco/bxvip/refresh/BxRefreshLayout;->vy:F

    .line 350
    iget-object v4, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    iput v4, v0, Lco/bxvip/refresh/BxRefreshLayout;->vx:F

    .line 352
    const/4 v4, 0x0

    .line 353
    .local v4, "isFling":Z
    iget v5, v0, Lco/bxvip/refresh/BxRefreshLayout;->vy:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v0, Lco/bxvip/refresh/BxRefreshLayout;->mMinimumFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_c

    iget v5, v0, Lco/bxvip/refresh/BxRefreshLayout;->vx:F

    .line 354
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v0, Lco/bxvip/refresh/BxRefreshLayout;->mMinimumFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d

    .line 355
    :cond_c
    iget-object v5, v0, Lco/bxvip/refresh/BxRefreshLayout;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget v6, v0, Lco/bxvip/refresh/BxRefreshLayout;->vx:F

    iget v7, v0, Lco/bxvip/refresh/BxRefreshLayout;->vy:F

    invoke-interface {v2, v5, v1, v6, v7}, Lco/bxvip/refresh/OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 356
    const/4 v4, 0x1

    .line 359
    :cond_d
    invoke-interface {v2, v1, v4}, Lco/bxvip/refresh/OnGestureListener;->onUp(Landroid/view/MotionEvent;Z)V

    .line 361
    iget-object v5, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_f

    .line 362
    iget-object v5, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 363
    iput-object v15, v0, Lco/bxvip/refresh/BxRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_8

    .line 318
    .end local v19    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "skipIndex":I
    .local v3, "action":I
    .local v4, "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_6
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    .line 318
    .end local v3    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v19    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v21    # "skipIndex":I
    iput v12, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusX:F

    iput v12, v0, Lco/bxvip/refresh/BxRefreshLayout;->mDownFocusX:F

    .line 319
    iput v13, v0, Lco/bxvip/refresh/BxRefreshLayout;->mLastFocusY:F

    iput v13, v0, Lco/bxvip/refresh/BxRefreshLayout;->mDownFocusY:F

    .line 320
    iget-object v3, v0, Lco/bxvip/refresh/BxRefreshLayout;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_e

    .line 321
    iget-object v3, v0, Lco/bxvip/refresh/BxRefreshLayout;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 323
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, v0, Lco/bxvip/refresh/BxRefreshLayout;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 324
    const/4 v3, 0x1

    iput-boolean v3, v0, Lco/bxvip/refresh/BxRefreshLayout;->mAlwaysInTapRegion:Z

    .line 325
    invoke-interface {v2, v1}, Lco/bxvip/refresh/OnGestureListener;->onDown(Landroid/view/MotionEvent;)V

    .line 326
    nop

    .line 374
    :cond_f
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private detectNestedScroll(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "e"    # Landroid/view/MotionEvent;

    move-object/from16 v6, p0

    .line 416
    move-object/from16 v7, p1

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 417
    .local v8, "vtev":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v9

    .line 418
    .local v9, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v10

    .line 420
    .local v10, "actionIndex":I
    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v9, :cond_0

    .line 421
    iget-object v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mNestedOffsets:[I

    iget-object v1, v6, Lco/bxvip/refresh/BxRefreshLayout;->mNestedOffsets:[I

    aput v12, v1, v11

    aput v12, v0, v12

    .line 423
    :cond_0
    iget-object v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mNestedOffsets:[I

    aget v0, v0, v12

    int-to-float v0, v0

    iget-object v1, v6, Lco/bxvip/refresh/BxRefreshLayout;->mNestedOffsets:[I

    aget v1, v1, v11

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 425
    const/4 v0, 0x5

    if-eq v9, v0, :cond_7

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_1

    .line 438
    :pswitch_0
    iget v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mActivePointerId:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 439
    .local v13, "index":I
    if-gez v13, :cond_1

    .line 440
    const-string v0, "TwinklingRefreshLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return v12

    .line 445
    :cond_1
    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v14, v0

    .line 446
    .local v14, "x":I
    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v15, v0

    .line 448
    .local v15, "y":I
    iget v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mLastTouchX:I

    sub-int/2addr v0, v14

    .line 449
    .local v0, "dx":I
    iget v1, v6, Lco/bxvip/refresh/BxRefreshLayout;->mLastTouchY:I

    sub-int/2addr v1, v15

    .line 451
    .local v1, "dy":I
    iget-object v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollConsumed:[I

    iget-object v3, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    invoke-virtual {v6, v0, v1, v2, v3}, Lco/bxvip/refresh/BxRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 452
    iget-object v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollConsumed:[I

    aget v2, v2, v12

    sub-int/2addr v0, v2

    .line 453
    iget-object v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollConsumed:[I

    aget v2, v2, v11

    sub-int/2addr v1, v2

    .line 454
    iget-object v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    aget v2, v2, v12

    int-to-float v2, v2

    iget-object v3, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    aget v3, v3, v11

    int-to-float v3, v3

    invoke-virtual {v8, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 456
    iget-object v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mNestedOffsets:[I

    aget v3, v2, v12

    iget-object v4, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    aget v4, v4, v12

    add-int/2addr v3, v4

    aput v3, v2, v12

    .line 457
    iget-object v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mNestedOffsets:[I

    aget v3, v2, v11

    iget-object v4, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    aget v4, v4, v11

    add-int/2addr v3, v4

    aput v3, v2, v11

    .line 460
    .end local v0    # "dx":I
    .local v16, "dx":I
    :cond_2
    move/from16 v16, v0

    iget-boolean v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mTouchSlop:I

    if-le v0, v2, :cond_5

    .line 461
    invoke-virtual/range {p0 .. p0}, Lco/bxvip/refresh/BxRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 462
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_3

    .line 463
    invoke-interface {v0, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 465
    :cond_3
    iput-boolean v11, v6, Lco/bxvip/refresh/BxRefreshLayout;->mIsBeingDragged:Z

    .line 466
    if-lez v1, :cond_4

    .line 467
    iget v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mTouchSlop:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 469
    :cond_4
    iget v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mTouchSlop:I

    add-int/2addr v1, v2

    .line 473
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "dy":I
    .local v17, "dy":I
    :cond_5
    :goto_0
    move/from16 v17, v1

    iget-boolean v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_8

    .line 474
    iget-object v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    aget v0, v0, v11

    sub-int v0, v15, v0

    iput v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mLastTouchY:I

    .line 476
    const/16 v18, 0x0

    .line 477
    .local v18, "scrolledDeltaY":I
    add-int/lit8 v19, v17, 0x0

    .line 478
    .local v19, "unconsumedY":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    move-object v0, v6

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lco/bxvip/refresh/BxRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 479
    iget v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mLastTouchX:I

    iget-object v1, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    aget v1, v1, v12

    sub-int/2addr v0, v1

    iput v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mLastTouchX:I

    .line 480
    iget v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mLastTouchY:I

    iget-object v1, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    aget v1, v1, v11

    sub-int/2addr v0, v1

    iput v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mLastTouchY:I

    .line 481
    iget-object v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    aget v0, v0, v12

    int-to-float v0, v0

    iget-object v1, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    aget v1, v1, v11

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 482
    iget-object v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mNestedOffsets:[I

    aget v1, v0, v12

    iget-object v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    aget v2, v2, v12

    add-int/2addr v1, v2

    aput v1, v0, v12

    .line 483
    iget-object v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mNestedOffsets:[I

    aget v1, v0, v11

    iget-object v2, v6, Lco/bxvip/refresh/BxRefreshLayout;->mScrollOffset:[I

    aget v2, v2, v11

    add-int/2addr v1, v2

    aput v1, v0, v11

    .line 485
    .end local v18    # "scrolledDeltaY":I
    .end local v19    # "unconsumedY":I
    :cond_6
    goto :goto_1

    .line 489
    .end local v13    # "index":I
    .end local v14    # "x":I
    .end local v15    # "y":I
    .end local v16    # "dx":I
    .end local v17    # "dy":I
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lco/bxvip/refresh/BxRefreshLayout;->stopNestedScroll()V

    .line 490
    iput-boolean v12, v6, Lco/bxvip/refresh/BxRefreshLayout;->mIsBeingDragged:Z

    .line 491
    const/4 v0, -0x1

    iput v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 427
    :pswitch_2
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mActivePointerId:I

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mLastTouchX:I

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mLastTouchY:I

    .line 430
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lco/bxvip/refresh/BxRefreshLayout;->startNestedScroll(I)Z

    .line 431
    goto :goto_1

    .line 433
    :cond_7
    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mActivePointerId:I

    .line 434
    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mLastTouchX:I

    .line 435
    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Lco/bxvip/refresh/BxRefreshLayout;->mLastTouchY:I

    .line 436
    nop

    .line 494
    :cond_8
    :goto_1
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 495
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initGestureDetector()V
    .locals 1

    .line 227
    new-instance v0, Lco/bxvip/refresh/BxRefreshLayout$1;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/BxRefreshLayout$1;-><init>(Lco/bxvip/refresh/BxRefreshLayout;)V

    iput-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->listener:Lco/bxvip/refresh/OnGestureListener;

    .line 248
    return-void
.end method

.method public static setDefaultFooter(Ljava/lang/String;)V
    .locals 0
    .param p0, "className"    # Ljava/lang/String;

    .line 552
    sput-object p0, Lco/bxvip/refresh/BxRefreshLayout;->FOOTER_CLASS_NAME:Ljava/lang/String;

    .line 553
    return-void
.end method

.method public static setDefaultHeader(Ljava/lang/String;)V
    .locals 0
    .param p0, "className"    # Ljava/lang/String;

    .line 547
    sput-object p0, Lco/bxvip/refresh/BxRefreshLayout;->HEADER_CLASS_NAME:Ljava/lang/String;

    .line 548
    return-void
.end method


# virtual methods
.method public addFixedExHeader(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 609
    if-eqz p1, :cond_1

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mExtraHeadLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mExtraHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 611
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mExtraHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 612
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->floatRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 613
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onAddExHead()V

    .line 614
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setExHeadFixed()V

    .line 616
    :cond_1
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 536
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 541
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .line 531
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .line 526
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 380
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->onFinishInflate()V

    .line 383
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    invoke-interface {v0, p1}, Lco/bxvip/refresh/processor/IDecorator;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 384
    .local v0, "consume":Z
    iget-object v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->listener:Lco/bxvip/refresh/OnGestureListener;

    invoke-direct {p0, p1, v1}, Lco/bxvip/refresh/BxRefreshLayout;->detectGesture(Landroid/view/MotionEvent;Lco/bxvip/refresh/OnGestureListener;)V

    .line 385
    invoke-direct {p0, p1}, Lco/bxvip/refresh/BxRefreshLayout;->detectNestedScroll(Landroid/view/MotionEvent;)Z

    .line 386
    return v0
.end method

.method public finishLoadMore()V
    .locals 1

    .line 576
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->finishLoadMore()V

    .line 577
    return-void
.end method

.method public finishRefreshing()V
    .locals 1

    .line 569
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->finishRefreshing()V

    .line 570
    return-void
.end method

.method public getExtraHeaderView()Landroid/view/View;
    .locals 1

    .line 622
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mExtraHeadLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 506
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 213
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 216
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/BxRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildView:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->init()V

    .line 219
    new-instance v0, Lco/bxvip/refresh/processor/OverScrollDecorator;

    iget-object v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    new-instance v2, Lco/bxvip/refresh/processor/RefreshProcessor;

    iget-object v3, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-direct {v2, v3}, Lco/bxvip/refresh/processor/RefreshProcessor;-><init>(Lco/bxvip/refresh/BxRefreshLayout$CoContext;)V

    invoke-direct {v0, v1, v2}, Lco/bxvip/refresh/processor/OverScrollDecorator;-><init>(Lco/bxvip/refresh/BxRefreshLayout$CoContext;Lco/bxvip/refresh/processor/IDecorator;)V

    iput-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    .line 220
    invoke-direct {p0}, Lco/bxvip/refresh/BxRefreshLayout;->initGestureDetector()V

    .line 221
    return-void
.end method

.method public onFinishLoadMore()V
    .locals 1

    .line 840
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    invoke-interface {v0}, Lco/bxvip/refresh/PullListener;->onFinishLoadMore()V

    .line 843
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isLoadingMore()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 844
    :cond_1
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomView:Lco/bxvip/refresh/footer/IBottomView;

    invoke-interface {v0}, Lco/bxvip/refresh/footer/IBottomView;->onFinish()V

    .line 845
    return-void
.end method

.method public onFinishRefresh()V
    .locals 2

    .line 826
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    invoke-interface {v0}, Lco/bxvip/refresh/PullListener;->onFinishRefresh()V

    .line 829
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadView:Lco/bxvip/refresh/header/IHeaderView;

    new-instance v1, Lco/bxvip/refresh/BxRefreshLayout$3;

    invoke-direct {v1, p0}, Lco/bxvip/refresh/BxRefreshLayout$3;-><init>(Lco/bxvip/refresh/BxRefreshLayout;)V

    invoke-interface {v0, v1}, Lco/bxvip/refresh/header/IHeaderView;->onFinish(Lco/bxvip/refresh/OnAnimEndListener;)V

    .line 836
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 397
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    invoke-interface {v0, p1}, Lco/bxvip/refresh/processor/IDecorator;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 398
    .local v0, "intercept":Z
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public onLoadMore(Lco/bxvip/refresh/BxRefreshLayout;)V
    .locals 3
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 820
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomView:Lco/bxvip/refresh/footer/IBottomView;

    iget v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxBottomHeight:F

    iget v2, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomHeight:F

    invoke-interface {v0, v1, v2}, Lco/bxvip/refresh/footer/IBottomView;->startAnim(FF)V

    .line 821
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    invoke-interface {v0, p1}, Lco/bxvip/refresh/PullListener;->onLoadMore(Lco/bxvip/refresh/BxRefreshLayout;)V

    .line 822
    :cond_0
    return-void
.end method

.method public onLoadMoreCanceled()V
    .locals 1

    .line 854
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    invoke-interface {v0}, Lco/bxvip/refresh/PullListener;->onLoadMoreCanceled()V

    .line 855
    :cond_0
    return-void
.end method

.method public onPullDownReleasing(Lco/bxvip/refresh/BxRefreshLayout;F)V
    .locals 3
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;
    .param p2, "fraction"    # F

    .line 799
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadView:Lco/bxvip/refresh/header/IHeaderView;

    iget v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxHeadHeight:F

    iget v2, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadHeight:F

    invoke-interface {v0, p2, v1, v2}, Lco/bxvip/refresh/header/IHeaderView;->onPullReleasing(FFF)V

    .line 800
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableRefresh:Z

    if-nez v0, :cond_0

    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    invoke-interface {v0, p1, p2}, Lco/bxvip/refresh/PullListener;->onPullDownReleasing(Lco/bxvip/refresh/BxRefreshLayout;F)V

    .line 803
    :cond_1
    return-void
.end method

.method public onPullUpReleasing(Lco/bxvip/refresh/BxRefreshLayout;F)V
    .locals 3
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;
    .param p2, "fraction"    # F

    .line 807
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomView:Lco/bxvip/refresh/footer/IBottomView;

    iget v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxBottomHeight:F

    iget v2, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomHeight:F

    invoke-interface {v0, p2, v1, v2}, Lco/bxvip/refresh/footer/IBottomView;->onPullReleasing(FFF)V

    .line 808
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableLoadMore:Z

    if-nez v0, :cond_0

    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    invoke-interface {v0, p1, p2}, Lco/bxvip/refresh/PullListener;->onPullUpReleasing(Lco/bxvip/refresh/BxRefreshLayout;F)V

    .line 810
    :cond_1
    return-void
.end method

.method public onPullingDown(Lco/bxvip/refresh/BxRefreshLayout;F)V
    .locals 3
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;
    .param p2, "fraction"    # F

    .line 785
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadView:Lco/bxvip/refresh/header/IHeaderView;

    iget v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxHeadHeight:F

    iget v2, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadHeight:F

    invoke-interface {v0, p2, v1, v2}, Lco/bxvip/refresh/header/IHeaderView;->onPullingDown(FFF)V

    .line 786
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableRefresh:Z

    if-nez v0, :cond_0

    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    invoke-interface {v0, p1, p2}, Lco/bxvip/refresh/PullListener;->onPullingDown(Lco/bxvip/refresh/BxRefreshLayout;F)V

    .line 788
    :cond_1
    return-void
.end method

.method public onPullingUp(Lco/bxvip/refresh/BxRefreshLayout;F)V
    .locals 3
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;
    .param p2, "fraction"    # F

    .line 792
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomView:Lco/bxvip/refresh/footer/IBottomView;

    iget v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxHeadHeight:F

    iget v2, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadHeight:F

    invoke-interface {v0, p2, v1, v2}, Lco/bxvip/refresh/footer/IBottomView;->onPullingUp(FFF)V

    .line 793
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableLoadMore:Z

    if-nez v0, :cond_0

    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    invoke-interface {v0, p1, p2}, Lco/bxvip/refresh/PullListener;->onPullingUp(Lco/bxvip/refresh/BxRefreshLayout;F)V

    .line 795
    :cond_1
    return-void
.end method

.method public onRefresh(Lco/bxvip/refresh/BxRefreshLayout;)V
    .locals 3
    .param p1, "refreshLayout"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 814
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadView:Lco/bxvip/refresh/header/IHeaderView;

    iget v1, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxHeadHeight:F

    iget v2, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadHeight:F

    invoke-interface {v0, v1, v2}, Lco/bxvip/refresh/header/IHeaderView;->startAnim(FF)V

    .line 815
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    invoke-interface {v0, p1}, Lco/bxvip/refresh/PullListener;->onRefresh(Lco/bxvip/refresh/BxRefreshLayout;)V

    .line 816
    :cond_0
    return-void
.end method

.method public onRefreshCanceled()V
    .locals 1

    .line 849
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    invoke-interface {v0}, Lco/bxvip/refresh/PullListener;->onRefreshCanceled()V

    .line 850
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 403
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    invoke-interface {v0, p1}, Lco/bxvip/refresh/processor/IDecorator;->dealTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 404
    .local v0, "consume":Z
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public setAutoLoadMore(Z)V
    .locals 1
    .param p1, "ifAutoLoadMore"    # Z

    .line 750
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->autoLoadMore:Z

    .line 751
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->autoLoadMore:Z

    if-nez v0, :cond_0

    return-void

    .line 752
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/BxRefreshLayout;->setEnableLoadMore(Z)V

    .line 753
    return-void
.end method

.method public setBottomHeight(F)V
    .locals 1
    .param p1, "bottomHeightDp"    # F

    .line 669
    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lco/bxvip/refresh/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomHeight:F

    .line 670
    return-void
.end method

.method public setBottomView(Lco/bxvip/refresh/footer/IBottomView;)V
    .locals 2
    .param p1, "bottomView"    # Lco/bxvip/refresh/footer/IBottomView;

    .line 629
    if-eqz p1, :cond_0

    .line 630
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 631
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomLayout:Landroid/widget/FrameLayout;

    invoke-interface {p1}, Lco/bxvip/refresh/footer/IBottomView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 632
    iput-object p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomView:Lco/bxvip/refresh/footer/IBottomView;

    .line 634
    :cond_0
    return-void
.end method

.method public setDecorator(Lco/bxvip/refresh/processor/IDecorator;)V
    .locals 0
    .param p1, "decorator1"    # Lco/bxvip/refresh/processor/IDecorator;

    .line 590
    if-eqz p1, :cond_0

    iput-object p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    .line 591
    :cond_0
    return-void
.end method

.method public setEnableKeepIView(Z)V
    .locals 0
    .param p1, "ifKeep"    # Z

    .line 764
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableKeepIView:Z

    .line 765
    return-void
.end method

.method public setEnableLoadMore(Z)V
    .locals 2
    .param p1, "enableLoadmore1"    # Z

    .line 676
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableLoadMore:Z

    .line 677
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomView:Lco/bxvip/refresh/footer/IBottomView;

    if-eqz v0, :cond_1

    .line 678
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableLoadMore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomView:Lco/bxvip/refresh/footer/IBottomView;

    invoke-interface {v0}, Lco/bxvip/refresh/footer/IBottomView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 679
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mBottomView:Lco/bxvip/refresh/footer/IBottomView;

    invoke-interface {v0}, Lco/bxvip/refresh/footer/IBottomView;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    :cond_1
    :goto_0
    return-void
.end method

.method public setEnableOverScroll(Z)V
    .locals 0
    .param p1, "enableOverScroll1"    # Z

    .line 720
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableOverScroll:Z

    .line 721
    return-void
.end method

.method public setEnableRefresh(Z)V
    .locals 2
    .param p1, "enableRefresh1"    # Z

    .line 687
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableRefresh:Z

    .line 688
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadView:Lco/bxvip/refresh/header/IHeaderView;

    if-eqz v0, :cond_1

    .line 689
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->enableRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadView:Lco/bxvip/refresh/header/IHeaderView;

    invoke-interface {v0}, Lco/bxvip/refresh/header/IHeaderView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 690
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadView:Lco/bxvip/refresh/header/IHeaderView;

    invoke-interface {v0}, Lco/bxvip/refresh/header/IHeaderView;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    :cond_1
    :goto_0
    return-void
.end method

.method public setFloatRefresh(Z)V
    .locals 1
    .param p1, "ifOpenFloatRefreshMode"    # Z

    .line 637
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->floatRefresh:Z

    .line 638
    iget-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->floatRefresh:Z

    if-nez v0, :cond_0

    return-void

    .line 639
    :cond_0
    new-instance v0, Lco/bxvip/refresh/BxRefreshLayout$2;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/BxRefreshLayout$2;-><init>(Lco/bxvip/refresh/BxRefreshLayout;)V

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/BxRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 645
    return-void
.end method

.method public setHeaderHeight(F)V
    .locals 1
    .param p1, "headHeightDp"    # F

    .line 658
    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lco/bxvip/refresh/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadHeight:F

    .line 659
    return-void
.end method

.method public setHeaderView(Lco/bxvip/refresh/header/IHeaderView;)V
    .locals 2
    .param p1, "headerView"    # Lco/bxvip/refresh/header/IHeaderView;

    .line 597
    if-eqz p1, :cond_0

    .line 598
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 599
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-interface {p1}, Lco/bxvip/refresh/header/IHeaderView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 600
    iput-object p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->mHeadView:Lco/bxvip/refresh/header/IHeaderView;

    .line 602
    :cond_0
    return-void
.end method

.method public setMaxBottomHeight(F)V
    .locals 1
    .param p1, "maxBottomHeight"    # F

    .line 662
    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lco/bxvip/refresh/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxBottomHeight:F

    .line 663
    return-void
.end method

.method public setMaxHeadHeight(F)V
    .locals 1
    .param p1, "maxHeightDp"    # F

    .line 651
    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lco/bxvip/refresh/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mMaxHeadHeight:F

    .line 652
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 501
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 502
    return-void
.end method

.method public setOnRefreshListener(Lco/bxvip/refresh/PullListener;)V
    .locals 0
    .param p1, "refreshListener"    # Lco/bxvip/refresh/PullListener;

    .line 778
    if-eqz p1, :cond_0

    .line 779
    iput-object p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->refreshListener:Lco/bxvip/refresh/PullListener;

    .line 781
    :cond_0
    return-void
.end method

.method public setOverScrollBottomShow(Z)V
    .locals 0
    .param p1, "isOverScrollBottomShow"    # Z

    .line 705
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->isOverScrollBottomShow:Z

    .line 706
    return-void
.end method

.method public setOverScrollHeight(F)V
    .locals 1
    .param p1, "overScrollHeightDp"    # F

    .line 741
    invoke-virtual {p0}, Lco/bxvip/refresh/BxRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lco/bxvip/refresh/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mOverScrollHeight:F

    .line 742
    return-void
.end method

.method public setOverScrollRefreshShow(Z)V
    .locals 0
    .param p1, "isOverScrollRefreshShow"    # Z

    .line 712
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->isOverScrollTopShow:Z

    .line 713
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->isOverScrollBottomShow:Z

    .line 714
    return-void
.end method

.method public setOverScrollTopShow(Z)V
    .locals 0
    .param p1, "isOverScrollTopShow"    # Z

    .line 698
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->isOverScrollTopShow:Z

    .line 699
    return-void
.end method

.method public setPureScrollModeOn()V
    .locals 1

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->isPureScrollModeOn:Z

    .line 729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->isOverScrollTopShow:Z

    .line 730
    iput-boolean v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->isOverScrollBottomShow:Z

    .line 731
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mOverScrollHeight:F

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/BxRefreshLayout;->setMaxHeadHeight(F)V

    .line 732
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mOverScrollHeight:F

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/BxRefreshLayout;->setHeaderHeight(F)V

    .line 733
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mOverScrollHeight:F

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/BxRefreshLayout;->setMaxBottomHeight(F)V

    .line 734
    iget v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mOverScrollHeight:F

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/BxRefreshLayout;->setBottomHeight(F)V

    .line 735
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;

    .line 583
    if-eqz p1, :cond_0

    iput-object p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildView:Landroid/view/View;

    .line 584
    :cond_0
    return-void
.end method

.method public showLoadingWhenOverScroll(Z)V
    .locals 0
    .param p1, "ifShow"    # Z

    .line 760
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->showLoadingWhenOverScroll:Z

    .line 761
    return-void
.end method

.method public showRefreshingWhenOverScroll(Z)V
    .locals 0
    .param p1, "ifShow"    # Z

    .line 756
    iput-boolean p1, p0, Lco/bxvip/refresh/BxRefreshLayout;->showRefreshingWhenOverScroll:Z

    .line 757
    return-void
.end method

.method public startLoadMore()V
    .locals 1

    .line 562
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->startLoadMore()V

    .line 563
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .line 511
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public startRefresh()V
    .locals 1

    .line 557
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->startRefresh()V

    .line 558
    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 516
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 517
    return-void
.end method
