.class public Lco/bxvip/skin/attr/SkinAttr;
.super Ljava/lang/Object;
.source "SkinAttr.java"


# instance fields
.field public attrType:Lco/bxvip/skin/attr/SkinAttrType;

.field public resName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lco/bxvip/skin/attr/SkinAttrType;Ljava/lang/String;)V
    .locals 0
    .param p1, "attrType"    # Lco/bxvip/skin/attr/SkinAttrType;
    .param p2, "resName"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lco/bxvip/skin/attr/SkinAttr;->resName:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lco/bxvip/skin/attr/SkinAttr;->attrType:Lco/bxvip/skin/attr/SkinAttrType;

    .line 16
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 19
    iget-object v0, p0, Lco/bxvip/skin/attr/SkinAttr;->attrType:Lco/bxvip/skin/attr/SkinAttrType;

    iget-object v1, p0, Lco/bxvip/skin/attr/SkinAttr;->resName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lco/bxvip/skin/attr/SkinAttrType;->apply(Landroid/view/View;Ljava/lang/String;)V

    .line 20
    return-void
.end method
