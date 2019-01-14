.class Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mPosition:I

.field mValid:Z

.field final synthetic this$0:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/LinearLayoutManager;

    .line 2367
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2368
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 2369
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    .line 2383
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2384
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2385
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2386
    return-void
.end method

.method public assignFromView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 2452
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2454
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 2456
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2459
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2460
    return-void
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;

    .line 2405
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    .line 2406
    .local v0, "spaceChange":I
    if-ltz v0, :cond_0

    .line 2407
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 2408
    return-void

    .line 2410
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2411
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2412
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2413
    .local v1, "prevLayoutEnd":I
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 2414
    .local v3, "childEnd":I
    sub-int v4, v1, v3

    .line 2415
    .local v4, "previousEndMargin":I
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2417
    if-lez v4, :cond_1

    .line 2418
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    .line 2419
    .local v5, "childSize":I
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v6, v5

    .line 2420
    .local v6, "estimatedChildStart":I
    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 2421
    .local v7, "layoutStart":I
    iget-object v8, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v8, v7

    .line 2423
    .local v8, "previousStartMargin":I
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v7

    .line 2424
    .local v2, "startReference":I
    sub-int v9, v6, v2

    .line 2425
    .local v9, "startMargin":I
    if-gez v9, :cond_1

    .line 2427
    iget v10, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v11, v9

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2430
    .end local v1    # "prevLayoutEnd":I
    .end local v2    # "startReference":I
    .end local v3    # "childEnd":I
    .end local v4    # "previousEndMargin":I
    .end local v5    # "childSize":I
    .end local v6    # "estimatedChildStart":I
    .end local v7    # "layoutStart":I
    .end local v8    # "previousStartMargin":I
    .end local v9    # "startMargin":I
    :cond_1
    goto :goto_0

    .line 2431
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    .line 2432
    .local v1, "childStart":I
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v3, v1, v3

    .line 2433
    .local v3, "startMargin":I
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2434
    if-lez v3, :cond_3

    .line 2435
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2436
    invoke-virtual {v4, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    .line 2437
    .local v4, "estimatedEnd":I
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v5, v0

    .line 2439
    .local v5, "previousLayoutEnd":I
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2440
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    .line 2441
    .local v6, "previousEndMargin":I
    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    .line 2442
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v7, v2

    .line 2443
    .local v7, "endReference":I
    sub-int v2, v7, v4

    .line 2444
    .local v2, "endMargin":I
    if-gez v2, :cond_3

    .line 2445
    iget v8, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v9, v2

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2449
    .end local v1    # "childStart":I
    .end local v2    # "endMargin":I
    .end local v3    # "startMargin":I
    .end local v4    # "estimatedEnd":I
    .end local v5    # "previousLayoutEnd":I
    .end local v6    # "previousEndMargin":I
    .end local v7    # "endReference":I
    :cond_3
    :goto_0
    return-void
.end method

.method isViewValidAsAnchor(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2399
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2400
    .local v0, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2401
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2400
    :goto_0
    return v1
.end method

.method reset()V
    .locals 1

    .line 2372
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2373
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2374
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2375
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 2376
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
