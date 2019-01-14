.class public Lco/bxvip/wedgit/BxToolIconView;
.super Landroid/widget/ImageView;
.source "BxToolIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;,
        Lco/bxvip/wedgit/BxToolIconView$ViewType;
    }
.end annotation


# static fields
.field private static final PEROID:I = 0x10


# instance fields
.field private arrowDirection:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

.field private circleBackgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private control:I

.field private drawColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private drawColor2:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private isOnDraw:Z

.field private isRunning:Z

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mProgessThread:Ljava/lang/Thread;

.field private mRadius:I

.field private mSymbolPaint:Landroid/graphics/Paint;

.field private mViewCenterX:I

.field private mViewCenterY:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private ovalRect:Landroid/graphics/RectF;

.field private pointFMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private resid:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private speed:I

.field private startAngle:I

.field private swipeAngle:I

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/bxvip/wedgit/BxToolIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const v0, -0x777778

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    const/4 v0, -0x1

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor2:I

    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->circleBackgroundColor:I

    .line 71
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    .line 97
    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->DOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    iput-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->arrowDirection:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    .line 101
    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ViewType;->ARROW:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    iput-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    .line 123
    iput-boolean v0, p0, Lco/bxvip/wedgit/BxToolIconView;->isOnDraw:Z

    .line 124
    iput-boolean v0, p0, Lco/bxvip/wedgit/BxToolIconView;->isRunning:Z

    .line 125
    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->startAngle:I

    .line 127
    const/4 v1, 0x6

    iput v1, p0, Lco/bxvip/wedgit/BxToolIconView;->speed:I

    .line 281
    const/4 v1, 0x0

    iput-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->ovalRect:Landroid/graphics/RectF;

    .line 299
    const/4 v2, 0x1

    iput v2, p0, Lco/bxvip/wedgit/BxToolIconView;->control:I

    .line 331
    iput-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->mProgessThread:Ljava/lang/Thread;

    .line 610
    iput-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 136
    invoke-direct {p0}, Lco/bxvip/wedgit/BxToolIconView;->init()V

    .line 137
    invoke-virtual {p0, v0}, Lco/bxvip/wedgit/BxToolIconView;->setBackgroundColor(I)V

    .line 138
    return-void
.end method

.method static synthetic access$002(Lco/bxvip/wedgit/BxToolIconView;I)I
    .locals 0
    .param p0, "x0"    # Lco/bxvip/wedgit/BxToolIconView;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lco/bxvip/wedgit/BxToolIconView;->control:I

    return p1
.end method

.method private drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "start"    # Landroid/graphics/PointF;
    .param p3, "end"    # Landroid/graphics/PointF;

    .line 293
    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p3, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 294
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v0, v1

    iget v0, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float v4, v0, v1

    iget v0, p3, Landroid/graphics/PointF;->x:F

    .line 295
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v0, v1

    iget v0, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float v6, v0, v1

    iget-object v7, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    .line 294
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 297
    :cond_0
    return-void
.end method

.method private getOvalRect()Landroid/graphics/RectF;
    .locals 6

    .line 284
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->ovalRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 285
    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewWidth:I

    div-int/lit8 v0, v0, 0x5

    .line 286
    .local v0, "d":I
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    iget v4, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewWidth:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewHeight:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->ovalRect:Landroid/graphics/RectF;

    .line 288
    .end local v0    # "d":I
    :cond_0
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->ovalRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method private init()V
    .locals 3

    .line 142
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mCirclePaint:Landroid/graphics/Paint;

    .line 144
    :cond_0
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lco/bxvip/wedgit/BxToolIconView;->circleBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    .line 149
    :cond_1
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 152
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 153
    return-void
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .line 258
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 259
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 260
    .local v1, "specSize":I
    const/16 v2, 0x28

    .line 261
    .local v2, "result":I
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 262
    move v2, v1

    goto :goto_0

    .line 263
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 264
    move v2, v1

    .line 266
    :cond_1
    :goto_0
    return v2
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 271
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 272
    .local v1, "specSize":I
    const/16 v2, 0x28

    .line 273
    .local v2, "result":I
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 274
    move v2, v1

    goto :goto_0

    .line 275
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 276
    move v2, v1

    .line 278
    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public createArrow()Lco/bxvip/wedgit/BxToolIconView;
    .locals 1

    .line 432
    sget-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->ARROW:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    iput-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    .line 433
    const v0, -0x777778

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->circleBackgroundColor:I

    .line 435
    return-object p0
.end method

.method public createCirclePlus()Lco/bxvip/wedgit/BxToolIconView;
    .locals 1

    .line 487
    sget-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->CIRCLE_PLUS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    iput-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    .line 488
    const v0, -0x777778

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    .line 489
    const v0, -0x333334

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor2:I

    .line 490
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->circleBackgroundColor:I

    .line 491
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->draw()V

    .line 492
    return-object p0
