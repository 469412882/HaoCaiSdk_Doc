.class Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;
.super Ljava/lang/Object;
.source "FileDownloadServiceSharedTransmit.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;
.implements Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler$FileDownloadServiceSharedConnection;


# static fields
.field private static final SERVICE_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final connectedRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;

    sput-object v0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->SERVICE_CLASS:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->connectedRunnableList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bindStartByContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->bindStartByContext(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public bindStartByContext(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectedRunnable"    # Ljava/lang/Runnable;

    .line 137
    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->connectedRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->connectedRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 144
    return-void
.end method

.method public clearAllTaskData()V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->clearAllTaskData()Z

    .line 194
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->clearAllTaskData()V

    .line 198
    return-void
.end method

.method public clearTaskData(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 184
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->clearTaskData(I)Z

    move-result v0

    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->clearTaskData(I)Z

    move-result v0

    return v0
.end method

.method public getSofar(I)J
    .locals 2
    .param p1, "id"    # I

    .line 79
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->getSofar(I)J

    move-result-wide v0

    return-wide v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->getSofar(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus(I)B
    .locals 1
    .param p1, "id"    # I

    .line 97
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->getStatus(I)B

    move-result v0

    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->getStatus(I)B

    move-result v0

    return v0
.end method

.method public getTotal(I)J
    .locals 2
    .param p1, "id"    # I

    .line 88
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->getTotal(I)J

    move-result-wide v0

    return-wide v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->getTotal(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isConnected()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDownloading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->isDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->checkDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->isIdle()Z

    move-result v0

    return v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->isIdle()Z

    move-result v0

    return v0
.end method

.method public onConnected(Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;)V
    .locals 5
    .param p1, "handler"    # Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    .line 204
    iput-object p1, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    .line 205
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->connectedRunnableList:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 207
    .local v0, "runnableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->connectedRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 209
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 210
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadEventPool;

    move-result-object v1

    new-instance v2, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;

    sget-object v3, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->connected:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    sget-object v4, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;-><init>(Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V

    .line 213
    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->asyncPublishInNewThread(Lcom/liulishuo/filedownloader/event/IDownloadEvent;)V

    .line 216
    return-void
.end method

.method public onDisconnected()V
    .locals 4

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    .line 221
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadEventPool;

    move-result-object v0

    new-instance v1, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;

    sget-object v2, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->disconnected:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    sget-object v3, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;-><init>(Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V

    .line 222
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->asyncPublishInNewThread(Lcom/liulishuo/filedownloader/event/IDownloadEvent;)V

    .line 225
    return-void
.end method

.method public pause(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 61
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->pause(I)Z

    move-result v0

    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->pause(I)Z

    move-result v0

    return v0
.end method

.method public pauseAllTasks()V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->pauseAllTasks()V

    .line 108
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->pauseAllTasks()V

    .line 112
    return-void
.end method

.method public setMaxNetworkThreadCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .line 175
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->setMaxNetworkThreadCount(I)Z

    move-result v0

    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->setMaxNetworkThreadCount(I)Z

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

    .line 50
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {p1, p2, p3}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->start(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 54
    :cond_0
    move-object v0, p0

    iget-object v1, v0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    .line 56
    const/4 v1, 0x1

    return v1
.end method

.method public startForeground(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 155
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->startForeground(ILandroid/app/Notification;)V

    .line 157
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->startForeground(ILandroid/app/Notification;)V

    .line 161
    return-void
.end method

.method public stopForeground(Z)V
    .locals 1
    .param p1, "removeNotification"    # Z

    .line 165
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/DownloadServiceNotConnectedHelper;->stopForeground(Z)V

    .line 167
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;->stopForeground(Z)V

    .line 171
    return-void
.end method

.method public unbindByContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadServiceSharedTransmit;->handler:Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    .line 151
    return-void
.end method
