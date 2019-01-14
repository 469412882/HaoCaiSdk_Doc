.class public interface abstract Lco/bxvip/adapter/recycler/base/RecyclerItemViewDelegate;
.super Ljava/lang/Object;
.source "RecyclerItemViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract convert(Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/recycler/base/RecyclerViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public abstract getItemViewLayoutId()I
.end method

.method public abstract isForViewType(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method
