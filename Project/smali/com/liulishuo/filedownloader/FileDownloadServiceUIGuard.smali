.class Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;
.super Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;
.source "FileDownloadServiceUIGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<",
        "Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;",
        "Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 51
    const-class v0, Lcom/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;-><init>(Ljava/lang/Class;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected bridge synthetic asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->asInterface(Landroid/os/IBinder;)Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    move-result-object p1

    return-object p1
.end method

.method protected asInterface(Landroid/os/IBinder;)Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .line 61
    invoke-static {p1}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    move-result-object v0

    return-object v0
.end method

.method public clearAllTaskData()V
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-static {}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->clearAllTaskData()Z

    .line 284
    return-void

    .line 288
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->clearAllTaskData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public clearTaskData(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 267
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->clearTaskData(I)Z

    move-result v0

    return v0

    .line 272
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->clearTaskData(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic createCallback()Landroid/os/Binder;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->createCallback()Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;

    move-result-object v0

    return-object v0
.end method

.method protected createCallback()Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;
    .locals 1

    .line 56
    new-instance v0, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;-><init>()V

    return-object v0
.end method

.method public getSofar(I)J
    .locals 4
    .param p1, "id"    # I

    .line 144
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->getSofar(I)J

    move-result-wide v0

    return-wide v0

    .line 148
    :cond_0
    const-wide/16 v0, 0x0

    .line 150
    .local v0, "val":J
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v2, p1}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->getSofar(I)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 153
    goto :goto_0

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 155
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-wide v0
.end method

.method public getStatus(I)B
    .locals 2
    .param p1, "id"    # I

    .line 176
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->getStatus(I)B

    move-result v0

    return v0

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 182
    .local v0, "status":B
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v1, p1}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->getStatus(I)B

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 187
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getTotal(I)J
    .locals 4
    .param p1, "id"    # I

    .line 160
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->getTotal(I)J

    move-result-wide v0

    return-wide v0

    .line 164
    :cond_0
    const-wide/16 v0, 0x0

    .line 166
    .local v0, "val":J
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v2, p1}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->getTotal(I)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 171
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-wide v0
.end method

.method public isDownloading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->isDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 134
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v0, p1, p2}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->checkDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->isIdle()Z

    move-result v0

    return v0

    .line 214
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public pause(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 114
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->pause(I)Z

    move-result v0

    return v0

    .line 119
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->pause(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public pauseAllTasks()V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->pauseAllTasks()V

    .line 194
    return-void

    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->pauseAllTasks()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected bridge synthetic registerCallback(Landroid/os/IInterface;Landroid/os/Binder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    check-cast p1, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    check-cast p2, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->registerCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;)V

    return-void
.end method

.method protected registerCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;)V
    .locals 0
    .param p1, "service"    # Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;
    .param p2, "fileDownloadServiceCallback"    # Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->registerCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;)V

    .line 67
    return-void
.end method

.method public setMaxNetworkThreadCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .line 252
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->setMaxNetworkThreadCount(I)Z

    move-result v0

    return v0

    .line 257
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->setMaxNetworkThreadCount(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pathAsDirectory"    # Z
    .param p4, "callbackProgressTimes"    # I
    .param p5, "callbackProgressMinIntervalMillis"    # I
    .param p6, "autoRetryTimes"    # I
    .param p7, "forceReDownload"    # Z
    .param p8, "header"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .param p9, "isWifiRequired"    # Z

    .line 95
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {p1, p2, p3}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->start(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 100
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 109
    const/4 v1, 0x1

    return v1

    .line 103
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 104
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 106
    const/4 v2, 0x0

    return v2
.end method

.method public startForeground(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 224
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->startForeground(ILandroid/app/Notification;)V

    .line 226
    return-void

    .line 230
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v0, p1, p2}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public stopForeground(Z)V
    .locals 1
    .param p1, "removeNotification"    # Z

    .line 238
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->stopForeground(Z)V

    .line 240
    return-void

    .line 244
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->stopForeground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 248
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected bridge synthetic unregisterCallback(Landroid/os/IInterface;Landroid/os/Binder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    check-cast p1, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    check-cast p2, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;->unregisterCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;)V

    return-void
.end method

.method protected unregisterCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;)V
    .locals 0
    .param p1, "service"    # Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;
    .param p2, "fileDownloadServiceCallback"    # Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;->unregisterCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;)V

    .line 72
    return-void
.end method
