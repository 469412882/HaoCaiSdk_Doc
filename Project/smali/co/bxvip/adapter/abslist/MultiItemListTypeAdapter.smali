.class public Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiItemListTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mItemViewDelegateManager:Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;


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

    .line 22
    .local p0, "this":Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;, "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<TT;>;"
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mDatas:Ljava/util/List;

    .line 25
    new-instance v0, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;

    invoke-direct {v0}, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;-><init>()V

    iput-object v0, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;

    .line 26
    return-void
.end method

.method private useItemViewDelegateManager()Z
    .locals 1

    .line 34
    .local p0, "this":Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;, "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;

    invoke-virtual {v0}, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->getItemViewDelegateCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addItemViewDelegate(Lco/bxvip/adapter/abslist/base/ItemViewDelegate;)Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<",
            "TT;>;)",
            "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;"
        }
    .end annotation

    .line 29
    .local p0, "this":Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;, "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<TT;>;"
    .local p1, "itemViewDelegate":Lco/bxvip/adapter/abslist/base/ItemViewDelegate;, "Lco/bxvip/adapter/abslist/base/ItemViewDelegate<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;

    invoke-virtual {v0, p1}, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->addDelegate(Lco/bxvip/adapter/abslist/base/ItemViewDelegate;)Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;

    .line 30
    return-object p0
.end method

.method protected convert(Lco/bxvip/adapter/abslist/base/ViewHolder;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "viewHolder"    # Lco/bxvip/adapter/abslist/base/ViewHolder;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/abslist/base/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;, "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;

    invoke-virtual {v0, p1, p2, p3}, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->convert(Lco/bxvip/adapter/abslist/base/ViewHolder;Ljava/lang/Object;I)V

    .line 76
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 83
    .local p0, "this":Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;, "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;, "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 93
    .local p0, "this":Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;, "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 46
    .local p0, "this":Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;, "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<TT;>;"
    invoke-direct {p0}, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->useItemViewDelegateManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;

    iget-object v1, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->getItemViewType(Ljava/lang/Object;I)I

    move-result v0

    .line 48
    .local v0, "viewType":I
    return v0

    .line 50
    .end local v0    # "viewType":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 55
    .local p0, "this":Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;, "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;

    iget-object v1, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->getItemViewDelegate(Ljava/lang/Object;I)Lco/bxvip/adapter/abslist/base/ItemViewDelegate;

    move-result-object v0

    .line 56
    .local v0, "itemViewDelegate":Lco/bxvip/adapter/abslist/base/ItemViewDelegate;
    invoke-interface {v0}, Lco/bxvip/adapter/abslist/base/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v1

    .line 57
    .local v1, "layoutId":I
    const/4 v2, 0x0

    .line 58
    .local v2, "viewHolder":Lco/bxvip/adapter/abslist/base/ViewHolder;
    if-nez p2, :cond_0

    .line 59
    iget-object v3, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 61
    .local v3, "itemView":Landroid/view/View;
    new-instance v4, Lco/bxvip/adapter/abslist/base/ViewHolder;

    iget-object v5, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3, p3, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)V

    move-object v2, v4

    .line 62
    invoke-virtual {v2, v1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->setLayoutId(I)V

    .line 63
    invoke-virtual {v2}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->onViewHolderCreated(Lco/bxvip/adapter/abslist/base/ViewHolder;Landroid/view/View;)V

    .line 64
    .end local v3    # "itemView":Landroid/view/View;
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lco/bxvip/adapter/abslist/base/ViewHolder;

    .line 66
    invoke-virtual {v2, p1}, Lco/bxvip/adapter/abslist/base/ViewHolder;->setPosition(I)V

    .line 70
    :goto_0
    invoke-virtual {p0, p1}, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->convert(Lco/bxvip/adapter/abslist/base/ViewHolder;Ljava/lang/Object;I)V

    .line 71
    invoke-virtual {v2}, Lco/bxvip/adapter/abslist/base/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 39
    .local p0, "this":Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;, "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<TT;>;"
    invoke-direct {p0}, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->useItemViewDelegateManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;->mItemViewDelegateManager:Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;

    invoke-virtual {v0}, Lco/bxvip/adapter/abslist/base/ItemViewDelegateManager;->getItemViewDelegateCount()I

    move-result v0

    return v0

    .line 41
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public onViewHolderCreated(Lco/bxvip/adapter/abslist/base/ViewHolder;Landroid/view/View;)V
    .locals 0
    .param p1, "holder"    # Lco/bxvip/adapter/abslist/base/ViewHolder;
    .param p2, "itemView"    # Landroid/view/View;

    .line 79
    .local p0, "this":Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;, "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<TT;>;"
    return-void
.end method
