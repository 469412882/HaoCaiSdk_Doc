.class public Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EmptyWrapper.java"


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
.field public static final ITEM_TYPE_EMPTY:I = 0x7ffffffe


# instance fields
.field private mEmptyLayoutId:I

.field private mEmptyView:Landroid/view/View;

.field private mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 22
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;

    .line 14
    invoke-direct {p0}, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .locals 1

    .line 27
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mEmptyLayoutId:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 89
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper<TT;>;"
    invoke-direct {p0}, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 73
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper<TT;>;"
    invoke-direct {p0}, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const v0, 0x7ffffffe

    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 46
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    new-instance v1, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper$1;

    invoke-direct {v1, p0}, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper$1;-><init>(Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;)V

    invoke-static {v0, p1, v1}, Lco/bxvip/adapter/recycler/utils/WrapperUtils;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Lco/bxvip/adapter/recycler/utils/WrapperUtils$SpanSizeCallback;)V

    .line 60
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 81
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper<TT;>;"
    invoke-direct {p0}, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 85
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 32
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper<TT;>;"
    invoke-direct {p0}, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mEmptyView:Landroid/view/View;

    invoke-static {v0, v1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/View;)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    move-result-object v0

    .line 35
    .local v0, "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    goto :goto_0

    .line 37
    .end local v0    # "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mEmptyLayoutId:I

    invoke-static {v0, p1, v1}, Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;

    move-result-object v0

    .line 39
    .restart local v0    # "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    :goto_0
    return-object v0

    .line 41
    .end local v0    # "holder":Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;
    :cond_1
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 64
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper<TT;>;"
    iget-object v0, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 65
    invoke-direct {p0}, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1}, Lco/bxvip/adapter/recycler/utils/WrapperUtils;->setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 68
    :cond_0
    return-void
.end method

.method public setEmptyView(I)V
    .locals 0
    .param p1, "layoutId"    # I

    .line 99
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper<TT;>;"
    iput p1, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mEmptyLayoutId:I

    .line 100
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .line 95
    .local p0, "this":Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;, "Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper<TT;>;"
    iput-object p1, p0, Lco/bxvip/adapter/recycler/wrapper/EmptyWrapper;->mEmptyView:Landroid/view/View;

    .line 96
    return-void
.end method
