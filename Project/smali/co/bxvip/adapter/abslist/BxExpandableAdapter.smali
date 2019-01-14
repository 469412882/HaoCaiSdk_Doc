.class public abstract Lco/bxvip/adapter/abslist/BxExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BxExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseExpandableListAdapter;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 20
    .local p0, "this":Lco/bxvip/adapter/abslist/BxExpandableAdapter;, "Lco/bxvip/adapter/abslist/BxExpandableAdapter<TT;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 21
    iput-object p2, p0, Lco/bxvip/adapter/abslist/BxExpandableAdapter;->list:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lco/bxvip/adapter/abslist/BxExpandableAdapter;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getChild(II)Ljava/lang/Object;
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 51
    .local p0, "this":Lco/bxvip/adapter/abslist/BxExpandableAdapter;, "Lco/bxvip/adapter/abslist/BxExpandableAdapter<TT;>;"
    int-to-long v0, p2

    return-wide v0
.end method

.method public abstract getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getChildrenCount(I)I
.end method

.method public getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 29
    .local p0, "this":Lco/bxvip/adapter/abslist/BxExpandableAdapter;, "Lco/bxvip/adapter/abslist/BxExpandableAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/BxExpandableAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lco/bxvip/adapter/abslist/BxExpandableAdapter;, "Lco/bxvip/adapter/abslist/BxExpandableAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/BxExpandableAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .line 32
    .local p0, "this":Lco/bxvip/adapter/abslist/BxExpandableAdapter;, "Lco/bxvip/adapter/abslist/BxExpandableAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/BxExpandableAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .line 47
    .local p0, "this":Lco/bxvip/adapter/abslist/BxExpandableAdapter;, "Lco/bxvip/adapter/abslist/BxExpandableAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .line 37
    .local p0, "this":Lco/bxvip/adapter/abslist/BxExpandableAdapter;, "Lco/bxvip/adapter/abslist/BxExpandableAdapter<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->getGroupType(I)I

    move-result v0

    return v0
.end method

.method public abstract getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public hasStableIds()Z
    .locals 1

    .line 55
    .local p0, "this":Lco/bxvip/adapter/abslist/BxExpandableAdapter;, "Lco/bxvip/adapter/abslist/BxExpandableAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isChildSelectable(II)Z
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lco/bxvip/adapter/abslist/BxExpandableAdapter;, "Lco/bxvip/adapter/abslist/BxExpandableAdapter<TT;>;"
    .local p1, "mDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lco/bxvip/adapter/abslist/BxExpandableAdapter;->list:Ljava/util/List;

    .line 26
    return-void
.end method
