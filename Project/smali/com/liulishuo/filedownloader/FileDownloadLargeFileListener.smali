.class public abstract Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;
.super Lcom/liulishuo/filedownloader/FileDownloadListener;
.source "FileDownloadLargeFileListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadListener;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 36
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadListener;-><init>(I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected connected(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;ZII)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "etag"    # Ljava/lang/String;
    .param p3, "isContinue"    # Z
    .param p4, "soFarBytes"    # I
    .param p5, "totalBytes"    # I

    .line 83
    return-void
.end method

.method protected connected(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;ZJJ)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "etag"    # Ljava/lang/String;
    .param p3, "isContinue"    # Z
    .param p4, "soFarBytes"    # J
    .param p6, "totalBytes"    # J

    .line 71
    return-void
.end method

.method protected paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "soFarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 146
    return-void
.end method

.method protected abstract paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V
.end method

.method protected pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "soFarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 57
    return-void
.end method

.method protected abstract pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V
.end method

.method protected progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "soFarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 101
    return-void
.end method

.method protected abstract progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V
.end method

.method protected retry(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "retryingTimes"    # I
    .param p4, "soFarBytes"    # I

    .line 126
    return-void
.end method

.method protected retry(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;IJ)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "retryingTimes"    # I
    .param p4, "soFarBytes"    # J

    .line 114
    return-void
.end method
