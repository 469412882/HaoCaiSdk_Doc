.class Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"

# interfaces
.implements Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GestureDetectorCompatImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field mCurrentDownEvent:Landroid/view/MotionEvent;

.field mDeferConfirmSingleTap:Z

.field mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    .line 47
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    .line 48
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    if-eqz p3, :cond_0

    .line 138
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;

    invoke-direct {v0, p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;-><init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V

    iput-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 142
    :goto_0
    iput-object p2, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 143
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_1

    .line 144
    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 146
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->init(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method private cancel()V
    .locals 2

    .line 398
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 404
    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 405
    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 406
    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 407
    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 408
    iget-boolean v1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v1, :cond_0

    .line 409
    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 411
    :cond_0
    return-void
.end method

.method private cancelTaps()V
    .locals 2

    .line 414
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 418
    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 419
    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 420
    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 421
    iget-boolean v1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v1, :cond_0

    .line 422
    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 424
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    .line 158
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 159
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 160
    .local v1, "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 161
    .local v2, "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    .line 162
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    .line 164
    mul-int v3, v1, v1

    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    .line 165
    mul-int v3, v2, v2

    iput v3, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    .line 166
    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .line 428
    iget-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 429
    return v1

    .line 432
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long v6, v2, v4

    sget v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v2, v0

    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    .line 433
    return v1

    .line 436
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    .line 437
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 438
    .local v2, "deltaY":I
    mul-int v3, v0, v0

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method


# virtual methods
.method dispatchLongPress()V
    .locals 2

    .line 442
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 445
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 446
    return-void
.end method

.method public isLongpressEnabled()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 212
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 214
    .local v2, "action":I
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    .line 215
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 217
    :cond_0
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 219
    and-int/lit16 v3, v2, 0xff

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 221
    .local v3, "pointerUp":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    .line 224
    .local v4, "skipIndex":I
    :goto_1
    const/4 v7, 0x0

    .line 224
    .local v7, "sumX":F
    const/4 v8, 0x0

    .line 225
    .local v8, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 226
    .local v9, "count":I
    move v10, v8

    move v8, v7

    const/4 v7, 0x0

    .line 226
    .local v7, "i":I
    .local v8, "sumX":F
    .local v10, "sumY":F
    :goto_2
    if-ge v7, v9, :cond_4

    .line 227
    if-ne v4, v7, :cond_3

    goto :goto_3

    .line 228
    :cond_3
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v8, v11

    .line 229
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    .line 226
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 231
    .end local v7    # "i":I
    :cond_4
    if-eqz v3, :cond_5

    add-int/lit8 v7, v9, -0x1

    goto :goto_4

    :cond_5
    move v7, v9

    .line 232
    .local v7, "div":I
    :goto_4
    int-to-float v11, v7

    div-float v11, v8, v11

    .line 233
    .local v11, "focusX":F
    int-to-float v12, v7

    div-float v12, v10, v12

    .line 235
    .local v12, "focusY":F
    const/4 v13, 0x0

    .line 237
    .local v13, "handled":Z
    and-int/lit16 v14, v2, 0xff

    const/16 v15, 0x3e8

    packed-switch v14, :pswitch_data_0

    .line 394
    :pswitch_0
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    .line 394
    .end local v2    # "action":I
    .end local v3    # "pointerUp":Z
    .end local v4    # "skipIndex":I
    .local v20, "action":I
    .local v21, "pointerUp":Z
    .local v22, "skipIndex":I
    goto/16 :goto_a

    .line 246
    .end local v20    # "action":I
    .end local v21    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "pointerUp":Z
    .restart local v4    # "skipIndex":I
    :pswitch_1
    iput v11, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    iput v11, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 247
    iput v12, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    iput v12, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 251
    iget-object v5, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    int-to-float v14, v14

    invoke-virtual {v5, v15, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 253
    .local v5, "upIndex":I
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 254
    .local v14, "id1":I
    iget-object v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15, v14}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v15

    .line 255
    .local v15, "x1":F
    iget-object v6, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v14}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 256
    .local v6, "y1":F
    const/16 v18, 0x0

    .line 256
    .local v18, "i":I
    :goto_5
    move/from16 v19, v18

    .line 256
    .end local v18    # "i":I
    .local v19, "i":I
    move/from16 v20, v2

    move/from16 v2, v19

    if-ge v2, v9, :cond_8

    .line 257
    .end local v19    # "i":I
    .local v2, "i":I
    .restart local v20    # "action":I
    if-ne v2, v5, :cond_6

    .line 256
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    goto :goto_6

    .line 259
    :cond_6
    move/from16 v21, v3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 260
    .local v3, "id2":I
    .restart local v21    # "pointerUp":Z
    move/from16 v22, v4

    iget-object v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 260
    .end local v4    # "skipIndex":I
    .restart local v22    # "skipIndex":I
    invoke-virtual {v4, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    mul-float v4, v4, v15

    .line 261
    .local v4, "x":F
    move/from16 v23, v5

    iget-object v5, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 261
    .end local v5    # "upIndex":I
    .local v23, "upIndex":I
    invoke-virtual {v5, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    mul-float v5, v5, v6

    .line 263
    .local v5, "y":F
    add-float v16, v4, v5

    .line 264
    .local v16, "dot":F
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_7

    .line 265
    move/from16 v24, v3

    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 265
    .end local v3    # "id2":I
    .local v24, "id2":I
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 266
    goto :goto_7

    .line 256
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v16    # "dot":F
    .end local v24    # "id2":I
    :cond_7
    :goto_6
    add-int/lit8 v18, v2, 0x1

    .line 256
    .end local v2    # "i":I
    .restart local v18    # "i":I
    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    goto :goto_5

    .line 269
    .end local v18    # "i":I
    .end local v21    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .end local v23    # "upIndex":I
    .local v3, "pointerUp":Z
    .local v4, "skipIndex":I
    .local v5, "upIndex":I
    :cond_8
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 269
    .end local v3    # "pointerUp":Z
    .end local v4    # "skipIndex":I
    .end local v5    # "upIndex":I
    .restart local v21    # "pointerUp":Z
    .restart local v22    # "skipIndex":I
    .restart local v23    # "upIndex":I
    :goto_7
    goto/16 :goto_a

    .line 239
    .end local v6    # "y1":F
    .end local v14    # "id1":I
    .end local v15    # "x1":F
    .end local v20    # "action":I
    .end local v21    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .end local v23    # "upIndex":I
    .local v2, "action":I
    .restart local v3    # "pointerUp":Z
    .restart local v4    # "skipIndex":I
    :pswitch_2
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    .line 239
    .end local v2    # "action":I
    .end local v3    # "pointerUp":Z
    .end local v4    # "skipIndex":I
    .restart local v20    # "action":I
    .restart local v21    # "pointerUp":Z
    .restart local v22    # "skipIndex":I
    iput v11, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    iput v11, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 240
    iput v12, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    iput v12, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 242
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancelTaps()V

    .line 243
    goto/16 :goto_a

    .line 390
    .end local v20    # "action":I
    .end local v21    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "pointerUp":Z
    .restart local v4    # "skipIndex":I
    :pswitch_3
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    .line 390
    .end local v2    # "action":I
    .end local v3    # "pointerUp":Z
    .end local v4    # "skipIndex":I
    .restart local v20    # "action":I
    .restart local v21    # "pointerUp":Z
    .restart local v22    # "skipIndex":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->cancel()V

    goto/16 :goto_a

    .line 313
    .end local v20    # "action":I
    .end local v21    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "pointerUp":Z
    .restart local v4    # "skipIndex":I
    :pswitch_4
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    .line 313
    .end local v2    # "action":I
    .end local v3    # "pointerUp":Z
    .end local v4    # "skipIndex":I
    .restart local v20    # "action":I
    .restart local v21    # "pointerUp":Z
    .restart local v22    # "skipIndex":I
    iget-boolean v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v2, :cond_9

    .line 314
    goto/16 :goto_a

    .line 316
    :cond_9
    iget v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    sub-float/2addr v2, v11

    .line 317
    .local v2, "scrollX":F
    iget v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    sub-float/2addr v3, v12

    .line 318
    .local v3, "scrollY":F
    iget-boolean v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    if-eqz v4, :cond_a

    .line 320
    iget-object v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v4, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v13, v4

    goto/16 :goto_a

    .line 321
    :cond_a
    iget-boolean v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    if-eqz v4, :cond_d

    .line 322
    iget v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    sub-float v4, v11, v4

    float-to-int v4, v4

    .line 323
    .local v4, "deltaX":I
    iget v6, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    sub-float v6, v12, v6

    float-to-int v6, v6

    .line 324
    .local v6, "deltaY":I
    mul-int v14, v4, v4

    mul-int v15, v6, v6

    add-int/2addr v14, v15

    .line 325
    .local v14, "distance":I
    iget v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    if-le v14, v15, :cond_b

    .line 326
    iget-object v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v5, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v15, v5, v1, v2, v3}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v5

    .line 327
    .end local v13    # "handled":Z
    .local v5, "handled":Z
    iput v11, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 328
    iput v12, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    .line 329
    const/4 v13, 0x0

    iput-boolean v13, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 330
    iget-object v13, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    iget-object v13, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    iget-object v13, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    move v13, v5

    .line 334
    .end local v5    # "handled":Z
    .restart local v13    # "handled":Z
    :cond_b
    iget v5, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    if-le v14, v5, :cond_c

    .line 335
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 337
    .end local v4    # "deltaX":I
    .end local v6    # "deltaY":I
    .end local v14    # "distance":I
    :cond_c
    goto/16 :goto_a

    :cond_d
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_e

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1b

    .line 338
    :cond_e
    iget-object v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v5, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v4, v5, v1, v2, v3}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v13

    .line 339
    iput v11, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 340
    iput v12, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    goto/16 :goto_a

    .line 345
    .end local v20    # "action":I
    .end local v21    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .local v2, "action":I
    .local v3, "pointerUp":Z
    .local v4, "skipIndex":I
    :pswitch_5
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    .line 345
    .end local v2    # "action":I
    .end local v3    # "pointerUp":Z
    .end local v4    # "skipIndex":I
    .restart local v20    # "action":I
    .restart local v21    # "pointerUp":Z
    .restart local v22    # "skipIndex":I
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 346
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 347
    .local v2, "currentUpEvent":Landroid/view/MotionEvent;
    iget-boolean v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    if-eqz v3, :cond_f

    .line 349
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v13, v3

    goto :goto_8

    .line 350
    :cond_f
    iget-boolean v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v3, :cond_10

    .line 351
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    goto :goto_8

    .line 353
    :cond_10
    iget-boolean v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    if-eqz v3, :cond_11

    .line 354
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 355
    iget-boolean v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    if-eqz v3, :cond_13

    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v3, :cond_13

    .line 356
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_8

    .line 360
    :cond_11
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 361
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 362
    .local v5, "pointerId":I
    iget v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v3, v15, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 363
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    .line 364
    .local v4, "velocityY":F
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    .line 366
    .local v6, "velocityX":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iget v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_12

    .line 367
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iget v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_13

    .line 368
    :cond_12
    iget-object v14, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v15, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v14, v15, v1, v6, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v13

    .line 372
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "velocityY":F
    .end local v5    # "pointerId":I
    .end local v6    # "velocityX":F
    :cond_13
    :goto_8
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_14

    .line 373
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 376
    :cond_14
    iput-object v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 377
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_15

    .line 380
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 381
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 383
    :cond_15
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 384
    iput-boolean v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 385
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    goto/16 :goto_a

    .line 272
    .end local v20    # "action":I
    .end local v21    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .local v2, "action":I
    .local v3, "pointerUp":Z
    .local v4, "skipIndex":I
    :pswitch_6
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    .line 272
    .end local v2    # "action":I
    .end local v3    # "pointerUp":Z
    .end local v4    # "skipIndex":I
    .restart local v20    # "action":I
    .restart local v21    # "pointerUp":Z
    .restart local v22    # "skipIndex":I
    iget-object v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_18

    .line 273
    iget-object v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 274
    .local v2, "hadTapMessage":Z
    if-eqz v2, :cond_16

    iget-object v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    :cond_16
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_17

    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_17

    if-eqz v2, :cond_17

    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 276
    invoke-direct {v0, v3, v4, v1}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 279
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 281
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v3, v13

    .line 283
    .end local v13    # "handled":Z
    .local v3, "handled":Z
    iget-object v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v4, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int v13, v3, v4

    .line 283
    .end local v3    # "handled":Z
    .restart local v13    # "handled":Z
    goto :goto_9

    .line 286
    :cond_17
    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 290
    .end local v2    # "hadTapMessage":Z
    :cond_18
    :goto_9
    iput v11, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    iput v11, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 291
    iput v12, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    iput v12, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 292
    iget-object v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_19

    .line 293
    iget-object v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 295
    :cond_19
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 296
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 297
    iput-boolean v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 298
    iput-boolean v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 299
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 300
    iput-boolean v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 302
    iget-boolean v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    if-eqz v2, :cond_1a

    .line 303
    iget-object v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    iget-object v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sget v6, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    int-to-long v14, v6

    add-long v17, v4, v14

    sget v4, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    add-long v14, v17, v4

    invoke-virtual {v2, v3, v14, v15}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 307
    :cond_1a
    iget-object v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 308
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    int-to-long v5, v5

    add-long v14, v3, v5

    .line 307
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v14, v15}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 309
    iget-object v2, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v2, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v13, v2

    .line 310
    nop

    .line 394
    :cond_1b
    :goto_a
    return v13

    nop

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

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .param p1, "isLongpressEnabled"    # Z

    .line 191
    iput-boolean p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    .line 192
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 177
    iput-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 178
    return-void
.end method
