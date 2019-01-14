.class public Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;
.super Ljava/lang/Object;
.source "FileDownloadServiceProxy.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/FileDownloadServiceProxy$HolderClass;
    }
.end annotation


# instance fields
.field private final handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->PROCESS_NON_SEPARATE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/FileDownloadServiceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liulishuo/filedownloader/FileDownloadServiceProxy$1;

    .line 35
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;-><init>()V

    return-void
.end method

.method public static getConnectionListener()Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler$FileDownloadServiceSharedConnection;
    .locals 1

    .line 46
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    instance-of v0, v0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    check-cast v0, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler$FileDownloadServiceSharedConnection;

    return-object v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;
    .locals 1

    .line 42
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy$HolderClass;->access$100()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindStartByContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->bindStartByContext(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public bindStartByContext(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectedRunnable"    # Ljava/lang/Runnable;

    .line 117
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1, p2}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->bindStartByContext(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public clearAllTaskData()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->clearAllTaskData()V

    .line 148
    return-void
.end method

.method public clearTaskData(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 142
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->clearTaskData(I)Z

    move-result v0

    return v0
.end method

.method public getSofar(I)J
    .locals 2
    .param p1, "id"    # I

    .line 82
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->getSofar(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus(I)B
    .locals 1
    .param p1, "id"    # I

    .line 92
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->getStatus(I)B

    move-result v0

    return v0
.end method

.method public getTotal(I)J
    .locals 2
    .param p1, "id"    # I

    .line 87
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->getTotal(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isConnected()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isDownloading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1, p2}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->isDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->isIdle()Z

    move-result v0

    return v0
.end method

.method public pause(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 72
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->pause(I)Z

    move-result v0

    return v0
.end method

.method public pauseAllTasks()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->pauseAllTasks()V

    .line 98
    return-void
.end method

.method public setMaxNetworkThreadCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .line 137
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->setMaxNetworkThreadCount(I)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
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

    .line 65
    move-object v0, p0

    iget-object v1, v0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z

    move-result v1

    return v1
.end method

.method public startForeground(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 127
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1, p2}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->startForeground(ILandroid/app/Notification;)V

    .line 128
    return-void
.end method

.method public stopForeground(Z)V
    .locals 1
    .param p1, "removeNotification"    # Z

    .line 132
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->stopForeground(Z)V

    .line 133
    return-void
.end method

.method public unbindByContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->handler:Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;->unbindByContext(Landroid/content/Context;)V

    .line 123
    return-void
.end method
