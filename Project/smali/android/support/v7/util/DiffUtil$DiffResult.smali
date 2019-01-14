.class public Landroid/support/v7/util/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_IGNORE:I = 0x10

.field private static final FLAG_MASK:I = 0x1f

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x5


# instance fields
.field private final mCallback:Landroid/support/v7/util/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 2
    .param p1, "callback"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p3, "oldItemStatuses"    # [I
    .param p4, "newItemStatuses"    # [I
    .param p5, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$Callback;",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    .line 457
    .local p2, "snakes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Snake;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    .line 459
    iput-object p3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 460
    iput-object p4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 461
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 462
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 463
    iput-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 464
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 465
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 466
    iput-boolean p5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 467
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->addRootSnake()V

    .line 468
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItems()V

    .line 469
    return-void
.end method

.method private addRootSnake()V
    .locals 4

    .line 476
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/util/DiffUtil$Snake;

    .line 477
    .local v0, "firstSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    if-nez v2, :cond_1

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    if-eqz v2, :cond_2

    .line 478
    :cond_1
    new-instance v2, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v2}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 479
    .local v2, "root":Landroid/support/v7/util/DiffUtil$Snake;
    iput v1, v2, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 480
    iput v1, v2, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 481
    iput-boolean v1, v2, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 482
    iput v1, v2, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 483
    iput-boolean v1, v2, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 484
    iget-object v3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 486
    .end local v2    # "root":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_2
    return-void
.end method

