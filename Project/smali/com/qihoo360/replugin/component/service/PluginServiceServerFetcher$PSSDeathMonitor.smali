.class final Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher$PSSDeathMonitor;
.super Ljava/lang/Object;
.source "PluginServiceServerFetcher.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PSSDeathMonitor"
.end annotation


# instance fields
.field final mProcess:I

.field final mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;ILandroid/os/IBinder;)V
    .locals 0
    .param p2, "process"    # I
    .param p3, "service"    # Landroid/os/IBinder;

    .line 92
    iput-object p1, p0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher$PSSDeathMonitor;->this$0:Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p2, p0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher$PSSDeathMonitor;->mProcess:I

    .line 94
    iput-object p3, p0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher$PSSDeathMonitor;->mService:Landroid/os/IBinder;

    .line 95
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 99
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "psc.dm: d, rm p "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher$PSSDeathMonitor;->mProcess:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->access$000()[B

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher$PSSDeathMonitor;->this$0:Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;

    invoke-static {v1}, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->access$100(Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;)Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    move-result-object v1

    iget v2, p0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher$PSSDeathMonitor;->mProcess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
