.class Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;
.super Ljava/lang/Object;
.source "QueuesHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/QueuesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialFinishListener"
.end annotation


# instance fields
.field private nextIndex:I

.field private final wSerialHandlerCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p1, "wSerialHandlerCallback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;->wSerialHandlerCallback:Ljava/lang/ref/WeakReference;

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/QueuesHandler$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/ref/WeakReference;
    .param p2, "x1"    # Lcom/liulishuo/filedownloader/QueuesHandler$1;

    .line 248
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public over(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 2
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 264
    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;->wSerialHandlerCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;->wSerialHandlerCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;->wSerialHandlerCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;

    iget v1, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;->nextIndex:I

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;->access$000(Lcom/liulishuo/filedownloader/QueuesHandler$SerialHandlerCallback;I)V

    .line 267
    :cond_0
    return-void
.end method

.method public setNextIndex(I)Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;
    .locals 0
    .param p1, "index"    # I

    .line 258
    iput p1, p0, Lcom/liulishuo/filedownloader/QueuesHandler$SerialFinishListener;->nextIndex:I

    .line 259
    return-object p0
.end method
