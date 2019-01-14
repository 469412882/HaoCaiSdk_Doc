.class public abstract Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 831
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .locals 4
    .param p1, "position"    # I

    .line 937
    const/4 v0, 0x0

    .line 938
    .local v0, "lo":I
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 940
    .local v1, "hi":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 941
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 942
    .local v2, "mid":I
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 943
    .local v3, "midVal":I
    if-ge v3, p1, :cond_0

    .line 944
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 946
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 948
    .end local v1    # "hi":I
    .end local v3    # "midVal":I
    .local v2, "hi":I
    move v1, v2

    .line 948
    .end local v2    # "hi":I
    .restart local v1    # "hi":I
    :goto_1
    goto :goto_0

    .line 949
    :cond_1
    add-int/lit8 v2, v0, -0x1

    .line 950
    .local v2, "index":I
    if-ltz v2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 951
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    return v3

    .line 953
    :cond_2
    const/4 v3, -0x1

    return v3
.end method

.method getCachedSpanIndex(II)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 870
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_0

    .line 871
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    return v0

    .line 873
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 874
    .local v0, "existing":I
    if-eq v0, v1, :cond_1

    .line 875
    return v0

    .line 877
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    .line 878
    .local v1, "value":I
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 879
    return v1
.end method

.method public getSpanGroupIndex(II)I
    .locals 5
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, "span":I
    const/4 v1, 0x0

    .line 969
    .local v1, "group":I
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    .line 970
    .local v2, "positionSpanSize":I
    const/4 v3, 0x0

    .line 970
    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_2

    .line 971
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    .line 972
    .local v4, "size":I
    add-int/2addr v0, v4

    .line 973
    if-ne v0, p2, :cond_0

    .line 974
    const/4 v0, 0x0

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 976
    :cond_0
    if-le v0, p2, :cond_1

    .line 978
    move v0, v4

    .line 979
    add-int/lit8 v1, v1, 0x1

    .line 970
    .end local v4    # "size":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 982
    .end local v3    # "i":I
    :cond_2
    add-int v3, v0, v2

    if-le v3, p2, :cond_3

    .line 983
    add-int/lit8 v1, v1, 0x1

    .line 985
    :cond_3
    return v1
.end method

.method public getSpanIndex(II)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 906
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 907
    .local v0, "positionSpanSize":I
    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 908
    return v1

    .line 910
    :cond_0
    const/4 v2, 0x0

    .line 911
    .local v2, "span":I
    const/4 v3, 0x0

    .line 913
    .local v3, "startPos":I
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 914
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v4

    .line 915
    .local v4, "prevKey":I
    if-ltz v4, :cond_1

    .line 916
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    add-int v2, v5, v6

    .line 917
    add-int/lit8 v3, v4, 0x1

    .line 920
    .end local v4    # "prevKey":I
    :cond_1
    move v4, v2

    move v2, v3

    .line 920
    .local v2, "i":I
    .local v4, "span":I
    :goto_0
    if-ge v2, p1, :cond_4

    .line 921
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    .line 922
    .local v5, "size":I
    add-int/2addr v4, v5

    .line 923
    if-ne v4, p2, :cond_2

    .line 924
    const/4 v4, 0x0

    goto :goto_1

    .line 925
    :cond_2
    if-le v4, p2, :cond_3

    .line 927
    move v4, v5

    .line 920
    .end local v5    # "size":I
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 930
    .end local v2    # "i":I
    :cond_4
    add-int v2, v4, v0

    if-gt v2, p2, :cond_5

    .line 931
    return v4

    .line 933
    :cond_5
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    .line 857
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 858
    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 1

    .line 866
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 0
    .param p1, "cacheSpanIndices"    # Z

    .line 849
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 850
    return-void
.end method
