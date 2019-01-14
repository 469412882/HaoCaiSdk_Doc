.class public Landroid/support/v7/util/SortedList;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/SortedList$BatchedCallback;,
        Landroid/support/v7/util/SortedList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CAPACITY_GROWTH:I = 0xa

.field private static final DELETION:I = 0x2

.field private static final INSERTION:I = 0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOOKUP:I = 0x4

.field private static final MIN_CAPACITY:I = 0xa


# instance fields
.field private mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

.field private mCallback:Landroid/support/v7/util/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mMergedSize:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/support/v7/util/SortedList$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Landroid/support/v7/util/SortedList$Callback;, "Landroid/support/v7/util/SortedList$Callback<TT;>;"
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;I)V
    .locals 1
    .param p3, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/support/v7/util/SortedList$Callback<",
            "TT;>;I)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Landroid/support/v7/util/SortedList$Callback;, "Landroid/support/v7/util/SortedList$Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    .line 78
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 79
    iput-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 81
    return-void
.end method

.method private add(Ljava/lang/Object;Z)I
    .locals 6
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 376
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    .line 377
    .local v0, "index":I
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 378
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :cond_0
    iget v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-ge v0, v2, :cond_2

    .line 380
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 381
    .local v2, "existing":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 382
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 385
    return v0

    .line 387
    :cond_1
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 388
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    .line 389
    return v0

    .line 393
    .end local v2    # "existing":Ljava/lang/Object;, "TT;"
    :cond_2
    :goto_0
    invoke-direct {p0, v0, p1}, Landroid/support/v7/util/SortedList;->addToData(ILjava/lang/Object;)V

    .line 394
    if-eqz p2, :cond_3

    .line 395
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    .line 397
    :cond_3
    return v0
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "newItems":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 174
    .local v0, "forceBatchedUpdates":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->beginBatchedUpdates()V

    .line 178
    :cond_1
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iput-object v2, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    .line 179
    iput v1, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 180
    iget v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    iput v2, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    .line 182
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-static {p1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 184
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->deduplicate([Ljava/lang/Object;)I

    move-result v2

    .line 185
    .local v2, "newSize":I
    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-nez v3, :cond_2

    .line 186
    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 187
    iput v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 188
    iput v2, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    .line 189
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_1

    .line 191
    :cond_2
    invoke-direct {p0, p1, v2}, Landroid/support/v7/util/SortedList;->merge([Ljava/lang/Object;I)V

    .line 194
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    .line 196
    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    .line 199
    :cond_3
    return-void
.end method

.method private addToData(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 627
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-le p1, v0, :cond_0

    .line 628
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot add item to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " because size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_0
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 633
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 634
    .local v0, "newData":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    aput-object p2, v0, p1

    .line 636
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 638
    .end local v0    # "newData":[Ljava/lang/Object;, "[TT;"
    goto :goto_0

    .line 640
    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 643
    :goto_0
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 644
    return-void
.end method

.method private deduplicate([Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .line 208
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input array must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 215
    .local v0, "rangeStart":I
    const/4 v1, 0x1

    .line 217
    .local v1, "rangeEnd":I
    const/4 v2, 0x1

    .line 217
    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_6

    .line 218
    aget-object v3, p1, v2

    .line 220
    .local v3, "currentItem":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 221
    .local v4, "compare":I
    if-lez v4, :cond_1

    .line 222
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Input must be sorted in ascending order."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 225
    :cond_1
    if-nez v4, :cond_4

    .line 227
    invoke-direct {p0, v3, p1, v0, v1}, Landroid/support/v7/util/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v5

    .line 228
    .local v5, "sameItemPos":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 230
    aput-object v3, p1, v5

    goto :goto_1

    .line 233
    :cond_2
    if-eq v1, v2, :cond_3

    .line 234
    aput-object v3, p1, v1

    .line 236
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 238
    .end local v5    # "sameItemPos":I
    :goto_1
    goto :goto_2

    .line 240
    :cond_4
    if-eq v1, v2, :cond_5

    .line 241
    aput-object v3, p1, v1

    .line 243
    :cond_5
    add-int/lit8 v5, v1, 0x1

    .line 243
    .local v5, "rangeEnd":I
    move v0, v1

    .line 217
    .end local v1    # "rangeEnd":I
    .end local v3    # "currentItem":Ljava/lang/Object;, "TT;"
    .end local v4    # "compare":I
    move v1, v5

    .line 217
    .end local v5    # "rangeEnd":I
    .restart local v1    # "rangeEnd":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    .end local v2    # "i":I
    :cond_6
    return v1
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .locals 6
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    .line 577
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "mData":[Ljava/lang/Object;, "[TT;"
    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p3, p4, :cond_5

    .line 578
    add-int v2, p3, p4

    div-int/lit8 v2, v2, 0x2

    .line 579
    .local v2, "middle":I
    aget-object v3, p2, v2

    .line 580
    .local v3, "myItem":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v4, v3, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 581
    .local v4, "cmp":I
    if-gez v4, :cond_0

    .line 582
    add-int/lit8 p3, v2, 0x1

    goto :goto_2

    .line 583
    :cond_0
    if-nez v4, :cond_4

    .line 584
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v5, v3, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 585
    return v2

    .line 587
    :cond_1
    invoke-direct {p0, p1, v2, p3, p4}, Landroid/support/v7/util/SortedList;->linearEqualitySearch(Ljava/lang/Object;III)I

    move-result v5

    .line 588
    .local v5, "exact":I
    if-ne p5, v1, :cond_3

    .line 589
    if-ne v5, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    return v0

    .line 591
    :cond_3
    return v5

    .line 595
    .end local v5    # "exact":I
    :cond_4
    move p4, v2

    .line 597
    .end local v2    # "middle":I
    .end local v3    # "myItem":Ljava/lang/Object;, "TT;"
    .end local v4    # "cmp":I
    :goto_2
    goto :goto_0

    .line 598
    :cond_5
    if-ne p5, v1, :cond_6

    move v0, p3

    nop

    :cond_6
    return v0
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 3
    .param p3, "from"    # I
    .param p4, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    .line 251
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "items":[Ljava/lang/Object;, "[TT;"
    move v0, p3

    .line 251
    .local v0, "pos":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 252
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    return v0

    .line 251
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "pos":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private linearEqualitySearch(Ljava/lang/Object;III)I
    .locals 4
    .param p2, "middle"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    .line 603
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, p2, -0x1

    .line 603
    .local v0, "next":I
    :goto_0
    if-lt v0, p3, :cond_2

    .line 604
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 605
    .local v1, "nextItem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 606
    .local v2, "cmp":I
    if-eqz v2, :cond_0

    .line 607
    goto :goto_1

    .line 609
    :cond_0
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    return v0

    .line 603
    .end local v1    # "nextItem":Ljava/lang/Object;, "TT;"
    .end local v2    # "cmp":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 613
    .end local v0    # "next":I
    :cond_2
    :goto_1
    add-int/lit8 v0, p2, 0x1

    .line 613
    .restart local v0    # "next":I
    :goto_2
    if-ge v0, p4, :cond_5

    .line 614
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 615
    .restart local v1    # "nextItem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 616
    .restart local v2    # "cmp":I
    if-eqz v2, :cond_3

    .line 617
    goto :goto_3

    .line 619
    :cond_3
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 620
    return v0

    .line 613
    .end local v1    # "nextItem":Ljava/lang/Object;, "TT;"
    .end local v2    # "cmp":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 623
    .end local v0    # "next":I
    :cond_5
    :goto_3
    const/4 v0, -0x1

    return v0
.end method

.method private merge([Ljava/lang/Object;I)V
    .locals 9
    .param p2, "newDataSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 263
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "newData":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0xa

    .line 264
    .local v0, "mergedCapacity":I
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 265
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    .line 267
    nop

    .line 268
    .local v1, "newDataStart":I
    :goto_0
    iget v2, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v3, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-lt v2, v3, :cond_0

    if-ge v1, p2, :cond_2

    .line 269
    :cond_0
    iget v2, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v3, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-ne v2, v3, :cond_1

    .line 271
    sub-int v2, p2, v1

    .line 272
    .local v2, "itemCount":I
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iget v3, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    .line 274
    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 275
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    .line 276
    goto :goto_1

    .line 279
    .end local v2    # "itemCount":I
    :cond_1
    if-ne v1, p2, :cond_3

    .line 281
    iget v2, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    iget v3, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    sub-int/2addr v2, v3

    .line 282
    .restart local v2    # "itemCount":I
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    invoke-static {v3, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iget v3, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    .line 284
    nop

    .line 311
    .end local v2    # "itemCount":I
    :cond_2
    :goto_1
    return-void

    .line 287
    :cond_3
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    aget-object v2, v2, v3

    .line 288
    .local v2, "oldItem":Ljava/lang/Object;, "TT;"
    aget-object v3, p1, v1

    .line 289
    .local v3, "newItem":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v4, v2, v3}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 290
    .local v4, "compare":I
    const/4 v5, 0x1

    if-lez v4, :cond_4

    .line 292
    iget-object v6, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v7, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    aput-object v3, v6, v7

    .line 293
    iget v6, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 294
    add-int/lit8 v1, v1, 0x1

    .line 295
    iget-object v6, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v7, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7, v5}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_2

    .line 296
    :cond_4
    if-nez v4, :cond_5

    iget-object v6, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 298
    iget-object v6, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v7, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    aput-object v3, v6, v7

    .line 299
    add-int/lit8 v1, v1, 0x1

    .line 300
    iget v6, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 301
    iget-object v6, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 302
    iget-object v6, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v7, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7, v5}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    goto :goto_2

    .line 307
    :cond_5
    iget-object v6, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v7, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    aput-object v2, v6, v7

    .line 308
    iget v6, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 310
    .end local v2    # "oldItem":Ljava/lang/Object;, "TT;"
    .end local v3    # "newItem":Ljava/lang/Object;, "TT;"
    .end local v4    # "compare":I
    :cond_6
    :goto_2
    goto/16 :goto_0
.end method

.method private remove(Ljava/lang/Object;Z)Z
    .locals 6
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 427
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    .line 428
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 429
    const/4 v1, 0x0

    return v1

    .line 431
    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 432
    const/4 v1, 0x1

    return v1
.end method

.method private removeItemAtIndex(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "notify"    # Z

    .line 436
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v0, v4

    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 438
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 439
    if-eqz p2, :cond_0

    .line 440
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, v4}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    .line 442
    :cond_0
    return-void
.end method

.method private throwIfMerging()V
    .locals 2

    .line 314
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method from within addAll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 118
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 169
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    .line 170
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    .line 158
    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .locals 3
    .param p2, "mayModifyInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 135
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 136
    array-length v0, p1

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    if-eqz p2, :cond_1

    .line 140
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 143
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    invoke-direct {p0, v0}, Landroid/support/v7/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    .line 147
    .end local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    :goto_0
    return-void
.end method

.method public beginBatchedUpdates()V
    .locals 2

    .line 352
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 353
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-eqz v0, :cond_0

    .line 354
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {v0, v1}, Landroid/support/v7/util/SortedList$BatchedCallback;-><init>(Landroid/support/v7/util/SortedList$Callback;)V

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    .line 359
    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 360
    return-void
.end method

.method public clear()V
    .locals 4

    .line 650
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 651
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-nez v0, :cond_0

    .line 652
    return-void

    .line 654
    :cond_0
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 655
    .local v0, "prevSize":I
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 656
    iput v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 657
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v1, v3, v0}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    .line 658
    return-void
.end method

.method public endBatchedUpdates()V
    .locals 2

    .line 366
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 367
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    check-cast v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 370
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    if-ne v0, v1, :cond_1

    .line 371
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    iget-object v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 373
    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 539
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 546
    iget v0, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    if-lt p1, v0, :cond_1

    .line 547
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 550
    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 540
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to get item at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 562
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 563
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    const/4 v6, 0x4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    .line 564
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 565
    return v0

    .line 567
    :cond_0
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v6, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    .line 568
    if-eq v0, v1, :cond_1

    .line 569
    iget v1, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    sub-int v1, v0, v1

    iget v2, p0, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/2addr v1, v2

    return v1

    .line 571
    :cond_1
    return v1

    .line 573
    .end local v0    # "index":I
    :cond_2
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    return v0
.end method

.method public recalculatePositionOfItemAt(I)V
    .locals 3
    .param p1, "index"    # I

    .line 519
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 521
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 522
    .local v0, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 523
    invoke-direct {p0, v0, v1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v1

    .line 524
    .local v1, "newIndex":I
    if-eq p1, v1, :cond_0

    .line 525
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v2, p1, v1}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    .line 527
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 408
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 409
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SortedList;->remove(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 420
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 421
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 423
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 89
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 465
    .local p0, "this":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 466
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 468
    .local v0, "existing":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p2, :cond_1

    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v0, p2}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 469
    .local v3, "contentsChanged":Z
    :goto_1
    if-eq v0, p2, :cond_3

    .line 471
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v4, v0, p2}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 472
    .local v4, "cmp":I
    if-nez v4, :cond_3

    .line 473
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v2, p1

    .line 474
    if-eqz v3, :cond_2

    .line 475
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v2, p1, v1}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    .line 477
    :cond_2
    return-void

    .line 480
    .end local v4    # "cmp":I
    :cond_3
    if-eqz v3, :cond_4

    .line 481
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v4, p1, v1}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    .line 484
    :cond_4
    invoke-direct {p0, p1, v2}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 485
    invoke-direct {p0, p2, v2}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v1

    .line 486
    .local v1, "newIndex":I
    if-eq p1, v1, :cond_5

    .line 487
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v2, p1, v1}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    .line 489
    :cond_5
    return-void
.end method
