.class public Lco/bxvip/refresh/processor/OverScrollDecorator;
.super Lco/bxvip/refresh/processor/Decorator;
.source "OverScrollDecorator.java"


# static fields
.field private static final ALL_DELAY_TIMES:I = 0x3c

.field private static final MSG_CONTINUE_COMPUTE_SCROLL:I = 0x1

.field private static final MSG_START_COMPUTE_SCROLL:I = 0x0

.field private static final MSG_STOP_COMPUTE_SCROLL:I = 0x2

.field private static final OVER_SCROLL_MIN_VX:I = 0xbb8


# instance fields
.field private checkOverScroll:Z

.field private cur_delay_times:I

.field private mHandler:Landroid/os/Handler;

.field private mVelocityY:F

.field private preventBottomOverScroll:Z

.field private preventTopOverScroll:Z


# direct methods
.method public constructor <init>(Lco/bxvip/refresh/BxRefreshLayout$CoContext;Lco/bxvip/refresh/processor/IDecorator;)V
    .locals 1
    .param p1, "processor"    # Lco/bxvip/refresh/BxRefreshLayout$CoContext;
    .param p2, "decorator1"    # Lco/bxvip/refresh/processor/IDecorator;

    .line 32
    invoke-direct {p0, p1, p2}, Lco/bxvip/refresh/processor/Decorator;-><init>(Lco/bxvip/refresh/BxRefreshLayout$CoContext;Lco/bxvip/refresh/processor/IDecorator;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cur_delay_times:I

    .line 51
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->preventTopOverScroll:Z

    .line 52
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->preventBottomOverScroll:Z

    .line 53
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->checkOverScroll:Z

    .line 97
    new-instance v0, Lco/bxvip/refresh/processor/OverScrollDecorator$1;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/processor/OverScrollDecorator$1;-><init>(Lco/bxvip/refresh/processor/OverScrollDecorator;)V

    iput-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lco/bxvip/refresh/processor/OverScrollDecorator;)I
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/processor/OverScrollDecorator;

    .line 15
    iget v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cur_delay_times:I

    return v0
.end method

.method static synthetic access$002(Lco/bxvip/refresh/processor/OverScrollDecorator;I)I
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/OverScrollDecorator;
    .param p1, "x1"    # I

    .line 15
    iput p1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cur_delay_times:I

    return p1
.end method

.method static synthetic access$008(Lco/bxvip/refresh/processor/OverScrollDecorator;)I
    .locals 2
    .param p0, "x0"    # Lco/bxvip/refresh/processor/OverScrollDecorator;

    .line 15
    iget v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cur_delay_times:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cur_delay_times:I

    return v0
.end method

.method static synthetic access$100(Lco/bxvip/refresh/processor/OverScrollDecorator;)F
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/processor/OverScrollDecorator;

    .line 15
    iget v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->mVelocityY:F

    return v0
.end method

.method static synthetic access$102(Lco/bxvip/refresh/processor/OverScrollDecorator;F)F
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/OverScrollDecorator;
    .param p1, "x1"    # F

    .line 15
    iput p1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->mVelocityY:F

    return p1
.end method

.method static synthetic access$200(Lco/bxvip/refresh/processor/OverScrollDecorator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/processor/OverScrollDecorator;

    .line 15
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dealTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 48
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    invoke-interface {v0, p1}, Lco/bxvip/refresh/processor/IDecorator;->dealTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 38
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    invoke-interface {v0, p1}, Lco/bxvip/refresh/processor/IDecorator;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 43
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    invoke-interface {v0, p1}, Lco/bxvip/refresh/processor/IDecorator;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFingerDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 57
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    invoke-interface {v0, p1}, Lco/bxvip/refresh/processor/IDecorator;->onFingerDown(Landroid/view/MotionEvent;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v1

    invoke-static {v0, v1}, Lco/bxvip/refresh/utils/ScrollingUtil;->isViewToTop(Landroid/view/View;I)Z

    move-result v0

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->preventTopOverScroll:Z

    .line 59
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v1

    invoke-static {v0, v1}, Lco/bxvip/refresh/utils/ScrollingUtil;->isViewToBottom(Landroid/view/View;I)Z

    move-result v0

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->preventBottomOverScroll:Z

    .line 60
    return-void
.end method

.method public onFingerFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 79
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    invoke-interface {v0, p1, p2, p3, p4}, Lco/bxvip/refresh/processor/IDecorator;->onFingerFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 81
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->enableOverScroll()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 84
    .local v0, "dy":I
    iget-object v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    iget-boolean v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->preventBottomOverScroll:Z

    if-eqz v1, :cond_2

    return-void

    .line 85
    :cond_2
    iget-object v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v1

    if-le v0, v1, :cond_3

    iget-boolean v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->preventTopOverScroll:Z

    if-eqz v1, :cond_3

    return-void

    .line 87
    :cond_3
    iput p4, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->mVelocityY:F

    .line 88
    iget v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->mVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x453b8000    # 3000.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 89
    iget-object v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->checkOverScroll:Z

    goto :goto_0

    .line 92
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->mVelocityY:F

    .line 93
    const/16 v1, 0x3c

    iput v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->cur_delay_times:I

    .line 95
    :goto_0
    return-void
.end method

.method public onFingerScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F
    .param p5, "velocityX"    # F
    .param p6, "velocityY"    # F

    .line 73
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lco/bxvip/refresh/processor/IDecorator;->onFingerScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V

    .line 75
    :cond_0
    return-void
.end method

.method public onFingerUp(Landroid/view/MotionEvent;Z)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "isFling"    # Z

    .line 65
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->decorator:Lco/bxvip/refresh/processor/IDecorator;

    iget-boolean v2, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->checkOverScroll:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, p1, v2}, Lco/bxvip/refresh/processor/IDecorator;->onFingerUp(Landroid/view/MotionEvent;Z)V

    .line 68
    :cond_1
    iput-boolean v1, p0, Lco/bxvip/refresh/processor/OverScrollDecorator;->checkOverScroll:Z

    .line 69
    return-void
.end method
