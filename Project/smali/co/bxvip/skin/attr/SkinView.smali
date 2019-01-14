.class public Lco/bxvip/skin/attr/SkinView;
.super Ljava/lang/Object;
.source "SkinView.java"


# instance fields
.field public attrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/bxvip/skin/attr/SkinAttr;",
            ">;"
        }
    .end annotation
.end field

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lco/bxvip/skin/attr/SkinAttr;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p2, "skinAttrs":Ljava/util/List;, "Ljava/util/List<Lco/bxvip/skin/attr/SkinAttr;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lco/bxvip/skin/attr/SkinView;->view:Landroid/view/View;

    .line 17
    iput-object p2, p0, Lco/bxvip/skin/attr/SkinView;->attrs:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 22
    iget-object v0, p0, Lco/bxvip/skin/attr/SkinView;->view:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lco/bxvip/skin/attr/SkinView;->attrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/bxvip/skin/attr/SkinAttr;

    .line 25
    .local v1, "attr":Lco/bxvip/skin/attr/SkinAttr;
    iget-object v2, p0, Lco/bxvip/skin/attr/SkinView;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Lco/bxvip/skin/attr/SkinAttr;->apply(Landroid/view/View;)V

    .line 26
    .end local v1    # "attr":Lco/bxvip/skin/attr/SkinAttr;
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method
