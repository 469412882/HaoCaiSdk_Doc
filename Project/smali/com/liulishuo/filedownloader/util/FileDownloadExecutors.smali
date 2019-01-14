.class public Lcom/liulishuo/filedownloader/util/FileDownloadExecutors;
.super Ljava/lang/Object;
.source "FileDownloadExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/util/FileDownloadExecutors$FileDownloadThreadFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_IDLE_SECOND:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newDefaultThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .param p0, "nThreads"    # I
    .param p1, "prefix"    # Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadExecutors;->newDefaultThreadPool(ILjava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static newDefaultThreadPool(ILjava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9
    .param p0, "nThreads"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ThreadPoolExecutor;"
        }
    .end annotation

    .line 45
    .local p1, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/liulishuo/filedownloader/util/FileDownloadExecutors$FileDownloadThreadFactory;

    invoke-direct {v7, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadExecutors$FileDownloadThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x5

    move-object v0, v8

    move v1, p0

    move v2, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 47
    .local v0, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 48
    return-object v0
.end method
