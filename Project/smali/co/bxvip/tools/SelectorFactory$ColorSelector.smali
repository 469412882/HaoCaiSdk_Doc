.class public final Lco/bxvip/tools/SelectorFactory$ColorSelector;
.super Ljava/lang/Object;
.source "SelectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/tools/SelectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorSelector"
.end annotation


# instance fields
.field private hasSetDisabledColor:Z

.field private hasSetFocusedColor:Z

.field private hasSetPressedColor:Z

.field private hasSetSelectedColor:Z

.field private mDefaultColor:I

.field private mDisabledColor:I

.field private mFocusedColor:I

.field private mPressedColor:I

.field private mSelectedColor:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetDisabledColor:Z

    .line 250
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetPressedColor:Z

    .line 251
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetSelectedColor:Z

    .line 252
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetFocusedColor:Z

    .line 255
    const/high16 v0, -0x1000000

    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mDefaultColor:I

    .line 256
    const v1, -0x777778

    iput v1, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mDisabledColor:I

    .line 257
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mPressedColor:I

    .line 258
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mSelectedColor:I

    .line 259
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mFocusedColor:I

    .line 260
    return-void
.end method

.method synthetic constructor <init>(Lco/bxvip/tools/SelectorFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lco/bxvip/tools/SelectorFactory$1;

    .line 241
    invoke-direct {p0}, Lco/bxvip/tools/SelectorFactory$ColorSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Landroid/content/res/ColorStateList;
    .locals 9

    .line 300
    const/4 v0, 0x5

    new-array v1, v0, [I

    iget-boolean v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetDisabledColor:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mDisabledColor:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mDefaultColor:I

    :goto_0
    const/4 v3, 0x0

    aput v2, v1, v3

    iget-boolean v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetPressedColor:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mPressedColor:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mDefaultColor:I

    :goto_1
    const/4 v4, 0x1

    aput v2, v1, v4

    iget-boolean v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetSelectedColor:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mSelectedColor:I

    goto :goto_2

    :cond_2
    iget v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mDefaultColor:I

    :goto_2
    const/4 v5, 0x2

    aput v2, v1, v5

    iget-boolean v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetFocusedColor:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mFocusedColor:I

    goto :goto_3

    :cond_3
    iget v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mDefaultColor:I

    :goto_3
    const/4 v6, 0x3

    aput v2, v1, v6

    iget v2, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mDefaultColor:I

    const/4 v7, 0x4

    aput v2, v1, v7

    .line 307
    .local v1, "colors":[I
    new-array v0, v0, [[I

    .line 308
    .local v0, "states":[[I
    new-array v2, v4, [I

    const v8, -0x101009e

    aput v8, v2, v3

    aput-object v2, v0, v3

    .line 309
    new-array v2, v4, [I

    const v8, 0x10100a7

    aput v8, v2, v3

    aput-object v2, v0, v4

    .line 310
    new-array v2, v4, [I

    const v8, 0x10100a1

    aput v8, v2, v3

    aput-object v2, v0, v5

    .line 311
    new-array v2, v4, [I

    const v4, 0x101009c

    aput v4, v2, v3

    aput-object v2, v0, v6

    .line 312
    new-array v2, v3, [I

    aput-object v2, v0, v7

    .line 313
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public setDefaultColor(I)Lco/bxvip/tools/SelectorFactory$ColorSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 263
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mDefaultColor:I

    .line 264
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetDisabledColor:Z

    if-nez v0, :cond_0

    .line 265
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mDisabledColor:I

    .line 266
    :cond_0
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetPressedColor:Z

    if-nez v0, :cond_1

    .line 267
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mPressedColor:I

    .line 268
    :cond_1
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetSelectedColor:Z

    if-nez v0, :cond_2

    .line 269
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mSelectedColor:I

    .line 270
    :cond_2
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetFocusedColor:Z

    if-nez v0, :cond_3

    .line 271
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mFocusedColor:I

    .line 272
    :cond_3
    return-object p0
.end method

.method public setDisabledColor(I)Lco/bxvip/tools/SelectorFactory$ColorSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 276
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mDisabledColor:I

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetDisabledColor:Z

    .line 278
    return-object p0
.end method

.method public setFocusedColor(I)Lco/bxvip/tools/SelectorFactory$ColorSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 294
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mFocusedColor:I

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetFocusedColor:Z

    .line 296
    return-object p0
.end method

.method public setPressedColor(I)Lco/bxvip/tools/SelectorFactory$ColorSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 282
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mPressedColor:I

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetPressedColor:Z

    .line 284
    return-object p0
.end method

.method public setSelectedColor(I)Lco/bxvip/tools/SelectorFactory$ColorSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 288
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->mSelectedColor:I

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ColorSelector;->hasSetSelectedColor:Z

    .line 290
    return-object p0
.end method
