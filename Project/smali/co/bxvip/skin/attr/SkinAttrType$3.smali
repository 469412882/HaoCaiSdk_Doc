.class final enum Lco/bxvip/skin/attr/SkinAttrType$3;
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

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lco/bxvip/skin/attr/SkinAttrType;-><init>(Ljava/lang/String;ILjava/lang/String;Lco/bxvip/skin/attr/SkinAttrType$1;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resName"    # Ljava/lang/String;

    .line 44
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lco/bxvip/skin/attr/SkinAttrType$3;->getResourceManager()Lco/bxvip/skin/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/bxvip/skin/ResourceManager;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 46
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method
