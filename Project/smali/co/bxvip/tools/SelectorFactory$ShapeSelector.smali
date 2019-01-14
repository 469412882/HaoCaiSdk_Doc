.class public final Lco/bxvip/tools/SelectorFactory$ShapeSelector;
.super Ljava/lang/Object;
.source "SelectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/tools/SelectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShapeSelector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/tools/SelectorFactory$ShapeSelector$Shape;
    }
.end annotation


# instance fields
.field private hasSetDisabledBgColor:Z

.field private hasSetDisabledStrokeColor:Z

.field private hasSetFocusedBgColor:Z

.field private hasSetFocusedStrokeColor:Z

.field private hasSetPressedBgColor:Z

.field private hasSetPressedStrokeColor:Z

.field private hasSetSelectedBgColor:Z

.field private hasSetSelectedStrokeColor:Z

.field private mCornerRadius:I

.field private mDefaultBgColor:I

.field private mDefaultStrokeColor:I

.field private mDisabledBgColor:I

.field private mDisabledStrokeColor:I

.field private mFocusedBgColor:I

.field private mFocusedStrokeColor:I

.field private mPressedBgColor:I

.field private mPressedStrokeColor:I

.field private mSelectedBgColor:I

.field private mSelectedStrokeColor:I

.field private mShape:I

.field private mStrokeWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetDisabledBgColor:Z

    .line 72
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetPressedBgColor:Z

    .line 73
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetSelectedBgColor:Z

    .line 74
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetFocusedBgColor:Z

    .line 76
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetDisabledStrokeColor:Z

    .line 77
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetPressedStrokeColor:Z

    .line 78
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetSelectedStrokeColor:Z

    .line 79
    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetFocusedStrokeColor:Z

    .line 83
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mShape:I

    .line 84
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDefaultBgColor:I

    .line 85
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDisabledBgColor:I

    .line 86
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mPressedBgColor:I

    .line 87
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mSelectedBgColor:I

    .line 88
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mFocusedBgColor:I

    .line 89
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mStrokeWidth:I

    .line 90
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDefaultStrokeColor:I

    .line 91
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDisabledStrokeColor:I

    .line 92
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mPressedStrokeColor:I

    .line 93
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mSelectedStrokeColor:I

    .line 94
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mFocusedStrokeColor:I

    .line 95
    iput v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mCornerRadius:I

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lco/bxvip/tools/SelectorFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lco/bxvip/tools/SelectorFactory$1;

    .line 50
    invoke-direct {p0}, Lco/bxvip/tools/SelectorFactory$ShapeSelector;-><init>()V

    return-void
.end method

