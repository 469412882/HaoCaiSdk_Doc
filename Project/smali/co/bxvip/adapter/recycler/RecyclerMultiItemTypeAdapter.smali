.class public Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerMultiItemTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mItemViewDelegateManager:Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;

.field protected mOnItemClickListener:Lco/bxvip/adapter/recycler/base/OnItemClick;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    .line 37
    new-instance v0, Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;

    invoke-direct {v0}, Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;-><init>()V

    iput-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;

    .line 38
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->addData(ILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method public addData(ILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 140
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->notifyItemInserted(I)V

    .line 141
    return-void
.end method

.method public addData(ILjava/util/Collection;)V
    .locals 1
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    .local p2, "newData":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 177
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->notifyItemRangeInserted(II)V

    .line 178
    return-void
.end method

.method public addData(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->notifyItemInserted(I)V

    .line 149
    return-void
.end method

.method public addData(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 186
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    .local p1, "newData":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->notifyItemRangeInserted(II)V

    .line 188
    return-void
.end method

.method public addItemViewDelegate(ILco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate;)Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;
    .locals 1
    .param p1, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate<",
            "TT;>;)",
            "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    .local p2, "itemViewDelegate":Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate;, "Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;

    invoke-virtual {v0, p1, p2}, Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;->addDelegate(ILco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate;)Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;

    .line 197
    return-object p0
.end method

.method public addItemViewDelegate(Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate;)Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate<",
            "TT;>;)",
            "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    .local p1, "itemViewDelegate":Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate;, "Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;

    invoke-virtual {v0, p1}, Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;->addDelegate(Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate;)Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;

    .line 192
    return-object p0
.end method

.method public convert(Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;Ljava/lang/Object;)V
    .locals 2
    .param p1, "holder"    # Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;",
            "TT;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;

    invoke-virtual {p1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;->convert(Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;Ljava/lang/Object;I)V

    .line 63
    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 101
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 102
    .local v0, "itemCount":I
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 42
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    invoke-virtual {p0}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->useItemViewDelegateManager()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0

    .line 43
    :cond_0
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;

    iget-object v1, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;->getItemViewType(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected isEnabled(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .line 66
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    check-cast p1, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->onBindViewHolder(Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .param p2, "position"    # I

    .line 96
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->convert(Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 49
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;

    invoke-virtual {v0, p2}, Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;->getItemViewDelegate(I)Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate;

    move-result-object v0

    .line 50
    .local v0, "itemViewDelegate":Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate;
    invoke-interface {v0}, Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate;->getItemViewLayoutId()I

    move-result v1

    .line 51
    .local v1, "layoutId":I
    iget-object v2, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    move-result-object v2

    .line 52
    .local v2, "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    invoke-virtual {v2}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->onViewHolderCreated(Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;Landroid/view/View;)V

    .line 53
    invoke-virtual {p0, p1, v2, p2}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->setListener(Landroid/view/ViewGroup;Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;I)V

    .line 54
    return-object v2
.end method

.method public onViewHolderCreated(Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;Landroid/view/View;)V
    .locals 0
    .param p1, "holder"    # Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .param p2, "itemView"    # Landroid/view/View;

    .line 59
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 157
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->notifyItemRemoved(I)V

    .line 159
    return-void
.end method

.method public setData(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->notifyItemChanged(I)V

    .line 167
    return-void
.end method

.method protected setListener(Landroid/view/ViewGroup;Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;I)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewHolder"    # Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    .param p3, "viewType"    # I

    .line 71
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    invoke-virtual {p0, p3}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p2}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;

    invoke-direct {v1, p0, p2}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$1;-><init>(Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p2}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;

    invoke-direct {v1, p0, p2}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter$2;-><init>(Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mData:Ljava/util/List;

    .line 117
    invoke-virtual {p0}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method

.method public setOnItemClickListener(Lco/bxvip/adapter/recycler/base/OnItemClick;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lco/bxvip/adapter/recycler/base/OnItemClick;

    .line 205
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    iput-object p1, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mOnItemClickListener:Lco/bxvip/adapter/recycler/base/OnItemClick;

    .line 206
    return-void
.end method

.method protected useItemViewDelegateManager()Z
    .locals 1

    .line 201
    .local p0, "this":Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;, "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;

    invoke-virtual {v0}, Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegateManager;->getItemViewDelegateCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
