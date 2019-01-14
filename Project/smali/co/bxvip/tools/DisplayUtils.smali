.class public Lco/bxvip/tools/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .line 52
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .line 61
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultHeightDip"    # I

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "res":I
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 22
    :try_start_0
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 23
    .local v1, "window":Landroid/view/Window;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 24
    .local v2, "rectangle":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 25
    iget v3, v2, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 28
    .end local v1    # "window":Landroid/view/Window;
    .end local v2    # "rectangle":Landroid/graphics/Rect;
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 30
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 33
    .local v2, "obj":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 34
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 36
    .local v4, "x":I
    :try_start_1
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v1, v5

    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 38
    const-string v5, "status_bar_height"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v3, v5

    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v5

    .line 43
    goto :goto_1

    .line 41
    :catch_1
    move-exception v5

    .line 42
    .local v5, "e1":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "x":I
    .end local v5    # "e1":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 46
    invoke-static {p0, p1}, Lco/bxvip/tools/DisplayUtils;->dip2px(Landroid/content/Context;I)I

    move-result v0

    .line 48
    :cond_2
    return v0
.end method
