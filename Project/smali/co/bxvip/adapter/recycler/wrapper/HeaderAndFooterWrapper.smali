.class public Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeaderAndFooterWrapper.java"


# annotations
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
.field private static final BASE_ITEM_TYPE_FOOTER:I = 0x30d40

.field private static final BASE_ITEM_TYPE_HEADER:I = 0x186a0


# instance fields
.field private mFootViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 21
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 16
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 17
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 22
    iput-object p1, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;

    .line 12
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method static synthetic access$100(Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;

    .line 12
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method private getRealItemCount()I
    .locals 1

    .line 49
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method private isFooterViewPos(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 101
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-virtual {p0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v0

    invoke-direct {p0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->getRealItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHeaderViewPos(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 97
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-virtual {p0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addFootView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 110
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v1, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 111
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 106
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v1, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 107
    return-void
.end method

.method public clearFooterView()V
    .locals 1

    .line 134
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 135
    return-void
.end method

.method public clearHeaderView()V
    .locals 1

    .line 130
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 131
    return-void
.end method

.method public getFootersCount()I
    .locals 1

    .line 142
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 138
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 66
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-virtual {p0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->getFootersCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->getRealItemCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .line 40
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-direct {p0, p1}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    return v0

    .line 42
    :cond_0
    invoke-direct {p0, p1}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-direct {p0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->getRealItemCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    return v0

    .line 45
    :cond_1
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 71
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    new-instance v1, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper$1;

    invoke-direct {v1, p0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper$1;-><init>(Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;)V

    invoke-static {v0, p1, v1}, Lco/bxvip/adapter/recycler/utils/WrapperUtils;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;)V

    .line 85
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 55
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    invoke-direct {p0, p2}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-direct {p0, p2}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->getHeadersCount()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 62
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 27
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/View;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    move-result-object v0

    .line 29
    .local v0, "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    return-object v0

    .line 31
    .end local v0    # "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    :cond_0
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/View;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    move-result-object v0

    .line 33
    .restart local v0    # "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    return-object v0

    .line 35
    .end local v0    # "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    :cond_1
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 89
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 90
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 91
    .local v0, "position":I
    invoke-direct {p0, v0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->isHeaderViewPos(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->isFooterViewPos(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    invoke-static {p1}, Lco/bxvip/adapter/recycler/utils/WrapperUtils;->setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 94
    :cond_1
    return-void
.end method

.method public removeFooterView(I)V
    .locals 1
    .param p1, "position"    # I

    .line 123
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    :try_start_0
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 127
    :goto_0
    return-void
.end method

.method public removeHeaderView(I)V
    .locals 1
    .param p1, "position"    # I

    .line 115
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;, "Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper<TT;>;"
    :try_start_0
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/HeaderAndFooterWrapper;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 119
    :goto_0
    return-void
.end method
