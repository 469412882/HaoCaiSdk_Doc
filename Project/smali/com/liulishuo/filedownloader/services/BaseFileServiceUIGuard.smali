.class public abstract Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;
.super Ljava/lang/Object;
.source "BaseFileServiceUIGuard.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CA",
        "LLBACK:Landroid/os/Binder;",
        "INTERFACE::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/liulishuo/filedownloader/IFileDownloadServiceProxy;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private final BIND_CONTEXTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final callback:Landroid/os/Binder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCA",
            "LLBACK;"
        }
    .end annotation
.end field

.field private final connectedRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile service:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TINTERFACE;"
        }
    .end annotation
.end field

.field private final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final uiCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->uiCacheMap:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->BIND_CONTEXTS:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->connectedRunnableList:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->serviceClass:Ljava/lang/Class;

    .line 61
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->createCallback()Landroid/os/Binder;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->callback:Landroid/os/Binder;

    .line 62
    return-void
.end method

.method private releaseConnect(Z)V
    .locals 4
    .param p1, "isLost"    # Z

    .line 102
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->service:Landroid/os/IInterface;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->callback:Landroid/os/Binder;

    invoke-virtual {p0, v0, v1}, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->unregisterCallback(Landroid/os/IInterface;Landroid/os/Binder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "release connect resources %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->service:Landroid/os/IInterface;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->service:Landroid/os/IInterface;

    .line 114
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadEventPool;

    move-result-object v0

    new-instance v1, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;

    if-eqz p1, :cond_2

    sget-object v2, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->lost:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->disconnected:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    :goto_1
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->serviceClass:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;-><init>(Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->asyncPublishInNewThread(Lcom/liulishuo/filedownloader/event/IDownloadEvent;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TINTERFACE;"
        }
    .end annotation
.end method

.method public bindStartByContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->bindStartByContext(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public bindStartByContext(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectedRunnable"    # Ljava/lang/Runnable;

    .line 131
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isDownloaderProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fatal-Exception: You can\'t bind the FileDownloadService in :filedownloader process.\n It\'s the invalid operation, and is likely to cause unexpected problems.\n Maybe you want to use non-separate process mode for FileDownloader, More detail about non-separate mode, please move to wiki manually: https://github.com/lingochamp/FileDownloader/wiki/filedownloader.properties"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "bindStartByContext %s"

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->serviceClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "i":Landroid/content/Intent;
    if-eqz p2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->connectedRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->connectedRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->BIND_CONTEXTS:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 153
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->BIND_CONTEXTS:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    return-void
.end method

.method protected abstract createCallback()Landroid/os/Binder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCA",
            "LLBACK;"
        }
    .end annotation
.end method

.method protected getCallback()Landroid/os/Binder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCA",
            "LLBACK;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->callback:Landroid/os/Binder;

    return-object v0
.end method

.method protected getService()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TINTERFACE;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->service:Landroid/os/IInterface;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 210
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->getService()Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 68
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    invoke-virtual {p0, p2}, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->service:Landroid/os/IInterface;

    .line 70
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "onServiceConnected %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->service:Landroid/os/IInterface;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->service:Landroid/os/IInterface;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->callback:Landroid/os/Binder;

    invoke-virtual {p0, v0, v1}, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->registerCallback(Landroid/os/IInterface;Landroid/os/Binder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->connectedRunnableList:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    .local v0, "runnableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->connectedRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 84
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 85
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_1

    .line 87
    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadEventPool;

    move-result-object v1

    new-instance v2, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;

    sget-object v3, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->connected:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->serviceClass:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;-><init>(Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V

    .line 88
    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/FileDownloadEventPool;->asyncPublishInNewThread(Lcom/liulishuo/filedownloader/event/IDownloadEvent;)V

    .line 91
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 95
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "onServiceDisconnected %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->service:Landroid/os/IInterface;

    aput-object v3, v2, v1

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_0
    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->releaseConnect(Z)V

    .line 99
    return-void
.end method

.method protected popCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 196
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->uiCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected putCache(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 200
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    if-nez p1, :cond_0

    .line 201
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->uiCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-object v0
.end method

.method protected abstract registerCallback(Landroid/os/IInterface;Landroid/os/Binder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TINTERFACE;TCA",
            "LLBACK;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public startService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 184
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->serviceClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 186
    return-void
.end method

.method public unbindByContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    .local p0, "this":Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;, "Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard<TCALLBACK;TINTERFACE;>;"
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->BIND_CONTEXTS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 166
    :cond_0
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 167
    const-string v0, "unbindByContext %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->BIND_CONTEXTS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->BIND_CONTEXTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->releaseConnect(Z)V

    .line 177
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/BaseFileServiceUIGuard;->serviceClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 179
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 180
    return-void
.end method

.method protected abstract unregisterCallback(Landroid/os/IInterface;Landroid/os/Binder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TINTERFACE;TCA",
            "LLBACK;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
