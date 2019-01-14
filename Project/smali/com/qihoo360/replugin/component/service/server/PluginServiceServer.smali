.class public Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;
.super Ljava/lang/Object;
.source "PluginServiceServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;
    }
.end annotation


# static fields
.field private static final LOCKER:[B

.field private static final TAG:Ljava/lang/String; = "PluginServiceServer"

.field private static final WHAT_ON_START_COMMAND:I = 0x1


# instance fields
.field private mAttachBaseContextMethod:Ljava/lang/reflect/Method;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field final mProcesses:Lcom/qihoo360/replugin/utils/basic/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/qihoo360/replugin/component/service/server/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServiceConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mServicesByIntent:Lcom/qihoo360/replugin/utils/basic/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/qihoo360/replugin/component/service/server/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesByName:Lcom/qihoo360/replugin/utils/basic/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/qihoo360/replugin/component/service/server/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mStub:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->LOCKER:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mProcesses:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 93
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServiceConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 95
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByName:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 96
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByIntent:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 98
    new-instance v0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$1;-><init>(Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;

    invoke-direct {v0, p0}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;-><init>(Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mStub:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;
    .param p1, "x1"    # Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 67
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->installServiceLocked(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 67
    sget-object v0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->LOCKER:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    .line 67
    invoke-direct {p0}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->dump()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attachBaseContextLocked(Landroid/content/ContextWrapper;Landroid/content/Context;)V
    .locals 6
    .param p1, "cw"    # Landroid/content/ContextWrapper;
    .param p2, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mAttachBaseContextMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 531
    const-class v0, Landroid/content/ContextWrapper;

    const-string v3, "attachBaseContext"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mAttachBaseContextMethod:Ljava/lang/reflect/Method;

    .line 532
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mAttachBaseContextMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mAttachBaseContextMethod:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-class v0, Landroid/app/Service;

    const-string v1, "mApplication"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 538
    .local v0, "applicationField":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 540
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 542
    :cond_1
    return-void
.end method

.method private callConnectedMethodLocked(Lcom/qihoo360/loader2/mgr/IServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "conn"    # Lcom/qihoo360/loader2/mgr/IServiceConnection;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "b"    # Landroid/os/IBinder;

    .line 465
    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/qihoo360/loader2/mgr/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 471
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private cloneIntentLocked(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method private dump()Ljava/lang/String;
    .locals 8

    .line 644
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByName:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByName:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 648
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 651
    .local v0, "jsonArray":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByName:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 652
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/qihoo360/replugin/component/service/server/ServiceRecord;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 653
    .local v3, "key":Landroid/content/ComponentName;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 655
    .local v4, "value":Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 657
    .local v5, "serviceObj":Lorg/json/JSONObject;
    const-string v6, "className"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 658
    const-string v6, "process"

    invoke-virtual {v4}, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    const-string v6, "plugin"

    invoke-virtual {v4}, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->getPlugin()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 660
    const-string v6, "pitClassName"

    invoke-virtual {v4}, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->getPitComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/qihoo360/replugin/helper/JSONHelper;->putNoThrows(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 662
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 663
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/qihoo360/replugin/component/service/server/ServiceRecord;>;"
    .end local v3    # "key":Landroid/content/ComponentName;
    .end local v4    # "value":Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    .end local v5    # "serviceObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 645
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPitComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 595
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "pname":Ljava/lang/String;
    invoke-static {v0}, Lcom/qihoo360/replugin/component/utils/PluginClientHelper;->getProcessInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 598
    .local v1, "process":I
    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/qihoo360/replugin/component/service/server/PluginPitService;->makeComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2
.end method

.method private getServiceLocked(Landroid/content/Intent;)Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    .locals 2
    .param p1, "service"    # Landroid/content/Intent;

    .line 336
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 337
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByName:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v1, v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    return-object v1
.end method

.method private insertConnectionToRecords(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;Lcom/qihoo360/loader2/mgr/IServiceConnection;I)V
    .locals 4
    .param p1, "sr"    # Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    .param p2, "b"    # Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;
    .param p3, "connection"    # Lcom/qihoo360/loader2/mgr/IServiceConnection;
    .param p4, "flags"    # I

    .line 216
    new-instance v0, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;

    invoke-direct {v0, p2, p3, p4}, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;-><init>(Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;Lcom/qihoo360/loader2/mgr/IServiceConnection;I)V

    .line 217
    .local v0, "c":Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;
    invoke-interface {p3}, Lcom/qihoo360/loader2/mgr/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 220
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->connections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v2, v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 221
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;>;"
    if-nez v2, :cond_0

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 223
    iget-object v3, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->connections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v3, v1, v2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v3, p2, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->connections:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    invoke-virtual {v3, v0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v3, p2, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->client:Lcom/qihoo360/replugin/component/service/server/ProcessRecord;

    iget-object v3, v3, Lcom/qihoo360/replugin/component/service/server/ProcessRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v3, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServiceConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v3, v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    .line 235
    if-nez v2, :cond_1

    .line 236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 237
    iget-object v3, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServiceConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v3, v1, v2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method private installServiceIfNeededLocked(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)Z
    .locals 4
    .param p1, "sr"    # Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 390
    iget-object v0, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->service:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x1

    return v0

    .line 395
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$2;

    invoke-direct {v1, p0, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$2;-><init>(Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)V

    const/16 v2, 0x1770

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/base/ThreadUtils;->syncToMainThread(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 402
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 403
    return v0

    .line 405
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 406
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 408
    const-string v2, "ws001"

    const-string v3, "pss.isinl e:"

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    :cond_2
    return v0
.end method

.method private installServiceLocked(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)Z
    .locals 7
    .param p1, "sr"    # Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 417
    iget-object v0, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->plugin:Ljava/lang/String;

    invoke-static {v0}, Lcom/qihoo360/i/Factory;->queryPluginContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 418
    .local v0, "plgc":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 419
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 420
    const-string v2, "PluginServiceServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installServiceLocked(): Fetch Context Error! pn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->plugin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    return v1

    .line 424
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 425
    .local v2, "cl":Ljava/lang/ClassLoader;
    if-nez v2, :cond_2

    .line 427
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "psm.is: cl n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return v1

    .line 435
    :cond_2
    :try_start_0
    iget-object v3, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 441
    .local v3, "s":Landroid/app/Service;
    nop

    .line 440
    nop

    .line 445
    :try_start_1
    invoke-direct {p0, v3, v0}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->attachBaseContextLocked(Landroid/content/ContextWrapper;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    nop

    .line 452
    invoke-virtual {v3}, Landroid/app/Service;->onCreate()V

    .line 453
    iput-object v3, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->service:Landroid/app/Service;

    .line 456
    invoke-direct {p0}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->getPitComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 457
    .local v1, "pitCN":Landroid/content/ComponentName;
    iput-object v1, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->pitComponentName:Landroid/content/ComponentName;

    .line 458
    invoke-direct {p0, v1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->startPitService(Landroid/content/ComponentName;)V

    .line 459
    const/4 v4, 0x1

    return v4

    .line 446
    .end local v1    # "pitCN":Landroid/content/ComponentName;
    :catch_0
    move-exception v4

    .line 448
    .local v4, "e":Ljava/lang/Throwable;
    const-string v5, "ws001"

    const-string v6, "psm.is: abc e"

    invoke-static {v5, v6, v4}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    return v1

    .line 436
    .end local v3    # "s":Landroid/app/Service;
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 438
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "PluginServiceServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isl: ni f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->plugin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    return v1
.end method

.method private recycleServiceIfNeededLocked(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)V
    .locals 4
    .param p1, "sr"    # Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 477
    iget-boolean v0, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_1

    .line 478
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 479
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSM.recycleServiceIfNeededLocked(): Not Recycle because startRequested is true! sr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    return-void

    .line 484
    :cond_1
    invoke-virtual {p1}, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v0

    .line 485
    .local v0, "hasConn":Z
    if-eqz v0, :cond_3

    .line 486
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 487
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSM.recycleServiceIfNeededLocked(): Not Recycle because bindingCount > 0! sr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_2
    return-void

    .line 492
    :cond_3
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->recycleServiceLocked(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)V

    .line 493
    return-void
.end method

.method private recycleServiceLocked(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 498
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 499
    const-string v0, "ws001"

    const-string v1, "PSM.recycleServiceLocked(): Recycle Now!"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    iget-object v0, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->connections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 503
    .local v0, "conni":I
    :goto_0
    if-ltz v0, :cond_2

    .line 504
    iget-object v2, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->connections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v2, v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 505
    .local v2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;>;"
    const/4 v3, 0x0

    .line 505
    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 506
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;

    .line 509
    .local v4, "cr":Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;
    iput-boolean v1, v4, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;->serviceDead:Z

    .line 510
    iget-object v5, v4, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;->conn:Lcom/qihoo360/loader2/mgr/IServiceConnection;

    iget-object v6, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->callConnectedMethodLocked(Lcom/qihoo360/loader2/mgr/IServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 505
    .end local v4    # "cr":Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 503
    .end local v2    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;>;"
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 513
    .end local v0    # "conni":I
    :cond_2
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByName:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    iget-object v1, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByIntent:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    iget-object v1, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->bindings:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 517
    iget-object v0, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->bindings:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->clear()V

    .line 520
    :cond_3
    iget-object v0, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->service:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 523
    invoke-direct {p0}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->getPitComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 524
    .local v0, "pitCN":Landroid/content/ComponentName;
    iput-object v0, p1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->pitComponentName:Landroid/content/ComponentName;

    .line 525
    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->stopPitService(Landroid/content/ComponentName;)V

    .line 526
    return-void
.end method

.method private removeConnectionLocked(Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;)V
    .locals 7
    .param p1, "c"    # Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;

    .line 267
    iget-object v0, p1, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;->conn:Lcom/qihoo360/loader2/mgr/IServiceConnection;

    invoke-interface {v0}, Lcom/qihoo360/loader2/mgr/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 268
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p1, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;->binding:Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;

    .line 269
    .local v1, "b":Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;
    iget-object v2, v1, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->service:Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 272
    .local v2, "s":Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    iget-object v3, v2, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->connections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v3, v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 273
    .local v3, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;>;"
    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 276
    iget-object v4, v2, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->connections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v4, v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_0
    iget-object v4, v1, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->connections:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    invoke-virtual {v4, p1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 283
    iget-object v4, v1, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->client:Lcom/qihoo360/replugin/component/service/server/ProcessRecord;

    iget-object v4, v4, Lcom/qihoo360/replugin/component/service/server/ProcessRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    iget-object v4, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServiceConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v4, v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/util/ArrayList;

    .line 287
    if-eqz v3, :cond_1

    .line 288
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 290
    iget-object v4, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServiceConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v4, v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_1
    iget-object v4, v1, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->connections:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 296
    iget-object v4, v1, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

    iget-object v4, v4, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->apps:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    iget-object v5, v1, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->client:Lcom/qihoo360/replugin/component/service/server/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_2
    iget-boolean v4, p1, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;->serviceDead:Z

    if-eqz v4, :cond_3

    .line 301
    return-void

    .line 305
    :cond_3
    iget-object v4, v1, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

    iget-object v4, v4, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->apps:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->size()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

    iget-boolean v4, v4, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->hasBound:Z

    if-eqz v4, :cond_5

    .line 306
    iget-object v4, v1, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->hasBound:Z

    .line 307
    iget-object v4, v2, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->service:Landroid/app/Service;

    iget-object v5, v1, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

    iget-object v5, v5, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 308
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_4

    .line 309
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSM.removeConnectionLocked(): boundRef is 0, call onUnbind(), sr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_4
    iget v4, p1, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 314
    invoke-direct {p0, v2}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->recycleServiceIfNeededLocked(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)V

    goto :goto_0

    .line 317
    :cond_5
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_6

    .line 318
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSM.removeConnectionLocked(): Not unbind, sr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_6
    :goto_0
    return-void
.end method

.method private retrieveProcessRecordLocked(Landroid/os/Messenger;)Lcom/qihoo360/replugin/component/service/server/ProcessRecord;
    .locals 4
    .param p1, "client"    # Landroid/os/Messenger;

    .line 584
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 585
    .local v0, "callerPid":I
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mProcesses:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/component/service/server/ProcessRecord;

    .line 586
    .local v1, "pr":Lcom/qihoo360/replugin/component/service/server/ProcessRecord;
    if-nez v1, :cond_0

    .line 587
    new-instance v2, Lcom/qihoo360/replugin/component/service/server/ProcessRecord;

    invoke-direct {v2, v0, p1}, Lcom/qihoo360/replugin/component/service/server/ProcessRecord;-><init>(ILandroid/os/Messenger;)V

    move-object v1, v2

    .line 588
    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mProcesses:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_0
    return-object v1
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;)Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    .locals 11
    .param p1, "service"    # Landroid/content/Intent;

    .line 342
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 343
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByName:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v1, v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 344
    .local v1, "sr":Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    if-eqz v1, :cond_0

    .line 345
    return-object v1

    .line 348
    :cond_0
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 349
    .local v2, "fi":Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByIntent:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v3, v2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 350
    if-eqz v1, :cond_1

    .line 351
    return-object v1

    .line 353
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "pn":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/qihoo360/replugin/RePlugin;->isPluginInstalled(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 359
    const-string v5, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "psm.is: p n ex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-object v6

    .line 365
    :cond_2
    invoke-static {v3}, Lcom/qihoo360/i/Factory;->queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v5

    .line 366
    .local v5, "col":Lcom/qihoo360/replugin/component/ComponentList;
    if-nez v5, :cond_4

    .line 367
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_3

    .line 368
    const-string v7, "PluginServiceServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installServiceLocked(): Fetch Component List Error! pn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_3
    return-object v6

    .line 372
    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/qihoo360/replugin/component/ComponentList;->getService(Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 373
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    if-nez v7, :cond_6

    .line 374
    sget-boolean v8, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v8, :cond_5

    .line 375
    const-string v8, "PluginServiceServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installServiceLocked(): Not register! pn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_5
    return-object v6

    .line 382
    :cond_6
    new-instance v6, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    invoke-direct {v6, v0, v2, v7}, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;-><init>(Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;)V

    move-object v1, v6

    .line 383
    iget-object v6, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByName:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v6, v0, v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v6, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByIntent:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v6, v2, v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-object v1
.end method

.method private startPitService(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "pitCN"    # Landroid/content/ComponentName;

    .line 605
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "PluginServiceServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPitService: Start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 613
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    goto :goto_0

    .line 614
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private stopPitService(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "pitCN"    # Landroid/content/ComponentName;

    .line 623
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "PluginServiceServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPitService: Stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 628
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    goto :goto_0

    .line 631
    :catch_0
    move-exception v1

    .line 633
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method bindServiceLocked(Landroid/content/Intent;Lcom/qihoo360/loader2/mgr/IServiceConnection;ILandroid/os/Messenger;)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "connection"    # Lcom/qihoo360/loader2/mgr/IServiceConnection;
    .param p3, "flags"    # I
    .param p4, "client"    # Landroid/os/Messenger;

    .line 177
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->cloneIntentLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 179
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, p4}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->retrieveProcessRecordLocked(Landroid/os/Messenger;)Lcom/qihoo360/replugin/component/service/server/ProcessRecord;

    move-result-object v1

    .line 180
    .local v1, "callerPr":Lcom/qihoo360/replugin/component/service/server/ProcessRecord;
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->retrieveServiceLocked(Landroid/content/Intent;)Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    move-result-object v2

    .line 181
    .local v2, "sr":Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 182
    return v3

    .line 184
    :cond_0
    invoke-direct {p0, v2}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->installServiceIfNeededLocked(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 185
    return v3

    .line 189
    :cond_1
    invoke-virtual {v2, p1, v1}, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/qihoo360/replugin/component/service/server/ProcessRecord;)Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;

    move-result-object v3

    .line 190
    .local v3, "b":Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->insertConnectionToRecords(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;Lcom/qihoo360/loader2/mgr/IServiceConnection;I)V

    .line 193
    iget-object v4, v3, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

    iget-boolean v4, v4, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->hasBound:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 196
    iget-object v4, v3, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

    iget-object v4, v4, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-direct {p0, p2, v0, v4}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->callConnectedMethodLocked(Lcom/qihoo360/loader2/mgr/IServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v4, v3, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

    iget-object v4, v4, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->apps:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 200
    iget-object v4, v2, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->service:Landroid/app/Service;

    invoke-virtual {v4, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v4

    .line 201
    .local v4, "bd":Landroid/os/IBinder;
    iget-object v6, v3, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

    iput-boolean v5, v6, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->hasBound:Z

    .line 202
    iget-object v6, v3, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

    iput-object v4, v6, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 203
    if-eqz v4, :cond_3

    .line 205
    invoke-direct {p0, p2, v0, v4}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->callConnectedMethodLocked(Lcom/qihoo360/loader2/mgr/IServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 209
    .end local v4    # "bd":Landroid/os/IBinder;
    :cond_3
    :goto_0
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_4

    .line 210
    const-string v4, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PSM.bindService(): Bind! inb="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; fl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; sr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_4
    return v5
.end method

.method public getService()Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mStub:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$Stub;

    return-object v0
.end method

.method startServiceLocked(Landroid/content/Intent;Landroid/os/Messenger;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "client"    # Landroid/os/Messenger;

    .line 128
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->cloneIntentLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 131
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->retrieveServiceLocked(Landroid/content/Intent;)Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    move-result-object v1

    .line 132
    .local v1, "sr":Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 133
    return-object v2

    .line 135
    :cond_0
    invoke-direct {p0, v1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->installServiceIfNeededLocked(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    return-object v2

    .line 139
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->startRequested:Z

    .line 142
    iget-object v3, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServicesByName:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v3, v0, v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_2

    .line 145
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PSM.startService(): Start! in="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; sr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    iget-object v3, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 150
    .local v2, "message":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v3, "data":Landroid/os/Bundle;
    const-string v4, "intent"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 153
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iget-object v4, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-object v0
.end method

.method stopServiceLocked(Landroid/content/Intent;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 161
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->cloneIntentLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->getServiceLocked(Landroid/content/Intent;)Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    move-result-object v0

    .line 163
    .local v0, "sr":Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    return v1

    .line 166
    :cond_0
    iput-boolean v1, v0, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->startRequested:Z

    .line 167
    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->recycleServiceIfNeededLocked(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)V

    .line 169
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 170
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSM.stopService(): Stop! in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; sr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method unbindServiceLocked(Lcom/qihoo360/loader2/mgr/IServiceConnection;)Z
    .locals 5
    .param p1, "connection"    # Lcom/qihoo360/loader2/mgr/IServiceConnection;

    .line 245
    invoke-interface {p1}, Lcom/qihoo360/loader2/mgr/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 246
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->mServiceConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v1, v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 247
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 248
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_0

    .line 249
    const-string v3, "ws001"

    const-string v4, "PSM.unbindService(): clist is null!"

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    return v2

    .line 253
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 254
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;

    .line 255
    .local v3, "r":Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;
    invoke-direct {p0, v3}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->removeConnectionLocked(Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;)V

    .line 256
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2

    .line 258
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    .end local v3    # "r":Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;
    :cond_2
    goto :goto_0

    .line 261
    :cond_3
    const/4 v2, 0x1

    return v2
.end method
