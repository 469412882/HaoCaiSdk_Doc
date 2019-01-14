.class public abstract Lco/bxvip/adapter/abslist/BxListAdapter;
.super Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;
.source "BxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter<",
        "TT;>;"
    }
.end annotation


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

    .line 19
    .local p0, "this":Lco/bxvip/adapter/abslist/BxListAdapter;, "Lco/bxvip/adapter/abslist/BxListAdapter<TT;>;"
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p3}, Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 21
    new-instance v0, Lco/bxvip/adapter/abslist/BxListAdapter$1;

    invoke-direct {v0, p0, p2}, Lco/bxvip/adapter/abslist/BxListAdapter$1;-><init>(Lco/bxvip/adapter/abslist/BxListAdapter;I)V

    invoke-virtual {p0, v0}, Lco/bxvip/adapter/abslist/BxListAdapter;->addItemViewDelegate(Lco/bxvip/adapter/abslist/base/ItemViewDelegate;)Lco/bxvip/adapter/abslist/MultiItemListTypeAdapter;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract convert(Lco/bxvip/adapter/abslist/base/ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/abslist/base/ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method
