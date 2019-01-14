.class Lco/bxvip/tools/ACache$ACacheManager$1;
.super Ljava/lang/Object;
.source "ACache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/tools/ACache$ACacheManager;->calculateCacheSizeAndCacheCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/bxvip/tools/ACache$ACacheManager;


# direct methods
.method constructor <init>(Lco/bxvip/tools/ACache$ACacheManager;)V
    .locals 0
    .param p1, "this$1"    # Lco/bxvip/tools/ACache$ACacheManager;

    .line 600
    iput-object p1, p0, Lco/bxvip/tools/ACache$ACacheManager$1;->this$1:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "size":I
    const/4 v1, 0x0

    .line 605
    .local v1, "count":I
    iget-object v2, p0, Lco/bxvip/tools/ACache$ACacheManager$1;->this$1:Lco/bxvip/tools/ACache$ACacheManager;

    iget-object v2, v2, Lco/bxvip/tools/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 606
    .local v2, "cachedFiles":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 607
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 608
    .local v5, "cachedFile":Ljava/io/File;
    int-to-long v6, v0

    iget-object v8, p0, Lco/bxvip/tools/ACache$ACacheManager$1;->this$1:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v8, v5}, Lco/bxvip/tools/ACache$ACacheManager;->access$1700(Lco/bxvip/tools/ACache$ACacheManager;Ljava/io/File;)J

    move-result-wide v8

    add-long v10, v6, v8

    long-to-int v0, v10

    .line 609
    add-int/lit8 v1, v1, 0x1

    .line 610
    iget-object v6, p0, Lco/bxvip/tools/ACache$ACacheManager$1;->this$1:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v6}, Lco/bxvip/tools/ACache$ACacheManager;->access$1800(Lco/bxvip/tools/ACache$ACacheManager;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .end local v5    # "cachedFile":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 612
    :cond_0
    iget-object v3, p0, Lco/bxvip/tools/ACache$ACacheManager$1;->this$1:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v3}, Lco/bxvip/tools/ACache$ACacheManager;->access$1900(Lco/bxvip/tools/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 613
    iget-object v3, p0, Lco/bxvip/tools/ACache$ACacheManager$1;->this$1:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v3}, Lco/bxvip/tools/ACache$ACacheManager;->access$2000(Lco/bxvip/tools/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 615
    :cond_1
    return-void
.end method