.end method

.method public createCircleProgressBar()Lco/bxvip/wedgit/BxToolIconView;
    .locals 1

    .line 509
    sget-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->PROGRESS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    iput-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    .line 510
    const v0, -0x777778

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->circleBackgroundColor:I

    .line 512
    return-object p0
.end method

.method public createFlowerProgressBar()Lco/bxvip/wedgit/BxToolIconView;
    .locals 1

    .line 529
    sget-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->FLOWER_PROGRESS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    iput-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    .line 530
    const/high16 v0, -0x1000000

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    .line 531
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->circleBackgroundColor:I

    .line 532
    return-object p0
.end method

.method public createFork()Lco/bxvip/wedgit/BxToolIconView;
    .locals 1

    .line 450
    sget-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->FORK:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    iput-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    .line 452
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->circleBackgroundColor:I

    .line 453
    return-object p0
.end method

.method public createHook()Lco/bxvip/wedgit/BxToolIconView;
    .locals 1

    .line 468
    sget-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->HOOK:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    iput-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    .line 469
    const/4 v0, -0x1

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->circleBackgroundColor:I

    .line 471
    return-object p0
.end method

.method public createTitleArrow()Lco/bxvip/wedgit/BxToolIconView;
    .locals 1

    .line 411
    sget-object v0, Lco/bxvip/wedgit/BxToolIconView$ViewType;->TITLE_ARROW:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    iput-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    .line 412
    const/4 v0, -0x1

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    .line 413
    sget-object v0, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->LEFT:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    iput-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->arrowDirection:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    .line 414
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->circleBackgroundColor:I

    .line 415
    invoke-direct {p0}, Lco/bxvip/wedgit/BxToolIconView;->init()V

    .line 416
    return-object p0
.end method

