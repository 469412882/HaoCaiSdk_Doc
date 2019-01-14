.class public abstract Lco/bxvip/adapter/recycler/BxRecyclerViewAdapter;
.super Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;
.source "BxRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 20
    .local p0, "this":Lco/bxvip/adapter/recycler/BxRecyclerViewAdapter;, "Lco/bxvip/adapter/recycler/BxRecyclerViewAdapter<TT;>;"
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p3}, Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 21
    iput-object p1, p0, Lco/bxvip/adapter/recycler/BxRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lco/bxvip/adapter/recycler/BxRecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 23
    iput p2, p0, Lco/bxvip/adapter/recycler/BxRecyclerViewAdapter;->mLayoutId:I

    .line 24
    iput-object p3, p0, Lco/bxvip/adapter/recycler/BxRecyclerViewAdapter;->mData:Ljava/util/List;

    .line 26
    new-instance v0, Lco/bxvip/adapter/recycler/BxRecyclerViewAdapter$1;

    invoke-direct {v0, p0, p2}, Lco/bxvip/adapter/recycler/BxRecyclerViewAdapter$1;-><init>(Lco/bxvip/adapter/recycler/BxRecyclerViewAdapter;I)V

    invoke-virtual {p0, v0}, Lco/bxvip/adapter/recycler/BxRecyclerViewAdapter;->addItemViewDelegate(Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate;)Lco/bxvip/adapter/recycler/RecyclerMultiItemTypeAdapter;

    .line 42
    return-void
.end method


# virtual methods
.method protected abstract convert(Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method
