.class final Lcom/qihoo360/replugin/base/ThreadUtils$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/base/ThreadUtils;->syncToMainThreadByOthers(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$ex:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/qihoo360/replugin/base/ThreadUtils$1;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/qihoo360/replugin/base/ThreadUtils$1;->val$callable:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/qihoo360/replugin/base/ThreadUtils$1;->val$ex:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/qihoo360/replugin/base/ThreadUtils$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/replugin/base/ThreadUtils$1;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/qihoo360/replugin/base/ThreadUtils$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/qihoo360/replugin/base/ThreadUtils$1;->val$ex:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 74
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/qihoo360/replugin/base/ThreadUtils$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 75
    return-void
.end method