.method public draw()V
    .locals 0

    .line 607
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->invalidate()V

    .line 608
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lco/bxvip/wedgit/BxToolIconView;->isRunning:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 188
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->resid:I

    if-gtz v0, :cond_0

    goto/16 :goto_5

    .line 192
    :cond_0
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->circleBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 195
    sget-object v0, Lco/bxvip/wedgit/BxToolIconView$2;->$SwitchMap$co$bxvip$wedgit$BxToolIconView$ViewType:[I

    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    invoke-virtual {v1}, Lco/bxvip/wedgit/BxToolIconView$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 237
    :pswitch_0
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ViewType;->PROGRESS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    if-ne v0, v2, :cond_2

    .line 238
    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->startAngle:I

    div-int/lit16 v0, v0, 0x168

    .line 239
    .local v0, "index":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    .line 240
    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->startAngle:I

    rem-int/lit16 v1, v1, 0x2d0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lco/bxvip/wedgit/BxToolIconView;->swipeAngle:I

    goto :goto_0

    .line 242
    :cond_1
    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->startAngle:I

    rem-int/lit16 v1, v1, 0x2d0

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x168

    iput v1, p0, Lco/bxvip/wedgit/BxToolIconView;->swipeAngle:I

    .line 244
    :goto_0
    invoke-direct {p0}, Lco/bxvip/wedgit/BxToolIconView;->getOvalRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->startAngle:I

    int-to-float v4, v1

    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->swipeAngle:I

    int-to-float v5, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 245
    .end local v0    # "index":I
    goto/16 :goto_4

    .line 246
    :cond_2
    nop

    .line 246
    .local v1, "i":I
    :goto_1
    move v0, v1

    .line 246
    .end local v1    # "i":I
    .local v0, "i":I
    const/16 v1, 0xc

    if-ge v0, v1, :cond_b

    .line 247
    iget-object v2, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lco/bxvip/wedgit/BxToolIconView;->control:I

    add-int/2addr v3, v4

    rem-int/2addr v3, v1

    mul-int/lit16 v3, v3, 0xff

    div-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 248
    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterX:I

    int-to-float v3, v1

    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterY:I

    iget v2, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterX:I

    int-to-float v5, v1

    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterY:I

    iget v2, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v7, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 249
    const/high16 v1, 0x41f00000    # 30.0f

    iget v2, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterY:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 246
    add-int/lit8 v1, v0, 0x1

    .line 246
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 232
    .end local v1    # "i":I
    :pswitch_1
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->LEFT:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->DOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0, v1}, Lco/bxvip/wedgit/BxToolIconView;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 233
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->DOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->RIGHTUP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0, v1}, Lco/bxvip/wedgit/BxToolIconView;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 234
    goto/16 :goto_4

    .line 228
    :pswitch_2
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->LEFTUP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->RIGHTDOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0, v1}, Lco/bxvip/wedgit/BxToolIconView;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 229
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->LEFTDOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->RIGHTUP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0, v1}, Lco/bxvip/wedgit/BxToolIconView;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 230
    goto/16 :goto_4

    .line 218
    :pswitch_3
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor2:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x12

    .line 220
    .local v0, "d":I
    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 221
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v1, v0

    int-to-float v2, v0

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewWidth:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v5, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewHeight:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {v4, v1, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 222
    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    iget v2, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    iget v2, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->LEFT:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v3, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->RIGHT:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1, v2}, Lco/bxvip/wedgit/BxToolIconView;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 225
    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->DOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v3, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->UP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1, v2}, Lco/bxvip/wedgit/BxToolIconView;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 226
    goto/16 :goto_4

    .line 199
    .end local v0    # "d":I
    :pswitch_4
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ViewType;->ARROW:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    if-ne v0, v2, :cond_3

    .line 200
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->UP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v2, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v3, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->LEFT:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0, v2}, Lco/bxvip/wedgit/BxToolIconView;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 201
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->UP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v2, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v3, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->DOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0, v2}, Lco/bxvip/wedgit/BxToolIconView;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 202
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->UP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v2, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v3, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->RIGHT:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0, v2}, Lco/bxvip/wedgit/BxToolIconView;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_2

    .line 204
    :cond_3
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    iget v2, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x12

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v3, v0

    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x5

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v4, v0

    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    .line 206
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v6, v0

    iget-object v7, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    .line 205
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 207
    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v3, v0

    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x5

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v4, v0

    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    .line 208
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v6, v0

    iget-object v7, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    .line 207
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 211
    :goto_2
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->arrowDirection:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    sget-object v2, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->UP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    if-ne v0, v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->arrowDirection:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->RIGHTUP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    if-ne v0, v1, :cond_5

    const/16 v1, 0x2d

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->arrowDirection:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->RIGHT:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    if-ne v0, v1, :cond_6

    const/16 v1, 0x5a

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->arrowDirection:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->RIGHTDOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    if-ne v0, v1, :cond_7

    const/16 v1, 0x87

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->arrowDirection:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->DOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    if-ne v0, v1, :cond_8

    const/16 v1, 0xb4

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->arrowDirection:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->LEFTDOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    if-ne v0, v1, :cond_9

    const/16 v1, 0xe1

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->arrowDirection:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->LEFT:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    if-ne v0, v1, :cond_a

    const/16 v1, 0x10e

    goto :goto_3

    :cond_a
    const/16 v1, 0x13b

    :goto_3
    move v0, v1

    .line 214
    .local v0, "rotation":I
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lco/bxvip/wedgit/BxToolIconView;->setRotation(F)V

    .line 215
    nop

    .line 255
    .end local v0    # "rotation":I
    :cond_b
    :goto_4
    return-void

    .line 190
    :cond_c
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 157
    invoke-direct {p0, p1}, Lco/bxvip/wedgit/BxToolIconView;->measureWidth(I)I

    move-result v0

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewWidth:I

    .line 158
    invoke-direct {p0, p2}, Lco/bxvip/wedgit/BxToolIconView;->measureHeight(I)I

    move-result v0

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewHeight:I

    .line 159
    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterX:I

    .line 160
    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterY:I

    .line 162
    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterX:I

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 163
    .local v0, "tempX":I
    iget v1, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewCenterX:I

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 164
    .local v1, "tempY":I
    if-gt v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    .line 165
    iget-object v2, p0, Lco/bxvip/wedgit/BxToolIconView;->mSymbolPaint:Landroid/graphics/Paint;

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x12

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget v2, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewWidth:I

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewHeight:I

    invoke-virtual {p0, v2, v3}, Lco/bxvip/wedgit/BxToolIconView;->setMeasuredDimension(II)V

    .line 167
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 171
    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mViewWidth:I

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->LEFT:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->LEFTUP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->LEFTDOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->UP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->RIGHT:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget v4, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->RIGHTUP:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget v4, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->RIGHTDOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget v4, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->pointFMap:Ljava/util/Map;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;->DOWN:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lco/bxvip/wedgit/BxToolIconView;->mRadius:I

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 183
    return-void
.end method

.method public run()V
    .locals 8

    .line 303
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$ViewType;->PROGRESS:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    if-ne v0, v1, :cond_1

    .line 305
    :goto_0
    iget-boolean v0, p0, Lco/bxvip/wedgit/BxToolIconView;->isOnDraw:Z

    if-eqz v0, :cond_1

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/wedgit/BxToolIconView;->isRunning:Z

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    .local v0, "startTime":J
    iget v2, p0, Lco/bxvip/wedgit/BxToolIconView;->startAngle:I

    iget v3, p0, Lco/bxvip/wedgit/BxToolIconView;->speed:I

    add-int/2addr v2, v3

    iput v2, p0, Lco/bxvip/wedgit/BxToolIconView;->startAngle:I

    .line 309
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->postInvalidate()V

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    .line 311
    .local v4, "time":J
    const-wide/16 v2, 0x10

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 313
    sub-long v6, v2, v4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    goto :goto_1

    .line 314
    :catch_0
    move-exception v2

    .line 315
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 318
    .end local v0    # "startTime":J
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "time":J
    :cond_0
    :goto_1
    goto :goto_0

    .line 320
    :cond_1
    return-void