.method private dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .locals 7
    .param p2, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .line 734
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    iget-boolean v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v0, :cond_0

    .line 735
    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 736
    return-void

    .line 738
    :cond_0
    add-int/lit8 v0, p4, -0x1

    .line 738
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 739
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v2, p5, v0

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    .line 740
    .local v1, "status":I
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    .line 765
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown flag for pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, p5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v4, v1

    .line 767
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 762
    :cond_1
    new-instance v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    add-int v3, p5, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p3, v4}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    goto :goto_2

    .line 749
    :cond_2
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v4, v4, 0x5

    .line 750
    .local v4, "pos":I
    invoke-static {p1, v4, v2}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v5

    .line 754
    .local v5, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v6, v5, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    invoke-interface {p2, v6, p3}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 755
    if-ne v1, v3, :cond_5

    .line 757
    iget-object v3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    add-int v6, p5, v0

    .line 758
    invoke-virtual {v3, v4, v6}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v3

    .line 757
    invoke-interface {p2, p3, v2, v3}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_2

    .line 742
    .end local v4    # "pos":I
    .end local v5    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_3
    invoke-interface {p2, p3, v2}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 743
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 744
    .local v4, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 745
    .end local v4    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    goto :goto_1

    .line 746
    :cond_4
    nop

    .line 738
    .end local v1    # "status":I
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 770
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method private dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .locals 8
    .param p2, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .line 774
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    iget-boolean v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v0, :cond_0

    .line 775
    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 776
    return-void

    .line 778
    :cond_0
    add-int/lit8 v0, p4, -0x1

    .line 778
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 779
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v2, p5, v0

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    .line 780
    .local v1, "status":I
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    .line 806
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown flag for pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, p5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v4, v1

    .line 808
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 803
    :cond_1
    new-instance v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    add-int v4, p5, v0

    add-int v5, p3, v0

    invoke-direct {v3, v4, v5, v2}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    goto :goto_2

    .line 789
    :cond_2
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v4, v4, 0x5

    .line 790
    .local v4, "pos":I
    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v5

    .line 795
    .local v5, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    add-int v6, p3, v0

    iget v7, v5, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v7, v2

    invoke-interface {p2, v6, v7}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 796
    if-ne v1, v3, :cond_5

    .line 798
    iget v3, v5, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v3, v2

    iget-object v6, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    add-int v7, p5, v0

    .line 799
    invoke-virtual {v6, v7, v4}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v6

    .line 798
    invoke-interface {p2, v3, v2, v6}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_2

    .line 782
    .end local v4    # "pos":I
    .end local v5    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_3
    add-int v3, p3, v0

    invoke-interface {p2, v3, v2}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 783
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 784
    .local v4, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 785
    .end local v4    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    goto :goto_1

    .line 786
    :cond_4
    nop

    .line 778
    .end local v1    # "status":I
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 811
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method private findAddition(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .line 536
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 537
    return-void

    .line 539
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    .line 540
    return-void
.end method

.method private findMatchingItem(IIIZ)Z
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I
    .param p4, "removal"    # Z

    move-object v0, p0

    .line 565
    if-eqz p4, :cond_0

    .line 566
    add-int/lit8 v1, p2, -0x1

    .line 567
    .local v1, "myItemPos":I
    move/from16 v2, p1

    .line 568
    .local v2, "curX":I
    add-int/lit8 v3, p2, -0x1

    .line 568
    .local v3, "curY":I
    goto :goto_0

    .line 570
    .end local v1    # "myItemPos":I
    .end local v2    # "curX":I
    .end local v3    # "curY":I
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 571
    .restart local v1    # "myItemPos":I
    add-int/lit8 v2, p1, -0x1

    .line 572
    .restart local v2    # "curX":I
    move/from16 v3, p2

    .line 574
    .restart local v3    # "curY":I
    :goto_0
    move v4, v3

    move v3, v2

    move/from16 v2, p3

    .line 574
    .local v2, "i":I
    .local v3, "curX":I
    .local v4, "curY":I
    :goto_1
    if-ltz v2, :cond_7

    .line 575
    iget-object v5, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/util/DiffUtil$Snake;

    .line 576
    .local v5, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v6, v5, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v7, v5, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    .line 577
    .local v6, "endX":I
    iget v7, v5, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v8, v5, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v7, v8

    .line 578
    .local v7, "endY":I
    const/4 v8, 0x4

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz p4, :cond_3

    .line 580
    add-int/lit8 v11, v3, -0x1

    .line 580
    .local v11, "pos":I
    :goto_2
    if-lt v11, v6, :cond_6

    .line 581
    iget-object v12, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v12, v11, v1}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 583
    iget-object v12, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v12, v11, v1}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v12

    .line 584
    .local v12, "theSame":Z
    if-eqz v12, :cond_1

    const/16 v8, 0x8

    nop

    .line 586
    .local v8, "changeFlag":I
    :cond_1
    iget-object v9, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v13, v11, 0x5

    or-int/lit8 v13, v13, 0x10

    aput v13, v9, v1

    .line 587
    iget-object v9, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v13, v1, 0x5

    or-int/2addr v13, v8

    aput v13, v9, v11

    .line 588
    return v10

    .line 580
    .end local v8    # "changeFlag":I
    .end local v12    # "theSame":Z
    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 593
    .end local v11    # "pos":I
    :cond_3
    add-int/lit8 v11, v4, -0x1

    .line 593
    .restart local v11    # "pos":I
    :goto_3
    if-lt v11, v7, :cond_6

    .line 594
    iget-object v12, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v12, v1, v11}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 596
    iget-object v12, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v12, v1, v11}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v12

    .line 597
    .restart local v12    # "theSame":Z
    if-eqz v12, :cond_4

    const/16 v8, 0x8

    nop

    .line 599
    .restart local v8    # "changeFlag":I
    :cond_4
    iget-object v9, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v13, p1, -0x1

    shl-int/lit8 v14, v11, 0x5

    or-int/lit8 v14, v14, 0x10

    aput v14, v9, v13

    .line 600
    iget-object v9, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v13, p1, -0x1

    shl-int/lit8 v13, v13, 0x5

    or-int/2addr v13, v8

    aput v13, v9, v11

    .line 601
    return v10

    .line 593
    .end local v8    # "changeFlag":I
    .end local v12    # "theSame":Z
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 605
    .end local v11    # "pos":I
    :cond_6
    iget v3, v5, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 606
    iget v4, v5, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 574
    .end local v5    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v6    # "endX":I
    .end local v7    # "endY":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 608
    .end local v2    # "i":I
    :cond_7
    const/4 v2, 0x0

    return v2
