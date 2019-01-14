.class public Lcom/liulishuo/filedownloader/FileDownloadSampleListener;
.super Lcom/liulishuo/filedownloader/FileDownloadListener;
.source "FileDownloadSampleListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected blockComplete(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 37
    return-void
.end method

.method protected completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 42
    return-void
.end method

.method protected error(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 52
    return-void
.end method

.method protected paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "soFarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 47
    return-void
.end method

.method protected pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "soFarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 27
    return-void
.end method

.method protected progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "soFarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 32
    return-void
.end method

.method protected warn(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 57
    return-void
.end method
