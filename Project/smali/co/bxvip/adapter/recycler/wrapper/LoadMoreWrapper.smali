.class public Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LoadMoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$OnLoadMoreListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_LOAD_MORE:I = 0x7ffffffd


# instance fields
.field private mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mLoadMoreLayoutId:I

.field private mLoadMoreView:Landroid/view/View;

.field private mOnLoadMoreListener:Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$OnLoadMoreListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 22
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;I)Z
    .locals 1
    .param p0, "x0"    # Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->isShowLoadMore(I)Z

    move-result v0

    return v0
.end method

.method private hasLoadMore()Z
    .locals 1

    .line 27
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mLoadMoreView:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mLoadMoreLayoutId:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isShowLoadMore(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 32
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    invoke-direct {p0}, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->hasLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 95
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 97
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 101
    .local v1, "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 103
    .end local v1    # "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 107
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-direct {p0}, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->hasLoadMore()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 37
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    invoke-direct {p0, p1}, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->isShowLoadMore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const v0, 0x7ffffffd

    return v0

    .line 40
    :cond_0
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 70
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    new-instance v1, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$1;

    invoke-direct {v1, p0}, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$1;-><init>(Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;)V

    invoke-static {v0, p1, v1}, Lco/bxvip/adapter/recycler/utils/WrapperUtils;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;)V

    .line 82
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 59
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    invoke-direct {p0, p2}, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->isShowLoadMore(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mOnLoadMoreListener:Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$OnLoadMoreListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mOnLoadMoreListener:Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$OnLoadMoreListener;

    invoke-interface {v0}, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$OnLoadMoreListener;->onLoadMoreRequested()V

    .line 63
    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 66
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 45
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    const v0, 0x7ffffffd

    if-ne p2, v0, :cond_1

    .line 47
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mLoadMoreView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mLoadMoreView:Landroid/view/View;

    invoke-static {v0, v1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/View;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    move-result-object v0

    .line 48
    .local v0, "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    goto :goto_0

    .line 50
    .end local v0    # "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mLoadMoreLayoutId:I

    invoke-static {v0, p1, v1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    move-result-object v0

    .line 52
    .restart local v0    # "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    :goto_0
    return-object v0

    .line 54
    .end local v0    # "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    :cond_1
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 87
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 89
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->isShowLoadMore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setLoadMoreView(I)Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;
    .locals 0
    .param p1, "layoutId"    # I

    .line 130
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    iput p1, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mLoadMoreLayoutId:I

    .line 131
    return-object p0
.end method

.method public setLoadMoreView(Landroid/view/View;)Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;
    .locals 0
    .param p1, "loadMoreView"    # Landroid/view/View;

    .line 125
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    iput-object p1, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mLoadMoreView:Landroid/view/View;

    .line 126
    return-object p0
.end method

.method public setOnLoadMoreListener(Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$OnLoadMoreListener;)Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;
    .locals 0
    .param p1, "loadMoreListener"    # Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$OnLoadMoreListener;

    .line 118
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;, "Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper<TT;>;"
    if-eqz p1, :cond_0

    .line 119
    iput-object p1, p0, Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper;->mOnLoadMoreListener:Lco/bxvip/adapter/recycler/wrapper/LoadMoreWrapper$OnLoadMoreListener;

    .line 121
    :cond_0
    return-object p0
.end method