.end method

.method private findMatchingItems()V
    .locals 14

    .line 500
    iget v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 501
    .local v0, "posOld":I
    iget v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 503
    .local v1, "posNew":I
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 503
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 504
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/util/DiffUtil$Snake;

    .line 505
    .local v4, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v6, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v5, v6

    .line 506
    .local v5, "endX":I
    iget v6, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v7, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    .line 507
    .local v6, "endY":I
    iget-boolean v7, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v7, :cond_1

    .line 508
    :goto_1
    if-le v0, v5, :cond_0

    .line 510
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/util/DiffUtil$DiffResult;->findAddition(III)V

    .line 511
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 513
    :cond_0
    :goto_2
    if-le v1, v6, :cond_1

    .line 516
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/util/DiffUtil$DiffResult;->findRemoval(III)V

    .line 517
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 520
    :cond_1
    const/4 v7, 0x0

    .line 520
    .local v7, "j":I
    :goto_3
    iget v8, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-ge v7, v8, :cond_3

    .line 522
    iget v8, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v8, v7

    .line 523
    .local v8, "oldItemPos":I
    iget v9, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/2addr v9, v7

    .line 524
    .local v9, "newItemPos":I
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 525
    invoke-virtual {v10, v8, v9}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v10

    .line 526
    .local v10, "theSame":Z
    if-eqz v10, :cond_2

    const/4 v11, 0x1

    goto :goto_4

    :cond_2
    const/4 v11, 0x2

    .line 527
    .local v11, "changeFlag":I
    :goto_4
    iget-object v12, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v13, v9, 0x5

    or-int/2addr v13, v11

    aput v13, v12, v8

    .line 528
    iget-object v12, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v13, v8, 0x5

    or-int/2addr v13, v11

    aput v13, v12, v9

    .line 520
    .end local v8    # "oldItemPos":I
    .end local v9    # "newItemPos":I
    .end local v10    # "theSame":Z
    .end local v11    # "changeFlag":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 530
    .end local v7    # "j":I
    :cond_3
    iget v0, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 531
    iget v1, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 503
    .end local v4    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v5    # "endX":I
    .end local v6    # "endY":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 533
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private findRemoval(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .line 543
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 544
    return-void

    .line 546
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    .line 547
    return-void
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .line 718
    .local p0, "updates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 718
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 719
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 720
    .local v2, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_2

    .line 721
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 722
    move v3, v0

    .line 722
    .local v3, "j":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 724
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    iget v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    if-eqz p2, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, -0x1

    :goto_2
    add-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 722
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 726
    .end local v3    # "j":I
    :cond_1
    return-object v2

    .line 718
    .end local v2    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 729
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V
    .locals 17
    .param p1, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;

    move-object/from16 v8, p0

    .line 677
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/support/v7/util/BatchingListUpdateCallback;

    if-eqz v1, :cond_0

    .line 678
    move-object v1, v0

    check-cast v1, Landroid/support/v7/util/BatchingListUpdateCallback;

    .line 688
    .end local p1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .local v9, "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .local v10, "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    :goto_0
    move-object v9, v0

    move-object v10, v1

    goto :goto_1

    .line 680
    .end local v9    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .end local v10    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    .restart local p1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    :cond_0
    new-instance v1, Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-direct {v1, v0}, Landroid/support/v7/util/BatchingListUpdateCallback;-><init>(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 684
    .local v1, "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    move-object v0, v1

    .line 684
    .end local p1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .local v0, "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    goto :goto_0

    .line 688
    .end local v0    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .end local v1    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    .restart local v9    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .restart local v10    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    iget v0, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 690
    .local v0, "posOld":I
    iget v2, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 691
    .local v2, "posNew":I
    iget-object v3, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    move v12, v0

    move v13, v2

    .line 691
    .end local v0    # "posOld":I
    .end local v2    # "posNew":I
    .local v3, "snakeIndex":I
    .local v12, "posOld":I
    .local v13, "posNew":I
    :goto_2
    move v14, v3

    .line 691
    .end local v3    # "snakeIndex":I
    .local v14, "snakeIndex":I
    if-ltz v14, :cond_5

    .line 692
    iget-object v0, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/support/v7/util/DiffUtil$Snake;

    .line 693
    .local v15, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v7, v15, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 694
    .local v7, "snakeSize":I
    iget v0, v15, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int v6, v0, v7

    .line 695
    .local v6, "endX":I
    iget v0, v15, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int v5, v0, v7

    .line 696
    .local v5, "endY":I
    if-ge v6, v12, :cond_1

    .line 697
    sub-int v4, v12, v6

    move-object v0, v8

    move-object v2, v10

    move v3, v6

    move v11, v5

    move v5, v6

    .line 697
    .end local v5    # "endY":I
    .local v11, "endY":I
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    goto :goto_3

    .line 700
    .end local v11    # "endY":I
    .restart local v5    # "endY":I
    :cond_1
    move v11, v5

    .line 700
    .end local v5    # "endY":I
    .restart local v11    # "endY":I
    :goto_3
    if-ge v11, v13, :cond_2

    .line 701
    sub-int v0, v13, v11

    move-object v2, v8

    move-object v3, v1

    move-object v4, v10

    move v5, v6

    move/from16 v16, v6

    move v6, v0

    .line 701
    .end local v6    # "endX":I
    .local v16, "endX":I
    move v0, v7

    move v7, v11

    .line 701
    .end local v7    # "snakeSize":I
    .local v0, "snakeSize":I
    invoke-direct/range {v2 .. v7}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    goto :goto_4

    .line 704
    .end local v0    # "snakeSize":I
    .end local v16    # "endX":I
    .restart local v6    # "endX":I
    .restart local v7    # "snakeSize":I
    :cond_2
    move/from16 v16, v6

    move v0, v7

    .line 704
    .end local v6    # "endX":I
    .end local v7    # "snakeSize":I
    .restart local v0    # "snakeSize":I
    .restart local v16    # "endX":I
    :goto_4
    add-int/lit8 v7, v0, -0x1

    .line 704
    .local v7, "i":I
    :goto_5
    move v2, v7

    .line 704
    .end local v7    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_4

    .line 705
    iget-object v3, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget v4, v15, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v4, v2

    aget v3, v3, v4

    and-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 706
    iget v3, v15, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v3, v2

    iget-object v4, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    iget v5, v15, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v5, v2

    iget v6, v15, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/2addr v6, v2

    .line 707
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    .line 706
    const/4 v5, 0x1

    invoke-virtual {v10, v3, v5, v4}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_6

    .line 704
    :cond_3
    const/4 v5, 0x1

    :goto_6
    add-int/lit8 v7, v2, -0x1

    .line 704
    .end local v2    # "i":I
    .restart local v7    # "i":I
    goto :goto_5

    .line 710
    .end local v7    # "i":I
    :cond_4
    const/4 v5, 0x1

    iget v12, v15, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 711
    iget v13, v15, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 691
    .end local v0    # "snakeSize":I
    .end local v11    # "endY":I
    .end local v15    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v16    # "endX":I
    add-int/lit8 v3, v14, -0x1

    .line 691
    .end local v14    # "snakeIndex":I
    .restart local v3    # "snakeIndex":I
    const/4 v11, 0x1

    goto :goto_2

    .line 713
    .end local v3    # "snakeIndex":I
    :cond_5
    invoke-virtual {v10}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 714
    return-void
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 643
    new-instance v0, Landroid/support/v7/util/DiffUtil$DiffResult$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/util/DiffUtil$DiffResult$1;-><init>(Landroid/support/v7/util/DiffUtil$DiffResult;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 664
    return-void
.end method

.method getSnakes()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation

    .line 815
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    return-object v0
.end method
