.class public interface abstract Lco/bxvip/adapter/abslist/base/ItemViewDelegate;
.super Ljava/lang/Object;
.source "ItemViewDelegate.java"


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
.method public abstract convert(Lco/bxvip/adapter/abslist/base/ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/bxvip/adapter/abslist/base/ViewHolder;",
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
