.class Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;
.super Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub;
.source "PluginServiceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    .line 544
    iput-object p1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;->this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    invoke-direct {p0}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Lcom/qihoo360/loader2/mgr/IServiceConnection;ILandroid/os/Messenger;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Lcom/qihoo360/loader2/mgr/IServiceConnection;
    .param p3, "flags"    # I
    .param p4, "client"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    invoke-static {}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;->this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->bindServiceLocked(Landroid/content/Intent;Lcom/qihoo360/loader2/mgr/IServiceConnection;ILandroid/os/Messenger;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    invoke-static {}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;->this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    invoke-static {v1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->access$200(Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startService(Landroid/content/Intent;Landroid/os/Messenger;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "client"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    invoke-static {}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 549
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;->this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    invoke-virtual {v1, p1, p2}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->startServiceLocked(Landroid/content/Intent;Landroid/os/Messenger;)Landroid/content/ComponentName;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 550
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopService(Landroid/content/Intent;Landroid/os/Messenger;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "client"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    invoke-static {}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;->this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    invoke-virtual {v1, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->stopServiceLocked(Landroid/content/Intent;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 557
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unbindService(Lcom/qihoo360/loader2/mgr/IServiceConnection;)Z
    .locals 2
    .param p1, "conn"    # Lcom/qihoo360/loader2/mgr/IServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    invoke-static {}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;->this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    invoke-virtual {v1, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->unbindServiceLocked(Lcom/qihoo360/loader2/mgr/IServiceConnection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 571
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
