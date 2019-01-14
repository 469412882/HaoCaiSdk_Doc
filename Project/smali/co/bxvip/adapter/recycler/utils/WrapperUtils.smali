.class public Lco/bxvip/adapter/recycler/utils/WrapperUtils;
.super Ljava/lang/Object;
.source "WrapperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;)V
    .locals 4
    .param p0, "innerAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "callback"    # Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;

    .line 14
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 16
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 17
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 18
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .line 19
    .local v1, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v2

    .line 21
    .local v2, "spanSizeLookup":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    new-instance v3, Lco/bxvip/adapter/recycler/utils/WrapperUtils$1;

    invoke-direct {v3, p2, v1, v2}, Lco/bxvip/adapter/recycler/utils/WrapperUtils$1;-><init>(Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 27
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 29
    .end local v1    # "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    .end local v2    # "spanSizeLookup":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    :cond_0
    return-void
.end method

.method public static setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p0, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 32
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 34
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 36
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 38
    .local v1, "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 40
    .end local v1    # "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_0
    return-void
.end method
