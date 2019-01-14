.class public final Lco/bxvip/tools/SelectorFactory$GeneralSelector;
.super Ljava/lang/Object;
.source "SelectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/tools/SelectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneralSelector"
.end annotation


# instance fields
.field private hasSetDisabledDrawable:Z

.field private hasSetFocusedDrawable:Z

.field private hasSetPressedDrawable:Z

.field private hasSetSelectedDrawable:Z

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDisabledDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetDisabledDrawable:Z

    .line 330
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetPressedDrawable:Z

    .line 331
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetSelectedDrawable:Z

    .line 332
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetFocusedDrawable:Z

    .line 335
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 336
    return-void
.end method

.method synthetic constructor <init>(Lco/bxvip/tools/SelectorFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lco/bxvip/tools/SelectorFactory$1;

    .line 321
    invoke-direct {p0}, Lco/bxvip/tools/SelectorFactory$GeneralSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 376
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 377
    .local v0, "selector":Landroid/graphics/drawable/StateListDrawable;
    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetDisabledDrawable:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 378
    new-array v1, v2, [I

    const v4, -0x101009e

    aput v4, v1, v3

    iget-object v4, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mDisabledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 379
    :cond_0
    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetPressedDrawable:Z

    if-eqz v1, :cond_1

    .line 380
    new-array v1, v2, [I

    const v4, 0x10100a7

    aput v4, v1, v3

    iget-object v4, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 381
    :cond_1
    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetSelectedDrawable:Z

    if-eqz v1, :cond_2

    .line 382
    new-array v1, v2, [I

    const v4, 0x10100a1

    aput v4, v1, v3

    iget-object v4, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 383
    :cond_2
    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetFocusedDrawable:Z

    if-eqz v1, :cond_3

    .line 384
    new-array v1, v2, [I

    const v2, 0x101009c

    aput v2, v1, v3

    iget-object v2, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 385
    :cond_3
    new-array v1, v3, [I

    iget-object v2, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 386
    return-object v0
.end method

.method public setDefaultDrawable(Landroid/content/Context;I)Lco/bxvip/tools/SelectorFactory$GeneralSelector;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 391
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)Lco/bxvip/tools/SelectorFactory$GeneralSelector;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)Lco/bxvip/tools/SelectorFactory$GeneralSelector;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 339
    iput-object p1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetDisabledDrawable:Z

    if-nez v0, :cond_0

    .line 341
    iput-object p1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mDisabledDrawable:Landroid/graphics/drawable/Drawable;

    .line 342
    :cond_0
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetPressedDrawable:Z

    if-nez v0, :cond_1

    .line 343
    iput-object p1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 344
    :cond_1
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetSelectedDrawable:Z

    if-nez v0, :cond_2

    .line 345
    iput-object p1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    :cond_2
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetFocusedDrawable:Z

    if-nez v0, :cond_3

    .line 347
    iput-object p1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 348
    :cond_3
    return-object p0
.end method

.method public setDisabledDrawable(Landroid/content/Context;I)Lco/bxvip/tools/SelectorFactory$GeneralSelector;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 396
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->setDisabledDrawable(Landroid/graphics/drawable/Drawable;)Lco/bxvip/tools/SelectorFactory$GeneralSelector;

    move-result-object v0

    return-object v0
.end method

.method public setDisabledDrawable(Landroid/graphics/drawable/Drawable;)Lco/bxvip/tools/SelectorFactory$GeneralSelector;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 352
    iput-object p1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mDisabledDrawable:Landroid/graphics/drawable/Drawable;

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetDisabledDrawable:Z

    .line 354
    return-object p0
.end method

.method public setFocusedDrawable(Landroid/content/Context;I)Lco/bxvip/tools/SelectorFactory$GeneralSelector;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 411
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->setFocusedDrawable(Landroid/graphics/drawable/Drawable;)Lco/bxvip/tools/SelectorFactory$GeneralSelector;

    move-result-object v0

    return-object v0
.end method

.method public setFocusedDrawable(Landroid/graphics/drawable/Drawable;)Lco/bxvip/tools/SelectorFactory$GeneralSelector;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 370
    iput-object p1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetFocusedDrawable:Z

    .line 372
    return-object p0
.end method

.method public setPressedDrawable(Landroid/content/Context;I)Lco/bxvip/tools/SelectorFactory$GeneralSelector;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 401
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->setPressedDrawable(Landroid/graphics/drawable/Drawable;)Lco/bxvip/tools/SelectorFactory$GeneralSelector;

    move-result-object v0

    return-object v0
.end method

.method public setPressedDrawable(Landroid/graphics/drawable/Drawable;)Lco/bxvip/tools/SelectorFactory$GeneralSelector;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 358
    iput-object p1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetPressedDrawable:Z

    .line 360
    return-object p0
.end method

.method public setSelectedDrawable(Landroid/content/Context;I)Lco/bxvip/tools/SelectorFactory$GeneralSelector;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 406
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->setSelectedDrawable(Landroid/graphics/drawable/Drawable;)Lco/bxvip/tools/SelectorFactory$GeneralSelector;

    move-result-object v0

    return-object v0
.end method

.method public setSelectedDrawable(Landroid/graphics/drawable/Drawable;)Lco/bxvip/tools/SelectorFactory$GeneralSelector;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 364
    iput-object p1, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$GeneralSelector;->hasSetSelectedDrawable:Z

    .line 366
    return-object p0
.end method
