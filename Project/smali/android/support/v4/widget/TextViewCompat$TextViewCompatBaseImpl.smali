.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatBaseImpl"
.end annotation


# static fields
.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompatBase"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v0, v1

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "TextViewCompatBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " field."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-object v0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .locals 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "TextViewCompatBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve value of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 193
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 194
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 196
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 186
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 187
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 189
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 179
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 180
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 182
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 200
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 201
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 172
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 173
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeTextType()I

    move-result v0

    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLines(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 101
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 102
    const-string v0, "mMaxMode"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeField:Ljava/lang/reflect/Field;

    .line 103
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeFieldFetched:Z

    .line 105
    :cond_0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeField:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 107
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumFieldFetched:Z

    if-nez v0, :cond_1

    .line 108
    const-string v0, "mMaximum"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumField:Ljava/lang/reflect/Field;

    .line 109
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumFieldFetched:Z

    .line 111
    :cond_1
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 112
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumField:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    return v0

    .line 115
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getMinLines(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 119
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 120
    const-string v0, "mMinMode"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeField:Ljava/lang/reflect/Field;

    .line 121
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeFieldFetched:Z

    .line 123
    :cond_0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeField:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 125
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumFieldFetched:Z

    if-nez v0, :cond_1

    .line 126
    const-string v0, "mMinimum"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumField:Ljava/lang/reflect/Field;

    .line 127
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumFieldFetched:Z

    .line 129
    :cond_1
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 130
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumField:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    return v0

    .line 133
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "autoSizeMinTextSize"    # I
    .param p3, "autoSizeMaxTextSize"    # I
    .param p4, "autoSizeStepGranularity"    # I
    .param p5, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 157
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 158
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0, p2, p3, p4, p5}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 161
    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "presetSizes"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 165
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 166
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 169
    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "autoSizeTextType"    # I

    .line 146
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 147
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0, p2}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "top"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "end"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5, "bottom"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 77
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 78
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void
.end method

.method public setTextAppearance(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 138
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 139
    return-void
.end method
