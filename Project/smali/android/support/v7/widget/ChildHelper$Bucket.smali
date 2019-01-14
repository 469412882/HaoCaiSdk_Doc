.class Landroid/support/v7/widget/ChildHelper$Bucket;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field mNext:Landroid/support/v7/widget/ChildHelper$Bucket;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method private ensureNext()V
    .locals 1

    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-direct {v0}, Landroid/support/v7/widget/ChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method clear(I)V
    .locals 8
    .param p1, "index"    # I

    .line 421
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 422
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->clear(I)V

    goto :goto_0

    .line 426
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long v6, v2, v4

    and-long v2, v0, v6

    iput-wide v2, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 429
    :cond_1
    :goto_0
    return-void
.end method

.method countOnesBefore(I)I
    .locals 8
    .param p1, "index"    # I

    .line 493
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    .line 494
    if-lt p1, v1, :cond_0

    .line 495
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 497
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long v6, v4, v2

    and-long v2, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 499
    :cond_1
    if-ge p1, v1, :cond_2

    .line 500
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long v6, v4, v2

    and-long v2, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 502
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v0

    iget-wide v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method get(I)Z
    .locals 6
    .param p1, "index"    # I

    .line 432
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 433
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 434
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result v0

    return v0

    .line 436
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method insert(IZ)V
    .locals 13
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 448
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 449
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 450
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/widget/ChildHelper$Bucket;->insert(IZ)V

    goto :goto_2

    .line 452
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 453
    .local v2, "lastBit":Z
    :goto_0
    const-wide/16 v3, 0x1

    shl-long v5, v3, p1

    sub-long v7, v5, v3

    .line 454
    .local v7, "mask":J
    iget-wide v3, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    and-long v5, v3, v7

    .line 455
    .local v5, "before":J
    iget-wide v3, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v9, -0x1

    xor-long v11, v7, v9

    and-long v9, v3, v11

    shl-long v3, v9, v1

    .line 456
    .local v3, "after":J
    or-long v9, v5, v3

    iput-wide v9, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 457
    if-eqz p2, :cond_2

    .line 458
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    goto :goto_1

    .line 460
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ChildHelper$Bucket;->clear(I)V

    .line 462
    :goto_1
    if-nez v2, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v1, :cond_4

    .line 463
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 464
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/ChildHelper$Bucket;->insert(IZ)V

    .line 467
    .end local v2    # "lastBit":Z
    .end local v3    # "after":J
    .end local v5    # "before":J
    .end local v7    # "mask":J
    :cond_4
    :goto_2
    return-void
.end method

.method remove(I)Z
    .locals 16
    .param p1, "index"    # I

    move-object/from16 v0, p0

    .line 470
    move/from16 v1, p1

    const/16 v2, 0x40

    if-lt v1, v2, :cond_0

    .line 471
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 472
    iget-object v2, v0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v3, v1, -0x40

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v2

    return v2

    .line 474
    :cond_0
    const-wide/16 v2, 0x1

    shl-long v4, v2, v1

    .line 475
    .local v4, "mask":J
    iget-wide v6, v0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    and-long v8, v6, v4

    const-wide/16 v6, 0x0

    cmp-long v10, v8, v6

    const/4 v6, 0x1

    if-eqz v10, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 476
    .local v8, "value":Z
    :goto_0
    iget-wide v9, v0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v11, -0x1

    xor-long v13, v4, v11

    move v15, v8

    and-long v7, v9, v13

    .line 476
    .end local v8    # "value":Z
    .local v15, "value":Z
    iput-wide v7, v0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 477
    sub-long v7, v4, v2

    .line 478
    .end local v4    # "mask":J
    .local v7, "mask":J
    iget-wide v2, v0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    and-long v4, v2, v7

    .line 480
    .local v4, "before":J
    iget-wide v2, v0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    xor-long v9, v7, v11

    and-long v11, v2, v9

    invoke-static {v11, v12, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    .line 481
    .local v2, "after":J
    or-long v9, v4, v2

    iput-wide v9, v0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 482
    iget-object v6, v0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v6, :cond_3

    .line 483
    iget-object v6, v0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 484
    const/16 v6, 0x3f

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    .line 486
    :cond_2
    iget-object v6, v0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    .line 488
    :cond_3
    return v15
.end method

.method reset()V
    .locals 2

    .line 441
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->reset()V

    .line 445
    :cond_0
    return-void
.end method

.method set(I)V
    .locals 6
    .param p1, "index"    # I

    .line 406
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 407
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    goto :goto_0

    .line 410
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long v4, v0, v2

    iput-wide v4, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 412
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    .line 509
    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0
.end method
