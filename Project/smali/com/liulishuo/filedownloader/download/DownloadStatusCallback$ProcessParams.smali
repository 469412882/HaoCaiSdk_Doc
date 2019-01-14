.class public Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;
.super Ljava/lang/Object;
.source "DownloadStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/DownloadStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessParams"
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field private isResuming:Z

.field private retryingTimes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getRetryingTimes()I
    .locals 1

    .line 513
    iget v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->retryingTimes:I

    return v0
.end method

.method public isResuming()Z
    .locals 1

    .line 497
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->isResuming:Z

    return v0
.end method

.method setException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 501
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->exception:Ljava/lang/Exception;

    .line 502
    return-void
.end method

.method setResuming(Z)V
    .locals 0
    .param p1, "isResuming"    # Z

    .line 493
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->isResuming:Z

    .line 494
    return-void
.end method

.method setRetryingTimes(I)V
    .locals 0
    .param p1, "retryingTimes"    # I

    .line 505
    iput p1, p0, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->retryingTimes:I

    .line 506
    return-void
.end method