.end method

.method public setArrowDirection(Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;)Lco/bxvip/wedgit/BxToolIconView;
    .locals 0
    .param p1, "arrowDirection"    # Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    .line 597
    iput-object p1, p0, Lco/bxvip/wedgit/BxToolIconView;->arrowDirection:Lco/bxvip/wedgit/BxToolIconView$ArrowDirection;

    .line 598
    return-object p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 616
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 617
    iput-object p1, p0, Lco/bxvip/wedgit/BxToolIconView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 618
    const/4 v0, 0x1

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->resid:I

    .line 619
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->draw()V

    .line 620
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 631
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    iput-object p1, p0, Lco/bxvip/wedgit/BxToolIconView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 633
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->draw()V

    .line 634
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0
    .param p1, "resid"    # I

    .line 624
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 625
    iput p1, p0, Lco/bxvip/wedgit/BxToolIconView;->resid:I

    .line 626
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->draw()V

    .line 627
    return-void
.end method

.method public setCircleBackgroundColor(I)Lco/bxvip/wedgit/BxToolIconView;
    .locals 0
    .param p1, "circleBackgroundColor"    # I

    .line 586
    iput p1, p0, Lco/bxvip/wedgit/BxToolIconView;->circleBackgroundColor:I

    .line 587
    return-object p0
.end method

.method public setDrawColor(I)Lco/bxvip/wedgit/BxToolIconView;
    .locals 0
    .param p1, "drawColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 542
    iput p1, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    .line 543
    return-object p0
.end method

.method public setDrawColor2(I)Lco/bxvip/wedgit/BxToolIconView;
    .locals 0
    .param p1, "drawColor2"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 564
    iput p1, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor2:I

    .line 565
    return-object p0
.end method

.method public setDrawColor2Res(I)Lco/bxvip/wedgit/BxToolIconView;
    .locals 0
    .param p1, "drawColor2"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 575
    iput p1, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor2:I

    .line 576
    return-object p0
.end method

.method public setDrawColorRes(I)Lco/bxvip/wedgit/BxToolIconView;
    .locals 1
    .param p1, "drawColor"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 553
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->drawColor:I

    .line 554
    return-object p0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 638
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    iput-object p1, p0, Lco/bxvip/wedgit/BxToolIconView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 640
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->draw()V

    .line 641
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 645
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 646
    iget v0, p0, Lco/bxvip/wedgit/BxToolIconView;->resid:I

    iput v0, p0, Lco/bxvip/wedgit/BxToolIconView;->resid:I

    .line 647
    invoke-virtual {p0}, Lco/bxvip/wedgit/BxToolIconView;->draw()V

    .line 648
    return-void
.end method

.method public setProgressSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .line 328
    iput p1, p0, Lco/bxvip/wedgit/BxToolIconView;->speed:I

    .line 329
    return-void
.end method

.method public startProgressRun()V
    .locals 4

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/wedgit/BxToolIconView;->isOnDraw:Z

    .line 340
    sget-object v1, Lco/bxvip/wedgit/BxToolIconView$2;->$SwitchMap$co$bxvip$wedgit$BxToolIconView$ViewType:[I

    iget-object v2, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    invoke-virtual {v2}, Lco/bxvip/wedgit/BxToolIconView$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mProgessThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mProgessThread:Ljava/lang/Thread;

    .line 345
    :cond_0
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mProgessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 346
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mProgessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    .line 351
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 352
    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 354
    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 355
    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 356
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lco/bxvip/wedgit/BxToolIconView$1;

    invoke-direct {v1, p0}, Lco/bxvip/wedgit/BxToolIconView$1;-><init>(Lco/bxvip/wedgit/BxToolIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 364
    :cond_1
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 367
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xc
        0x1
    .end array-data
.end method

.method public stopProgressRun()V
    .locals 2

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/wedgit/BxToolIconView;->isOnDraw:Z

    .line 374
    sget-object v0, Lco/bxvip/wedgit/BxToolIconView$2;->$SwitchMap$co$bxvip$wedgit$BxToolIconView$ViewType:[I

    iget-object v1, p0, Lco/bxvip/wedgit/BxToolIconView;->viewType:Lco/bxvip/wedgit/BxToolIconView$ViewType;

    invoke-virtual {v1}, Lco/bxvip/wedgit/BxToolIconView$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 381
    :pswitch_0
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mProgessThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mProgessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->mProgessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 376
    :pswitch_1
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 386
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
