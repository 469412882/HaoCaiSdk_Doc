.class public Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;
.super Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;
.source "FDServiceSharedHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler$FileDownloadServiceSharedConnection;
    }
.end annotation


# instance fields
.field private final downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

.field private final wService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/FileDownloadManager;)V
    .locals 0
    .param p2, "manager"    # Lcom/liulishuo/filedownloader/services/FileDownloadManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;",
            "Lcom/liulishuo/filedownloader/services/FileDownloadManager;",
            ")V"
        }
    .end annotation

    .line 37
    .local p1, "wService":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/liulishuo/filedownloader/services/FileDownloadService;>;"
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->wService:Ljava/lang/ref/WeakReference;

    .line 39
    iput-object p2, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    .line 40
    return-void
.end method


# virtual methods
.method public checkDownloading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->isDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAllTaskData()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->clearAllTaskData()V

    .line 121
    return-void
.end method

.method public clearTaskData(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 115
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->clearTaskData(I)Z

    move-result v0

    return v0
.end method

.method public getSofar(I)J
    .locals 2
    .param p1, "downloadId"    # I

    .line 81
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->getSoFar(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus(I)B
    .locals 1
    .param p1, "downloadId"    # I

    .line 91
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->getStatus(I)B

    move-result v0

    return v0
.end method

.method public getTotal(I)J
    .locals 2
    .param p1, "downloadId"    # I

    .line 86
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->getTotal(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isIdle()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->isIdle()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 137
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getConnectionListener()Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler$FileDownloadServiceSharedConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler$FileDownloadServiceSharedConnection;->onDisconnected()V

    .line 138
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 126
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getConnectionListener()Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler$FileDownloadServiceSharedConnection;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler$FileDownloadServiceSharedConnection;->onConnected(Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;)V

    .line 127
    return-void
.end method

.method public pause(I)Z
    .locals 1
    .param p1, "downloadId"    # I

    .line 66
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->pause(I)Z

    move-result v0

    return v0
.end method

.method public pauseAllTasks()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->pauseAll()V

    .line 72
    return-void
.end method

.method public registerCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;

    .line 44
    return-void
.end method

.method public setMaxNetworkThreadCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .line 76
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->setMaxNetworkThreadCount(I)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pathAsDirectory"    # Z
    .param p4, "callbackProgressTimes"    # I
    .param p5, "callbackProgressMinIntervalMillis"    # I
    .param p6, "autoRetryTimes"    # I
    .param p7, "forceReDownload"    # Z
    .param p8, "header"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .param p9, "isWifiRequired"    # Z

    .line 59
    move-object v0, p0

    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    .line 62
    return-void
.end method

.method public startForeground(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 101
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->wService:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->wService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->wService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->startForeground(ILandroid/app/Notification;)V

    .line 104
    :cond_0
    return-void
.end method

.method public stopForeground(Z)V
    .locals 1
    .param p1, "removeNotification"    # Z

    .line 108
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->wService:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->wService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->wService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->stopForeground(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;

    .line 48
    return-void
.end method
