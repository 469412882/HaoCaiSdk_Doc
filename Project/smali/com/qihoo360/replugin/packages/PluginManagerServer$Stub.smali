.class Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;
.super Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;
.source "PluginManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/packages/PluginManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;


# direct methods
.method private constructor <init>(Lcom/qihoo360/replugin/packages/PluginManagerServer;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;->this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-direct {p0}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qihoo360/replugin/packages/PluginManagerServer;Lcom/qihoo360/replugin/packages/PluginManagerServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;
    .param p2, "x1"    # Lcom/qihoo360/replugin/packages/PluginManagerServer$1;

    .line 616
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;-><init>(Lcom/qihoo360/replugin/packages/PluginManagerServer;)V

    return-void
.end method


# virtual methods
.method public addToRunningPlugins(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "pluginName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 677
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;->this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-static {v1, p1, p2, p3}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$1000(Lcom/qihoo360/replugin/packages/PluginManagerServer;Ljava/lang/String;ILjava/lang/String;)V

    .line 678
    monitor-exit v0

    .line 679
    return-void

    .line 678
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRunningPlugins()Lcom/qihoo360/replugin/packages/PluginRunningList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 656
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;->this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-static {v1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$700(Lcom/qihoo360/replugin/packages/PluginManagerServer;)Lcom/qihoo360/replugin/packages/PluginRunningList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 657
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRunningProcessesByPlugin(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "pluginName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;->this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-static {v1, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$1100(Lcom/qihoo360/replugin/packages/PluginManagerServer;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 685
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public install(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 621
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;->this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-static {v1, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$200(Lcom/qihoo360/replugin/packages/PluginManagerServer;Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 622
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPluginRunning(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "process"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;->this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-static {v1, p1, p2}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$800(Lcom/qihoo360/replugin/packages/PluginManagerServer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 664
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public load()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;->this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-static {v1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$300(Lcom/qihoo360/replugin/packages/PluginManagerServer;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 629
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public syncRunningPlugins(Lcom/qihoo360/replugin/packages/PluginRunningList;)V
    .locals 2
    .param p1, "list"    # Lcom/qihoo360/replugin/packages/PluginRunningList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;->this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-static {v1, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$900(Lcom/qihoo360/replugin/packages/PluginManagerServer;Lcom/qihoo360/replugin/packages/PluginRunningList;)V

    .line 671
    monitor-exit v0

    .line 672
    return-void

    .line 671
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uninstall(Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 2
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 648
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;->this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-static {v1, p1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$600(Lcom/qihoo360/replugin/packages/PluginManagerServer;Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 650
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;->this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-static {v1}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$400(Lcom/qihoo360/replugin/packages/PluginManagerServer;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 636
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateUsed(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "used"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$100()[B

    move-result-object v0

    monitor-enter v0

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginManagerServer$Stub;->this$0:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-static {v1, p1, p2}, Lcom/qihoo360/replugin/packages/PluginManagerServer;->access$500(Lcom/qihoo360/replugin/packages/PluginManagerServer;Ljava/lang/String;Z)V

    .line 643
    monitor-exit v0

    .line 644
    return-void

    .line 643
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
