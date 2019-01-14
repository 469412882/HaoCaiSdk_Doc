.class public Lcom/liulishuo/filedownloader/FileDownloadLine;
.super Ljava/lang/Object;
.source "FileDownloadLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;,
        Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wait(Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;)V
    .locals 3
    .param p1, "subscriber"    # Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;

    .line 145
    new-instance v0, Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectListener;

    invoke-direct {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectListener;-><init>(Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;)V

    .line 148
    .local v0, "connectListener":Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectListener;
    monitor-enter v0

    .line 149
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/FileDownloader;->bindService(Ljava/lang/Runnable;)V

    .line 151
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectListener;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 154
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    const-string v2, "Sorry, FileDownloader can not block the main thread, because the system is also  callbacks ServiceConnection#onServiceConnected method in the main thread."

    invoke-direct {v1, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    const-wide/32 v1, 0x30d40

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 165
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getSoFar(I)J
    .locals 3
    .param p1, "id"    # I

    .line 63
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloader;->getSoFar(I)J

    move-result-wide v0

    return-wide v0

    .line 67
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/FileDownloadLine$2;

    invoke-direct {v0, p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadLine$2;-><init>(Lcom/liulishuo/filedownloader/FileDownloadLine;I)V

    .line 81
    .local v0, "subscriber":Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/FileDownloadLine;->wait(Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;)V

    .line 83
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getStatus(ILjava/lang/String;)B
    .locals 2
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/FileDownloader;->getStatus(ILjava/lang/String;)B

    move-result v0

    return v0

    .line 121
    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, -0x3

    return v0

    .line 125
    :cond_1
    new-instance v0, Lcom/liulishuo/filedownloader/FileDownloadLine$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/liulishuo/filedownloader/FileDownloadLine$4;-><init>(Lcom/liulishuo/filedownloader/FileDownloadLine;ILjava/lang/String;)V

    .line 139
    .local v0, "subscriber":Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/FileDownloadLine;->wait(Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;)V

    .line 141
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1
.end method

.method public getTotal(I)J
    .locals 3
    .param p1, "id"    # I

    .line 90
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloader;->getTotal(I)J

    move-result-wide v0

    return-wide v0

    .line 94
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/FileDownloadLine$3;

    invoke-direct {v0, p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadLine$3;-><init>(Lcom/liulishuo/filedownloader/FileDownloadLine;I)V

    .line 108
    .local v0, "subscriber":Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/FileDownloadLine;->wait(Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;)V

    .line 110
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public startForeground(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 39
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/FileDownloader;->startForeground(ILandroid/app/Notification;)V

    .line 41
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/FileDownloadLine$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/liulishuo/filedownloader/FileDownloadLine$1;-><init>(Lcom/liulishuo/filedownloader/FileDownloadLine;ILandroid/app/Notification;)V

    .line 56
    .local v0, "subscriber":Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/FileDownloadLine;->wait(Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;)V

    .line 57
    return-void
.end method
