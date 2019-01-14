.class final enum Lco/bxvip/skin/attr/SkinAttrType$1;
.super Lco/bxvip/skin/attr/SkinAttrType;
.source "SkinAttrType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/skin/attr/SkinAttrType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "attrType"    # Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lco/bxvip/skin/attr/SkinAttrType;-><init>(Ljava/lang/String;ILjava/lang/String;Lco/bxvip/skin/attr/SkinAttrType$1;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resName"    # Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lco/bxvip/skin/attr/SkinAttrType$1;->getResourceManager()Lco/bxvip/skin/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/bxvip/skin/ResourceManager;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 23
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lco/bxvip/skin/attr/SkinAttrType$1;->getResourceManager()Lco/bxvip/skin/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lco/bxvip/skin/ResourceManager;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 28
    .local v1, "color":I
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v1    # "color":I
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 33
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return-void
.end method
