.class public Lco/bxvip/tools/ACache$ACacheManager;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/tools/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ACacheManager"
.end annotation


# instance fields
.field private final cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected cacheDir:Ljava/io/File;

.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private final countLimit:I

.field private final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:J

.field final synthetic this$0:Lco/bxvip/tools/ACache;


# direct methods
.method private constructor <init>(Lco/bxvip/tools/ACache;Ljava/io/File;JI)V
    .locals 1
    .param p1, "this$0"    # Lco/bxvip/tools/ACache;
    .param p2, "cacheDir"    # Ljava/io/File;
    .param p3, "sizeLimit"    # J
    .param p5, "countLimit"    # I

    .line 587
    iput-object p1, p0, Lco/bxvip/tools/ACache$ACacheManager;->this$0:Lco/bxvip/tools/ACache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lco/bxvip/tools/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 588
    iput-object p2, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    .line 589
    iput-wide p3, p0, Lco/bxvip/tools/ACache$ACacheManager;->sizeLimit:J

    .line 590
    iput p5, p0, Lco/bxvip/tools/ACache$ACacheManager;->countLimit:I

    .line 591
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 592
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 593
    invoke-direct {p0}, Lco/bxvip/tools/ACache$ACacheManager;->calculateCacheSizeAndCacheCount()V

    .line 594
    return-void
.end method

.method synthetic constructor <init>(Lco/bxvip/tools/ACache;Ljava/io/File;JILco/bxvip/tools/ACache$1;)V
    .locals 0
    .param p1, "x0"    # Lco/bxvip/tools/ACache;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # Lco/bxvip/tools/ACache$1;

    .line 579
    invoke-direct/range {p0 .. p5}, Lco/bxvip/tools/ACache$ACacheManager;-><init>(Lco/bxvip/tools/ACache;Ljava/io/File;JI)V

    return-void
.end method

.method static synthetic access$1500(Lco/bxvip/tools/ACache$ACacheManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lco/bxvip/tools/ACache$ACacheManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 579
    invoke-direct {p0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lco/bxvip/tools/ACache$ACacheManager;)V
    .locals 0
    .param p0, "x0"    # Lco/bxvip/tools/ACache$ACacheManager;

    .line 579
    invoke-direct {p0}, Lco/bxvip/tools/ACache$ACacheManager;->clear()V

    return-void
.end method

.method static synthetic access$1700(Lco/bxvip/tools/ACache$ACacheManager;Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Lco/bxvip/tools/ACache$ACacheManager;
    .param p1, "x1"    # Ljava/io/File;

    .line 579
    invoke-direct {p0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lco/bxvip/tools/ACache$ACacheManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/tools/ACache$ACacheManager;

    .line 579
    iget-object v0, p0, Lco/bxvip/tools/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lco/bxvip/tools/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/tools/ACache$ACacheManager;

    .line 579
    iget-object v0, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$200(Lco/bxvip/tools/ACache$ACacheManager;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lco/bxvip/tools/ACache$ACacheManager;
    .param p1, "x1"    # Ljava/io/File;

    .line 579
    invoke-direct {p0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->put(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2000(Lco/bxvip/tools/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/tools/ACache$ACacheManager;

    .line 579
    iget-object v0, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lco/bxvip/tools/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/tools/ACache$ACacheManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 579
    invoke-direct {p0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lco/bxvip/tools/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/tools/ACache$ACacheManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 579
    invoke-direct {p0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private calculateCacheSizeAndCacheCount()V
    .locals 2

    .line 600
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lco/bxvip/tools/ACache$ACacheManager$1;

    invoke-direct {v1, p0}, Lco/bxvip/tools/ACache$ACacheManager$1;-><init>(Lco/bxvip/tools/ACache$ACacheManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 616
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 617
    return-void
.end method

.method private calculateSize(Ljava/io/File;)J
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 707
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private clear()V
    .locals 4

    .line 661
    iget-object v0, p0, Lco/bxvip/tools/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 662
    iget-object v0, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 663
    iget-object v0, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 664
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 665
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 666
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 665
    .end local v3    # "f":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    :cond_0
    return-void
.end method

.method private get(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 643
    invoke-direct {p0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 644
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 645
    .local v1, "currentTime":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 646
    iget-object v2, p0, Lco/bxvip/tools/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    return-object v0
.end method

.method private newFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 652
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private put(Ljava/io/File;)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;

    .line 620
    iget-object v0, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 621
    .local v0, "curCacheCount":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lco/bxvip/tools/ACache$ACacheManager;->countLimit:I

    if-le v1, v2, :cond_0

    .line 622
    invoke-direct {p0}, Lco/bxvip/tools/ACache$ACacheManager;->removeNext()J

    move-result-wide v1

    .line 623
    .local v1, "freedSize":J
    iget-object v3, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 625
    iget-object v3, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 626
    .end local v1    # "freedSize":J
    goto :goto_0

    .line 627
    :cond_0
    iget-object v1, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 629
    invoke-direct {p0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v1

    .line 630
    .local v1, "valueSize":J
    iget-object v3, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 631
    .local v3, "curCacheSize":J
    :goto_1
    const/4 v5, 0x0

    add-long v5, v3, v1

    iget-wide v7, p0, Lco/bxvip/tools/ACache$ACacheManager;->sizeLimit:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 632
    invoke-direct {p0}, Lco/bxvip/tools/ACache$ACacheManager;->removeNext()J

    move-result-wide v5

    .line 633
    .local v5, "freedSize":J
    iget-object v7, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v3

    .line 634
    .end local v5    # "freedSize":J
    goto :goto_1

    .line 635
    :cond_1
    iget-object v5, p0, Lco/bxvip/tools/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 638
    .local v5, "currentTime":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 639
    iget-object v6, p0, Lco/bxvip/tools/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v6, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    return-void
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 656
    invoke-direct {p0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 657
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private removeNext()J
    .locals 12

    .line 677
    iget-object v0, p0, Lco/bxvip/tools/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-wide/16 v0, 0x0

    return-wide v0

    .line 681
    :cond_0
    const/4 v0, 0x0

    .line 682
    .local v0, "oldestUsage":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 683
    .local v1, "mostLongUsedFile":Ljava/io/File;
    iget-object v2, p0, Lco/bxvip/tools/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 684
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;>;"
    iget-object v3, p0, Lco/bxvip/tools/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    monitor-enter v3

    .line 685
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 686
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    if-nez v1, :cond_1

    .line 687
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    move-object v1, v6

    .line 688
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move-object v0, v6

    goto :goto_1

    .line 690
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 691
    .local v6, "lastValueUsage":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_2

    .line 692
    move-object v0, v6

    .line 693
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    move-object v1, v7

    .line 696
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    .end local v6    # "lastValueUsage":Ljava/lang/Long;
    :cond_2
    :goto_1
    goto :goto_0

    .line 697
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    invoke-direct {p0, v1}, Lco/bxvip/tools/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v3

    .line 700
    .local v3, "fileSize":J
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 701
    iget-object v5, p0, Lco/bxvip/tools/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    :cond_4
    return-wide v3

    .line 697
    .end local v3    # "fileSize":J
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
