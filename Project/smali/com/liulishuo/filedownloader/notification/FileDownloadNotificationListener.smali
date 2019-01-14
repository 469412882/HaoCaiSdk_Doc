.class public abstract Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;
.super Lcom/liulishuo/filedownloader/FileDownloadListener;
.source "FileDownloadNotificationListener.java"


# instance fields
.field private final helper:Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;

    .line 35
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadListener;-><init>()V

    .line 36
    const-string v0, "FileDownloadNotificationHelper must not null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iput-object p1, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->helper:Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;

    .line 38
    return-void
.end method


# virtual methods
.method public addNotificationItem(I)V
    .locals 2
    .param p1, "downloadId"    # I

    .line 46
    if-nez p1, :cond_0

    .line 47
    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->get(I)Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    .line 51
    .local v0, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;
    if-eqz v0, :cond_1

    .line 52
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->addNotificationItem(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 54
    :cond_1
    return-void
.end method

.method public addNotificationItem(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 2
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 57
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->disableNotification(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->create(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;

    move-result-object v0

    .line 62
    .local v0, "n":Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;
    if-eqz v0, :cond_1

    .line 64
    iget-object v1, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->helper:Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->add(Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;)V

    .line 66
    :cond_1
    return-void
.end method

.method protected blockComplete(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 162
    return-void
.end method

.method protected completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 166
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->destroyNotification(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 167
    return-void
.end method

.method protected abstract create(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;
.end method

.method public destroyNotification(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 3
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 74
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->disableNotification(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->helper:Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v1

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getStatus()B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->showIndeterminate(II)V

    .line 80
    iget-object v0, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->helper:Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;

    .line 81
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->remove(I)Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;

    move-result-object v0

    .line 82
    .local v0, "n":Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;
    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->interceptCancel(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;->cancel()V

    .line 85
    :cond_1
    return-void
.end method

.method protected disableNotification(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Z
    .locals 1
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected error(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 176
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->destroyNotification(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 177
    return-void
.end method

.method public getHelper()Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->helper:Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;

    return-object v0
.end method

.method protected interceptCancel(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;)Z
    .locals 1
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "notificationItem"    # Lcom/liulishuo/filedownloader/notification/BaseNotificationItem;

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method protected paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "soFarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 171
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->destroyNotification(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 172
    return-void
.end method

.method protected pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "soFarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 139
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->addNotificationItem(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->showIndeterminate(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 141
    return-void
.end method

.method protected progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "soFarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->showProgress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V

    .line 152
    return-void
.end method

.method protected retry(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "retryingTimes"    # I
    .param p4, "soFarBytes"    # I

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Lcom/liulishuo/filedownloader/FileDownloadListener;->retry(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;II)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->showIndeterminate(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 158
    return-void
.end method

.method public showIndeterminate(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 3
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 88
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->disableNotification(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->helper:Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v1

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getStatus()B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->showIndeterminate(II)V

    .line 93
    return-void
.end method

.method public showProgress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 4
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "soFarBytes"    # I
    .param p3, "totalBytes"    # I

    .line 97
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->disableNotification(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->helper:Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v1

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getSmallFileSoFarBytes()I

    move-result v2

    .line 102
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getSmallFileTotalBytes()I

    move-result v3

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationHelper;->showProgress(III)V

    .line 103
    return-void
.end method

.method protected started(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 145
    invoke-super {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadListener;->started(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/notification/FileDownloadNotificationListener;->showIndeterminate(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 147
    return-void
.end method

.method protected warn(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 187
    return-void
.end method
