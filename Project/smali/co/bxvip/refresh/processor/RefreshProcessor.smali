.class public Lco/bxvip/refresh/processor/RefreshProcessor;
.super Ljava/lang/Object;
.source "RefreshProcessor.java"

# interfaces
.implements Lco/bxvip/refresh/processor/IDecorator;


# instance fields
.field protected cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

.field private downEventSent:Z

.field private intercepted:Z

.field private mLastMoveEvent:Landroid/view/MotionEvent;

.field private mTouchX:F

.field private mTouchY:F

.field private willAnimBottom:Z

.field private willAnimHead:Z


# direct methods
.method public constructor <init>(Lco/bxvip/refresh/BxRefreshLayout$CoContext;)V
    .locals 2
    .param p1, "processor"    # Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->intercepted:Z

    .line 23
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->willAnimHead:Z

    .line 24
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->willAnimBottom:Z

    .line 25
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->downEventSent:Z

    .line 17
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The coprocessor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    .line 19
    return-void
.end method

.method private sendCancelEvent()V
    .locals 11

    .line 115
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mLastMoveEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 119
    .local v0, "last":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    move-wide v3, v7

    move v7, v9

    move v8, v10

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 120
    .local v1, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v2, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z

    .line 121
    return-void
.end method

.method private sendDownEvent()V
    .locals 9

    .line 124
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 125
    .local v0, "last":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 126
    .local v1, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v2, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z

    .line 127
    return-void
.end method


# virtual methods
.method public dealTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 48
    :pswitch_0
    iput-object p1, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mTouchX:F

    sub-float/2addr v0, v1

    .line 50
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mTouchY:F

    sub-float/2addr v1, v3

    .line 51
    .local v1, "dy":F
    iget-boolean v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->intercepted:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v5}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 52
    cmpl-float v3, v1, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v5}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v5

    invoke-static {v3, v5}, Lco/bxvip/refresh/utils/ScrollingUtil;->isViewToTop(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->allowPullDown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setStatePTD()V

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mTouchX:F

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mTouchY:F

    .line 56
    invoke-direct {p0}, Lco/bxvip/refresh/processor/RefreshProcessor;->sendCancelEvent()V

    .line 57
    iput-boolean v2, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->intercepted:Z

    .line 58
    return v2

    .line 59
    :cond_0
    cmpg-float v3, v1, v4

    if-gez v3, :cond_1

    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v5}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v5

    invoke-static {v3, v5}, Lco/bxvip/refresh/utils/ScrollingUtil;->isViewToBottom(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->allowPullUp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setStatePBU()V

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mTouchX:F

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mTouchY:F

    .line 63
    iput-boolean v2, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->intercepted:Z

    .line 64
    invoke-direct {p0}, Lco/bxvip/refresh/processor/RefreshProcessor;->sendCancelEvent()V

    .line 65
    return v2

    .line 68
    :cond_1
    iget-boolean v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->intercepted:Z

    if-eqz v3, :cond_f

    .line 69
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isRefreshVisible()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isLoadingVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 72
    :cond_2
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isPrepareFinishRefresh()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isStatePTD()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 73
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_3

    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v5}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v5

    invoke-static {v3, v5}, Lco/bxvip/refresh/utils/ScrollingUtil;->isViewToTop(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 74
    :cond_3
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3, p1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z

    .line 76
    :cond_4
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getMaxHeadHeight()F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v3, v3, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 77
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 78
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getAnimProcessor()Lco/bxvip/refresh/processor/AnimProcessor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->scrollHeadByMove(F)V

    goto :goto_0

    .line 79
    :cond_5
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isPrepareFinishLoadMore()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isStatePBU()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 81
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_6

    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v5}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v5

    invoke-static {v3, v5}, Lco/bxvip/refresh/utils/ScrollingUtil;->isViewToBottom(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 82
    :cond_6
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3, p1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z

    .line 84
    :cond_7
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getMaxBottomHeight()I

    move-result v3

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 85
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 86
    iget-object v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v3}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getAnimProcessor()Lco/bxvip/refresh/processor/AnimProcessor;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v3, v5}, Lco/bxvip/refresh/processor/AnimProcessor;->scrollBottomByMove(F)V

    .line 88
    :cond_8
    :goto_0
    cmpl-float v3, v1, v4

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->downEventSent:Z

    if-nez v3, :cond_9

    .line 89
    iput-boolean v2, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->downEventSent:Z

    .line 90
    invoke-direct {p0}, Lco/bxvip/refresh/processor/RefreshProcessor;->sendDownEvent()V

    .line 92
    :cond_9
    return v2

    .line 70
    :cond_a
    :goto_1
    iget-object v2, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v2, p1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 97
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :pswitch_1
    iget-boolean v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->intercepted:Z

    if-eqz v0, :cond_f

    .line 98
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isStatePTD()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 99
    iput-boolean v2, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->willAnimHead:Z

    goto :goto_2

    .line 100
    :cond_b
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isStatePBU()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 101
    iput-boolean v2, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->willAnimBottom:Z

    .line 103
    :cond_c
    :goto_2
    iput-boolean v1, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->intercepted:Z

    .line 104
    return v2

    .line 31
    :pswitch_2
    iput-boolean v1, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->downEventSent:Z

    .line 32
    iput-boolean v1, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->intercepted:Z

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mTouchX:F

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->mTouchY:F

    .line 36
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 38
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setPrepareFinishRefresh(Z)V

    .line 40
    :cond_d
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isLoadingMore()Z

    move-result v0

    if-nez v0, :cond_e

    .line 41
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setPrepareFinishLoadMore(Z)V

    .line 45
    :cond_e
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z

    .line 46
    return v2

    .line 108
    :cond_f
    :goto_3
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0, p1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerDown(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 141
    return-void
.end method

.method public onFingerFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 169
    return-void
.end method

.method public onFingerScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F
    .param p5, "velocityX"    # F
    .param p6, "velocityY"    # F

    .line 158
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v0

    .line 159
    .local v0, "mTouchSlop":I
    iget-object v1, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isRefreshVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v1, v0

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isOpenFloatRefresh()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getAnimProcessor()Lco/bxvip/refresh/processor/AnimProcessor;

    move-result-object v1

    float-to-int v2, p6

    invoke-virtual {v1, v2}, Lco/bxvip/refresh/processor/AnimProcessor;->animHeadHideByVy(I)V

    .line 162
    :cond_0
    iget-object v1, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isLoadingVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    neg-int v1, v0

    int-to-float v1, v1

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_1

    .line 163
    iget-object v1, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getAnimProcessor()Lco/bxvip/refresh/processor/AnimProcessor;

    move-result-object v1

    float-to-int v2, p6

    invoke-virtual {v1, v2}, Lco/bxvip/refresh/processor/AnimProcessor;->animBottomHideByVy(I)V

    .line 165
    :cond_1
    return-void
.end method

.method public onFingerUp(Landroid/view/MotionEvent;Z)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "isFling"    # Z

    .line 145
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->willAnimHead:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getAnimProcessor()Lco/bxvip/refresh/processor/AnimProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->dealPullDownRelease()V

    .line 148
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->willAnimBottom:Z

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getAnimProcessor()Lco/bxvip/refresh/processor/AnimProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->dealPullUpRelease()V

    .line 151
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->willAnimHead:Z

    .line 152
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/RefreshProcessor;->willAnimBottom:Z

    .line 153
    return-void
.end method
