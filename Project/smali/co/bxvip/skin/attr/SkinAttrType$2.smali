.class final enum Lco/bxvip/skin/attr/SkinAttrType$2;
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

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lco/bxvip/skin/attr/SkinAttrType;-><init>(Ljava/lang/String;ILjava/lang/String;Lco/bxvip/skin/attr/SkinAttrType$1;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resName"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lco/bxvip/skin/attr/SkinAttrType$2;->getResourceManager()Lco/bxvip/skin/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/bxvip/skin/ResourceManager;->getColorStateList(Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 38
    .local v0, "colorList":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 40
    return-void
.end method
