.class Landroid/support/v7/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewInfoStore$InfoRecord;,
        Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field final mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/support/v7/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    .line 48
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    return-void
.end method

.method private popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 4
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "flag"    # I

    .line 102
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 103
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 104
    return-object v1

    .line 106
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 107
    .local v2, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-eqz v2, :cond_4

    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_4

    .line 108
    iget v1, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v1, v3

    iput v1, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 110
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 111
    iget-object v1, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 111
    .local v1, "info":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_0
    goto :goto_1

    .line 112
    .end local v1    # "info":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_1
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3

    .line 113
    iget-object v1, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    goto :goto_0

    .line 115
    .restart local v1    # "info":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_1
    nop

    .line 118
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_2

    .line 119
    iget-object v3, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 120
    invoke-static {v2}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 122
    :cond_2
    return-object v1

    .line 115
    .end local v1    # "info":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must provide flag PRE or POST"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_4
    return-object v1
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 147
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 149
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 152
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 153
    return-void
.end method

.method addToDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 199
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 200
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 202
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 205
    return-void
.end method

.method addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "key"    # J
    .param p3, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 134
    return-void
.end method

.method addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 184
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 186
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 189
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 190
    return-void
.end method

.method addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 66
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 68
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 71
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 72
    return-void
.end method

.method clear()V
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 57
    return-void
.end method

.method getFromOldChangeHolders(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "key"    # J

    .line 174
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 76
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isInPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 163
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method onDetach()V
    .locals 0

    .line 274
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->drainCache()V

    .line 275
    return-void
.end method

.method public onViewDetached(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 278
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 279
    return-void
.end method

.method popFromPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 98
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ViewInfoStore;->popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method popFromPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 87
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ViewInfoStore;->popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method process(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    .line 220
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 220
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_7

    .line 221
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 222
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 223
    .local v2, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 225
    invoke-interface {p1, v1}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->unused(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 226
    :cond_0
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 228
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_1

    .line 231
    invoke-interface {p1, v1}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->unused(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 233
    :cond_1
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 235
    :cond_2
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xe

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    .line 237
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 238
    :cond_3
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 240
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processPersistent(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 241
    :cond_4
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 243
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 244
    :cond_5
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 246
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 247
    :cond_6
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 252
    :goto_1
    invoke-static {v2}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 220
    .end local v1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v2    # "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    .end local v0    # "index":I
    :cond_7
    return-void
.end method

.method removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 213
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 217
    return-void
.end method

.method removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 261
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 261
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 262
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 263
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    .line 264
    goto :goto_1

    .line 261
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 267
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 268
    .local v0, "info":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-eqz v0, :cond_2

    .line 269
    invoke-static {v0}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 271
    :cond_2
    return-void
.end method
