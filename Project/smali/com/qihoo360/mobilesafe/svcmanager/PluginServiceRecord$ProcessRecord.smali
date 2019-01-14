.class Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;
.super Ljava/lang/Object;
.source "PluginServiceRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessRecord"
.end annotation


# instance fields
.field final deathMonitor:Landroid/os/IBinder;

.field final pid:I

.field private refCount:I

.field final synthetic this$0:Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;


# direct methods
.method private constructor <init>(Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "this$0"    # Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;
    .param p2, "pid"    # I
    .param p3, "deathMonitor"    # Landroid/os/IBinder;

    .line 58
    iput-object p1, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->this$0:Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p2, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->pid:I

    .line 60
    iput-object p3, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->deathMonitor:Landroid/os/IBinder;

    .line 62
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p3, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error when linkToDeath: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->refCount:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;ILandroid/os/IBinder;Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/os/IBinder;
    .param p4, "x3"    # Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$1;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;-><init>(Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;ILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;

    .line 51
    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->decrementRef()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;

    .line 51
    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->incrementRef()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;

    .line 51
    iget v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->refCount:I

    return v0
.end method

.method private decrementRef()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->refCount:I

    return v0
.end method

.method private incrementRef()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->refCount:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->this$0:Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->mPluginName:Ljava/lang/String;

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->this$0:Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;

    iget-object v1, v1, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord;->mServiceName:Ljava/lang/String;

    iget v2, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceRecord$ProcessRecord;->pid:I

    invoke-static {v0, v1, v2}, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceManager;->onRefProcessDied(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    return-void
.end method