.method private getItemShape(IIIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .param p1, "shape"    # I
    .param p2, "cornerRadius"    # I
    .param p3, "solidColor"    # I
    .param p4, "strokeWidth"    # I
    .param p5, "strokeColor"    # I

    .line 228
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 229
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 230
    invoke-virtual {v0, p4, p5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 231
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 232
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 233
    return-object v0
.end method


# virtual methods
.method public create()Landroid/graphics/drawable/StateListDrawable;
    .locals 11

    .line 188
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 191
    .local v0, "selector":Landroid/graphics/drawable/StateListDrawable;
    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetDisabledBgColor:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetDisabledStrokeColor:Z

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    iget v5, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mShape:I

    iget v6, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mCornerRadius:I

    iget v7, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDisabledBgColor:I

    iget v8, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mStrokeWidth:I

    iget v9, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDisabledStrokeColor:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->getItemShape(IIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 194
    .local v1, "disabledShape":Landroid/graphics/drawable/GradientDrawable;
    new-array v4, v2, [I

    const v5, -0x101009e

    aput v5, v4, v3

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 198
    .end local v1    # "disabledShape":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetPressedBgColor:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetPressedStrokeColor:Z

    if-eqz v1, :cond_3

    .line 199
    :cond_2
    iget v5, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mShape:I

    iget v6, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mCornerRadius:I

    iget v7, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mPressedBgColor:I

    iget v8, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mStrokeWidth:I

    iget v9, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mPressedStrokeColor:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->getItemShape(IIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 201
    .local v1, "pressedShape":Landroid/graphics/drawable/GradientDrawable;
    new-array v4, v2, [I

    const v5, 0x10100a7

    aput v5, v4, v3

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 205
    .end local v1    # "pressedShape":Landroid/graphics/drawable/GradientDrawable;
    :cond_3
    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetSelectedBgColor:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetSelectedStrokeColor:Z

    if-eqz v1, :cond_5

    .line 206
    :cond_4
    iget v5, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mShape:I

    iget v6, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mCornerRadius:I

    iget v7, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mSelectedBgColor:I

    iget v8, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mStrokeWidth:I

    iget v9, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mSelectedStrokeColor:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->getItemShape(IIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 208
    .local v1, "selectedShape":Landroid/graphics/drawable/GradientDrawable;
    new-array v4, v2, [I

    const v5, 0x10100a1

    aput v5, v4, v3

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 212
    .end local v1    # "selectedShape":Landroid/graphics/drawable/GradientDrawable;
    :cond_5
    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetFocusedBgColor:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetFocusedStrokeColor:Z

    if-eqz v1, :cond_7

    .line 213
    :cond_6
    iget v5, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mShape:I

    iget v6, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mCornerRadius:I

    iget v7, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mFocusedBgColor:I

    iget v8, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mStrokeWidth:I

    iget v9, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mFocusedStrokeColor:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->getItemShape(IIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 215
    .local v1, "focusedShape":Landroid/graphics/drawable/GradientDrawable;
    new-array v2, v2, [I

    const v4, 0x101009c

    aput v4, v2, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 219
    .end local v1    # "focusedShape":Landroid/graphics/drawable/GradientDrawable;
    :cond_7
    iget v6, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mShape:I

    iget v7, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mCornerRadius:I

    iget v8, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDefaultBgColor:I

    iget v9, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mStrokeWidth:I

    iget v10, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDefaultStrokeColor:I

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->getItemShape(IIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 221
    .local v1, "defaultShape":Landroid/graphics/drawable/GradientDrawable;
    new-array v2, v3, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 223
    return-object v0
.end method

.method public setCornerRadius(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 0
    .param p1, "radius"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 183
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mCornerRadius:I

    .line 184
    return-object p0
.end method

.method public setDefaultBgColor(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 104
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDefaultBgColor:I

    .line 105
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetDisabledBgColor:Z

    if-nez v0, :cond_0

    .line 106
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDisabledBgColor:I

    .line 107
    :cond_0
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetPressedBgColor:Z

    if-nez v0, :cond_1

    .line 108
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mPressedBgColor:I

    .line 109
    :cond_1
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetSelectedBgColor:Z

    if-nez v0, :cond_2

    .line 110
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mSelectedBgColor:I

    .line 111
    :cond_2
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetFocusedBgColor:Z

    if-nez v0, :cond_3

    .line 112
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mFocusedBgColor:I

    .line 113
    :cond_3
    return-object p0
.end method

.method public setDefaultStrokeColor(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 146
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDefaultStrokeColor:I

    .line 147
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetDisabledStrokeColor:Z

    if-nez v0, :cond_0

    .line 148
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDisabledStrokeColor:I

    .line 149
    :cond_0
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetPressedStrokeColor:Z

    if-nez v0, :cond_1

    .line 150
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mPressedStrokeColor:I

    .line 151
    :cond_1
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetSelectedStrokeColor:Z

    if-nez v0, :cond_2

    .line 152
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mSelectedStrokeColor:I

    .line 153
    :cond_2
    iget-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetFocusedStrokeColor:Z

    if-nez v0, :cond_3

    .line 154
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mFocusedStrokeColor:I

    .line 155
    :cond_3
    return-object p0
.end method

.method public setDisabledBgColor(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 117
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDisabledBgColor:I

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetDisabledBgColor:Z

    .line 119
    return-object p0
.end method

.method public setDisabledStrokeColor(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 159
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mDisabledStrokeColor:I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetDisabledStrokeColor:Z

    .line 161
    return-object p0
.end method

.method public setFocusedBgColor(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 135
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mFocusedBgColor:I

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetPressedBgColor:Z

    .line 137
    return-object p0
.end method

.method public setFocusedStrokeColor(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 177
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mFocusedStrokeColor:I

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetFocusedStrokeColor:Z

    .line 179
    return-object p0
.end method

.method public setPressedBgColor(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 123
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mPressedBgColor:I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetPressedBgColor:Z

    .line 125
    return-object p0
.end method

.method public setPressedStrokeColor(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 165
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mPressedStrokeColor:I

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetPressedStrokeColor:Z

    .line 167
    return-object p0
.end method

.method public setSelectedBgColor(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 129
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mSelectedBgColor:I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetSelectedBgColor:Z

    .line 131
    return-object p0
.end method

.method public setSelectedStrokeColor(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 171
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mSelectedStrokeColor:I

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->hasSetSelectedStrokeColor:Z

    .line 173
    return-object p0
.end method

.method public setShape(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 0
    .param p1, "shape"    # I
        .annotation build Lco/bxvip/tools/SelectorFactory$ShapeSelector$Shape;
        .end annotation
    .end param

    .line 99
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mShape:I

    .line 100
    return-object p0
.end method

.method public setStrokeWidth(I)Lco/bxvip/tools/SelectorFactory$ShapeSelector;
    .locals 0
    .param p1, "width"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 141
    iput p1, p0, Lco/bxvip/tools/SelectorFactory$ShapeSelector;->mStrokeWidth:I

    .line 142
    return-object p0
.end method
