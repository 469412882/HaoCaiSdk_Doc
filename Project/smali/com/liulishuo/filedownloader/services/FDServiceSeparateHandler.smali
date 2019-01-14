.class public Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;
.super Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;
.source "FDServiceSeparateHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow$MessageReceiver;
.implements Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;


# instance fields
.field private final callbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 1
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

    .line 59
    .local p1, "wService":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/liulishuo/filedownloader/services/FileDownloadService;>;"
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;-><init>()V

    .line 39
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->callbackList:Landroid/os/RemoteCallbackList;

    .line 60
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->wService:Ljava/lang/ref/WeakReference;

    .line 61
    iput-object p2, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    .line 63
    invoke-static {}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->getImpl()Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->setReceiver(Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow$MessageReceiver;)V

    .line 64
    return-void
.end method

.method private declared-synchronized callback(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)I
    .locals 4
    .param p1, "snapShot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    .local v0, "n":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 47
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 48
    :try_start_1
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;

    invoke-interface {v3, p1}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;->callback(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "callback error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .end local v2    # "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->callbackList:Landroid/os/RemoteCallbackList;

    goto :goto_2

    :goto_1
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->callbackList:Landroid/os/RemoteCallbackList;

    :goto_2
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    nop

    .line 56
    monitor-exit p0

    return v0

    .line 44
    .end local v0    # "n":I
    .end local p1    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public checkDownloading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->isDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAllTaskData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->clearAllTaskData()V

    .line 147
    return-void
.end method

.method public clearTaskData(I)Z
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->clearTaskData(I)Z

    move-result v0

    return v0
.end method

.method public getSofar(I)J
    .locals 2
    .param p1, "downloadId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->getSoFar(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus(I)B
    .locals 1
    .param p1, "downloadId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->getStatus(I)B

    move-result v0

    return v0
.end method

.method public getTotal(I)J
    .locals 2
    .param p1, "downloadId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->getTotal(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isIdle()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->isIdle()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 155
    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->getImpl()Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->setReceiver(Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow$MessageReceiver;)V

    .line 161
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 151
    return-void
.end method

.method public pause(I)Z
    .locals 1
    .param p1, "downloadId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->pause(I)Z

    move-result v0

    return v0
.end method

.method public pauseAllTasks()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->pauseAll()V

    .line 98
    return-void
.end method

.method public receive(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 0
    .param p1, "snapShot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 165
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->callback(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)I

    .line 166
    return-void
.end method

.method public registerCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 69
    return-void
.end method

.method public setMaxNetworkThreadCount(I)Z
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    move-object v0, p0

    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->downloadManager:Lcom/liulishuo/filedownloader/services/FileDownloadManager;

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

    .line 88
    return-void
.end method

.method public startForeground(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->wService:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->wService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->wService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->startForeground(ILandroid/app/Notification;)V

    .line 130
    :cond_0
    return-void
.end method

.method public stopForeground(Z)V
    .locals 1
    .param p1, "removeNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->wService:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->wService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->wService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->stopForeground(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 74
    return-void
.end method
