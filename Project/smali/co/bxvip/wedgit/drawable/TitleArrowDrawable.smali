.class public Lco/bxvip/wedgit/drawable/TitleArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TitleArrowDrawable.java"


# instance fields
.field private drawColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mSymbolPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->drawColor:I

    .line 36
    iget-object v0, p0, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->mSymbolPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->mSymbolPaint:Landroid/graphics/Paint;

    .line 38
    :cond_0
    iget-object v0, p0, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->mSymbolPaint:Landroid/graphics/Paint;

    iget v1, p0, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->drawColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->mSymbolPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->mSymbolPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 41
    iget-object v0, p0, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->mSymbolPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-virtual {p0}, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 48
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 49
    .local v1, "cX":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 50
    .local v2, "cY":I
    if-gt v1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    div-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0x3

    .line 51
    .local v3, "mRadius":I
    iget-object v4, p0, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->mSymbolPaint:Landroid/graphics/Paint;

    mul-int/lit8 v5, v3, 0x3

    div-int/lit8 v5, v5, 0x12

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    div-int/lit8 v4, v3, 0x5

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v5, v3, 0x5

    add-int/2addr v4, v5

    int-to-float v6, v4

    int-to-float v7, v2

    div-int/lit8 v4, v3, 0x5

    add-int/2addr v4, v1

    int-to-float v8, v4

    sub-int v4, v2, v3

    int-to-float v9, v4

    iget-object v10, p0, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->mSymbolPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    div-int/lit8 v4, v3, 0x5

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v5, v3, 0x5

    add-int/2addr v4, v5

    int-to-float v6, v4

    int-to-float v7, v2

    div-int/lit8 v4, v3, 0x5

    add-int/2addr v4, v1

    int-to-float v8, v4

    add-int v4, v2, v3

    int-to-float v9, v4

    iget-object v10, p0, Lco/bxvip/wedgit/drawable/TitleArrowDrawable;->mSymbolPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 54
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 68
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 59
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    return-void
.end method
