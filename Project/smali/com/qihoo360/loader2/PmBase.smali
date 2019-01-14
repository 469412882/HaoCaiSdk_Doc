.class Lcom/qihoo360/loader2/PmBase;
.super Ljava/lang/Object;
.source "PmBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/PmBase$DynamicClass;
    }
.end annotation


# static fields
.field static final ACTION_NEW_PLUGIN:Ljava/lang/String; = "ACTION_NEW_PLUGIN"

.field private static final CONTAINER_PROVIDER_PART:Ljava/lang/String; = ".loader.p.Provider"

.field static final CONTAINER_SERVICE_PART:Ljava/lang/String; = ".loader.s.Service"

.field private static final LOCKER:[B

.field private static final TAG:Ljava/lang/String; = "PmBase"


# instance fields
.field mAll:Lcom/qihoo360/loader2/Builder$PxAll;

.field private final mBuiltinModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/i/IModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBuiltinPlugins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/replugin/IHostBinderFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private mClassLoader:Ljava/lang/ClassLoader;

.field mClient:Lcom/qihoo360/loader2/PluginProcessPer;

.field private final mContainerActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainerProviders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainerServices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

.field private mDefaultPluginName:Ljava/lang/String;

.field private final mDynamicClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/PmBase$DynamicClass;",
            ">;"
        }
    .end annotation
.end field

.field private mHostSvc:Lcom/qihoo360/loader2/PmHostSvc;

.field mInternal:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

.field mLocal:Lcom/qihoo360/loader2/PluginCommImpl;

.field mLocalCookie:J

.field private mNeedRestart:Z

.field private final mPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/Plugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/qihoo360/loader2/PmBase;->LOCKER:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mContainerActivities:Ljava/util/HashSet;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mContainerProviders:Ljava/util/HashSet;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mContainerServices:Ljava/util/HashSet;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mBuiltinModules:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mBuiltinPlugins:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDynamicClasses:Ljava/util/HashMap;

    .line 204
    iput-object p1, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    .line 209
    sget v0, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/qihoo360/loader2/PluginManager;->isPluginProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    :cond_0
    sget v0, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    if-ne v0, v1, :cond_1

    .line 212
    const-string v0, "N1"

    .line 212
    .local v0, "suffix":Ljava/lang/String;
    goto :goto_0

    .line 214
    .end local v0    # "suffix":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .restart local v0    # "suffix":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mContainerProviders:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".loader.p.Provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mContainerServices:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".loader.s.Service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v0    # "suffix":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/qihoo360/loader2/PluginProcessPer;

    sget v1, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    iget-object v2, p0, Lcom/qihoo360/loader2/PmBase;->mContainerActivities:Ljava/util/HashSet;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/qihoo360/loader2/PluginProcessPer;-><init>(Landroid/content/Context;Lcom/qihoo360/loader2/PmBase;ILjava/util/HashSet;)V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mClient:Lcom/qihoo360/loader2/PluginProcessPer;

    .line 226
    new-instance v0, Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-direct {v0, p1, p0}, Lcom/qihoo360/loader2/PluginCommImpl;-><init>(Landroid/content/Context;Lcom/qihoo360/loader2/PmBase;)V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mLocal:Lcom/qihoo360/loader2/PluginCommImpl;

    .line 229
    new-instance v0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-direct {v0, p0}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;-><init>(Lcom/qihoo360/loader2/PmBase;)V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mInternal:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    .line 230
    return-void
.end method

.method static final cleanIntentPluginParams(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 194
    :try_start_0
    const-string v0, "compatible"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 195
    const-string v0, "plugin"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 196
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 200
    :goto_0
    return-void
.end method

.method private final initForClient()V
    .locals 2

    .line 311
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "ws001"

    const-string v1, "list plugins from persistent process"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->connectToHostSvc()V

    .line 319
    invoke-direct {p0}, Lcom/qihoo360/loader2/PmBase;->refreshPluginsFromHostSvc()V

    .line 320
    return-void
.end method

.method private final initForServer()V
    .locals 4

    .line 277
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "ws001"

    const-string v1, "search plugins from file system"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    new-instance v0, Lcom/qihoo360/loader2/PmHostSvc;

    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/qihoo360/loader2/PmHostSvc;-><init>(Landroid/content/Context;Lcom/qihoo360/loader2/PmBase;)V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mHostSvc:Lcom/qihoo360/loader2/PmHostSvc;

    .line 282
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mHostSvc:Lcom/qihoo360/loader2/PmHostSvc;

    invoke-static {v0}, Lcom/qihoo360/loader2/PluginProcessMain;->installHost(Lcom/qihoo360/loader2/IPluginHost;)V

    .line 283
    const-wide/16 v0, 0x4268

    invoke-static {v0, v1}, Lcom/qihoo360/loader2/PluginProcessMain;->schedulePluginProcessLoop(J)V

    .line 286
    new-instance v0, Lcom/qihoo360/loader2/Builder$PxAll;

    invoke-direct {v0}, Lcom/qihoo360/loader2/Builder$PxAll;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mAll:Lcom/qihoo360/loader2/Builder$PxAll;

    .line 287
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mAll:Lcom/qihoo360/loader2/Builder$PxAll;

    invoke-static {v0, v1}, Lcom/qihoo360/loader2/Builder;->builder(Landroid/content/Context;Lcom/qihoo360/loader2/Builder$PxAll;)V

    .line 288
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mAll:Lcom/qihoo360/loader2/Builder$PxAll;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/Builder$PxAll;->getPlugins()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qihoo360/loader2/PmBase;->refreshPluginMap(Ljava/util/List;)V

    .line 293
    :try_start_0
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->load()Ljava/util/List;

    move-result-object v0

    .line 294
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    if-eqz v0, :cond_1

    .line 297
    invoke-direct {p0, v0}, Lcom/qihoo360/loader2/PmBase;->refreshPluginMap(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    :cond_1
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lst.p: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private final isNeedToUpdate(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;)Z"
        }
    .end annotation

    .line 363
    .local p1, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    if-eqz p1, :cond_1

    .line 364
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 365
    .local v1, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "upinfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 366
    const/4 v0, 0x1

    return v0

    .line 368
    .end local v1    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_0
    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final loadDefaultClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

    .line 896
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 897
    invoke-static {}, Lcom/qihoo360/loader2/PluginManager;->isPluginProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 898
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 899
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plugin class loader: not found default plugin,  in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    return-object v1

    .line 905
    :cond_1
    invoke-virtual {v0}, Lcom/qihoo360/loader2/Plugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 906
    .local v2, "cl":Ljava/lang/ClassLoader;
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_2

    .line 907
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plugin class loader: in="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_2
    nop

    .line 911
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 924
    goto :goto_0

    .line 912
    :catch_0
    move-exception v3

    .line 913
    .local v3, "e":Ljava/lang/Throwable;
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_4

    .line 914
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/ClassNotFoundException;

    if-eqz v4, :cond_3

    .line 915
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_4

    .line 916
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugin classloader not found className="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 919
    :cond_3
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_4

    .line 920
    const-string v4, "ws001"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_5

    .line 926
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plugin class loader: c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", loader="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_5
    return-object v1
.end method

.method private final loadProviderClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

    .line 854
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 855
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 856
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plugin provider loader: not found default plugin,  in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    return-object v1

    .line 861
    :cond_1
    iget-object v2, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 862
    .local v2, "providers":[Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_6

    array-length v3, v2

    if-gtz v3, :cond_2

    goto :goto_1

    .line 869
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 871
    .local v3, "provider":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/qihoo360/loader2/Plugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 872
    .local v4, "cl":Ljava/lang/ClassLoader;
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_3

    .line 873
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin provider loader: in="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_3
    nop

    .line 877
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 882
    goto :goto_0

    .line 878
    :catch_0
    move-exception v5

    .line 879
    .local v5, "e":Ljava/lang/Throwable;
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_4

    .line 880
    const-string v6, "ws001"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_5

    .line 884
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin provider loader: c="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", loader="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_5
    return-object v1

    .line 863
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :cond_6
    :goto_1
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_7

    .line 864
    const-string v3, "ws001"

    const-string v4, "plugin provider loader: manifest not item found"

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_7
    return-object v1
.end method

.method private final loadServiceClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

    .line 812
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 813
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 814
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plugin service loader: not found default plugin,  in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    return-object v1

    .line 819
    :cond_1
    iget-object v2, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 820
    .local v2, "services":[Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_6

    array-length v3, v2

    if-gtz v3, :cond_2

    goto :goto_1

    .line 827
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 829
    .local v3, "service":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/qihoo360/loader2/Plugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 830
    .local v4, "cl":Ljava/lang/ClassLoader;
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_3

    .line 831
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin service loader: in="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_3
    nop

    .line 835
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 840
    goto :goto_0

    .line 836
    :catch_0
    move-exception v5

    .line 837
    .local v5, "e":Ljava/lang/Throwable;
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_4

    .line 838
    const-string v6, "ws001"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_5

    .line 842
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin service loader: c="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", loader="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_5
    return-object v1

    .line 821
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "service":Ljava/lang/String;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :cond_6
    :goto_1
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_7

    .line 822
    const-string v3, "ws001"

    const-string v4, "plugin service loader: manifest not item found"

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_7
    return-object v1
.end method

.method private putPluginObject(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/loader2/Plugin;)V
    .locals 4
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "plugin"    # Lcom/qihoo360/loader2/Plugin;

    .line 395
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 427
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 396
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 397
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u5185\u7f6e\u63d2\u4ef6\u5217\u8868\u4e2d\u5df2\u7ecf\u6709"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u9700\u8981\u770b\u770b\u8c01\u7684\u7248\u672c\u53f7\u5927\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/loader2/Plugin;

    .line 402
    .local v0, "existedPlugin":Lcom/qihoo360/loader2/Plugin;
    if-nez v0, :cond_3

    .line 403
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/qihoo360/loader2/Plugin;

    .line 406
    :cond_3
    iget-object v1, v0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 407
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_4

    .line 408
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65b0\u4f20\u5165\u7684\u7eafAPK\u63d2\u4ef6, name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", \u7248\u672c\u53f7\u6bd4\u8f83\u5927,ver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\u4ee5TA\u4e3a\u51c6\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_4
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 415
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 418
    :cond_5
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_6

    .line 419
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65b0\u4f20\u5165\u7684\u7eafAPK\u63d2\u4ef6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u7248\u672c\u53f7\u8fd8\u6ca1\u6709\u5185\u7f6e\u7684\u5927\uff0c\u4ec0\u4e48\u90fd\u4e0d\u505a\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v0    # "existedPlugin":Lcom/qihoo360/loader2/Plugin;
    :cond_6
    :goto_1
    nop

    .line 430
    :cond_7
    :goto_2
    return-void
.end method

.method private final refreshPluginMap(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p1, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    if-nez p1, :cond_0

    .line 380
    return-void

    .line 382
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 383
    .local v1, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-static {v1}, Lcom/qihoo360/loader2/Plugin;->build(Lcom/qihoo360/replugin/model/PluginInfo;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v2

    .line 384
    .local v2, "plugin":Lcom/qihoo360/loader2/Plugin;
    invoke-direct {p0, v1, v2}, Lcom/qihoo360/loader2/PmBase;->putPluginObject(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/loader2/Plugin;)V

    .line 385
    .end local v1    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    .end local v2    # "plugin":Lcom/qihoo360/loader2/Plugin;
    goto :goto_0

    .line 386
    :cond_1
    return-void
.end method

.method private refreshPluginsFromHostSvc()V
    .locals 5

    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/qihoo360/loader2/IPluginHost;->listPlugins()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 333
    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lst.p: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x0

    .line 338
    .local v1, "updatedPlugins":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    invoke-direct {p0, v0}, Lcom/qihoo360/loader2/PmBase;->isNeedToUpdate(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 340
    const-string v2, "ws001"

    const-string v3, "plugins need to perform update operations"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->updateAllPlugins()Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 346
    goto :goto_1

    .line 344
    :catch_1
    move-exception v2

    .line 345
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 349
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 350
    invoke-direct {p0, v1}, Lcom/qihoo360/loader2/PmBase;->refreshPluginMap(Ljava/util/List;)V

    goto :goto_2

    .line 352
    :cond_2
    invoke-direct {p0, v0}, Lcom/qihoo360/loader2/PmBase;->refreshPluginMap(Ljava/util/List;)V

    .line 354
    :goto_2
    return-void
.end method

.method private final registerReceiverAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .line 631
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 632
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/qihoo360/loader2/PmBase$1;

    invoke-direct {v2, p0, p1}, Lcom/qihoo360/loader2/PmBase$1;-><init>(Lcom/qihoo360/loader2/PmBase;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 652
    return-void
.end method


# virtual methods
.method final addBuiltinModule(Ljava/lang/String;Ljava/lang/Class;Lcom/qihoo360/i/IModule;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "module"    # Lcom/qihoo360/i/IModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/qihoo360/i/IModule;",
            ">;",
            "Lcom/qihoo360/i/IModule;",
            ")V"
        }
    .end annotation

    .line 485
    .local p2, "modc":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/qihoo360/i/IModule;>;"
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mBuiltinModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 486
    .local v0, "modules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/i/IModule;>;"
    if-nez v0, :cond_0

    .line 487
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 488
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mBuiltinModules:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-void
.end method

.method final addDynamicClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "defClass"    # Ljava/lang/Class;

    .line 494
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDynamicClass: class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " def="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDynamicClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    const/4 v0, 0x0

    return v0

    .line 500
    :cond_1
    new-instance v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qihoo360/loader2/PmBase$DynamicClass;-><init>(Lcom/qihoo360/loader2/PmBase$1;)V

    .line 501
    .local v0, "dc":Lcom/qihoo360/loader2/PmBase$DynamicClass;
    iput-object p2, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->plugin:Ljava/lang/String;

    .line 502
    iput-object p3, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->classType:Ljava/lang/String;

    .line 503
    iput-object p4, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->className:Ljava/lang/String;

    .line 504
    iput-object p5, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->defClass:Ljava/lang/Class;

    .line 505
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mDynamicClasses:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const/4 v1, 0x1

    return v1
.end method

.method final attach()V
    .locals 5

    .line 435
    :try_start_0
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v0

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    iget-object v3, p0, Lcom/qihoo360/loader2/PmBase;->mClient:Lcom/qihoo360/loader2/PluginProcessPer;

    iget-object v4, p0, Lcom/qihoo360/loader2/PmBase;->mDefaultPluginName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/qihoo360/loader2/IPluginHost;->attachPluginProcess(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDefaultPluginName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c.n.a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method final callAppCreate()V
    .locals 4

    .line 546
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPersistentCookie()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qihoo360/loader2/PmBase;->mLocalCookie:J

    .line 569
    :cond_0
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 570
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial local cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qihoo360/loader2/PmBase;->mLocalCookie:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_1
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 622
    const-string v0, "ACTION_NEW_PLUGIN"

    invoke-direct {p0, v0}, Lcom/qihoo360/loader2/PmBase;->registerReceiverAction(Ljava/lang/String;)V

    .line 623
    const-string v0, "ACTION_UNINSTALL_PLUGIN"

    invoke-direct {p0, v0}, Lcom/qihoo360/loader2/PmBase;->registerReceiverAction(Ljava/lang/String;)V

    .line 625
    :cond_2
    return-void
.end method

.method final callAttach()V
    .locals 5

    .line 451
    const-class v0, Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mClassLoader:Ljava/lang/ClassLoader;

    .line 454
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/loader2/Plugin;

    .line 455
    .local v1, "p":Lcom/qihoo360/loader2/Plugin;
    iget-object v2, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qihoo360/loader2/PmBase;->mClassLoader:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/qihoo360/loader2/PmBase;->mLocal:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v1, v2, v3, v4}, Lcom/qihoo360/loader2/Plugin;->attach(Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;)V

    .line 456
    .end local v1    # "p":Lcom/qihoo360/loader2/Plugin;
    goto :goto_0

    .line 459
    :cond_0
    invoke-static {}, Lcom/qihoo360/loader2/PluginManager;->isPluginProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDefaultPluginName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mDefaultPluginName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/loader2/Plugin;

    .line 463
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    if-eqz v0, :cond_2

    .line 464
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/qihoo360/loader2/Plugin;->load(IZ)Z

    move-result v1

    .line 465
    .local v1, "rc":Z
    if-nez v1, :cond_1

    .line 466
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1

    .line 467
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load default plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qihoo360/loader2/PmBase;->mDefaultPluginName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1
    if-eqz v1, :cond_2

    .line 471
    iput-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

    .line 472
    iget-object v2, p0, Lcom/qihoo360/loader2/PmBase;->mClient:Lcom/qihoo360/loader2/PluginProcessPer;

    invoke-virtual {v2, v0}, Lcom/qihoo360/loader2/PluginProcessPer;->init(Lcom/qihoo360/loader2/Plugin;)V

    .line 477
    .end local v0    # "p":Lcom/qihoo360/loader2/Plugin;
    .end local v1    # "rc":Z
    :cond_2
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 932
    sget-boolean v0, Lcom/qihoo360/replugin/RePluginInternal;->FOR_DEV:Z

    if-eqz v0, :cond_14

    .line 935
    const/4 v0, 0x0

    .line 936
    .local v0, "load":Z
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    .line 936
    .end local v0    # "load":Z
    .local v3, "load":Z
    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v4, p3, v0

    .line 937
    .local v4, "a":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 938
    invoke-static {v4}, Lcom/qihoo360/i/Factory;->queryPluginContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 939
    .local v0, "c":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin.c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    return-void

    .line 942
    .end local v0    # "c":Landroid/content/Context;
    :cond_0
    const-string v5, "--load"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 943
    const/4 v3, 0x1

    .line 936
    .end local v4    # "a":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 950
    .end local v3    # "load":Z
    :cond_2
    const/4 v0, 0x0

    .line 951
    .local v0, "load":Z
    array-length v1, p3

    move v3, v0

    const/4 v0, 0x0

    .line 951
    .end local v0    # "load":Z
    .restart local v3    # "load":Z
    :goto_1
    const/high16 v4, -0x80000000

    if-ge v0, v1, :cond_5

    aget-object v5, p3, v0

    .line 952
    .local v5, "a":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 954
    :try_start_0
    new-instance v0, Lcom/qihoo360/loader2/PluginBinderInfo;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/qihoo360/loader2/PluginBinderInfo;-><init>(I)V

    .line 955
    .local v0, "info":Lcom/qihoo360/loader2/PluginBinderInfo;
    invoke-static {v5, v4, v0}, Lcom/qihoo360/loader2/MP;->startPluginProcess(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    .end local v0    # "info":Lcom/qihoo360/loader2/PluginBinderInfo;
    goto :goto_2

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 959
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 961
    :cond_3
    const-string v4, "--start-plugin-process"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 962
    const/4 v3, 0x1

    .line 951
    .end local v5    # "a":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 969
    .end local v3    # "load":Z
    :cond_5
    array-length v0, p3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_8

    aget-object v3, p3, v1

    .line 970
    .local v3, "a":Ljava/lang/String;
    const-string v5, "--reason"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 971
    const-string v0, "--- Reason ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    sget-object v0, Lcom/qihoo360/loader2/Plugin;->sLoadedReasons:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 973
    sget-object v0, Lcom/qihoo360/loader2/Plugin;->sLoadedReasons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 974
    .local v1, "reason":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    .end local v1    # "reason":Ljava/lang/String;
    goto :goto_4

    .line 977
    :cond_6
    return-void

    .line 969
    .end local v3    # "a":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 984
    :cond_8
    array-length v0, p3

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_b

    aget-object v3, p3, v1

    .line 985
    .restart local v3    # "a":Ljava/lang/String;
    const-string v5, "--binder-reason"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 986
    const-string v0, "--- Binder Reason ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    sget-object v0, Lcom/qihoo360/loader2/MP;->sBinderReasons:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 988
    sget-object v0, Lcom/qihoo360/loader2/MP;->sBinderReasons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 989
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binder: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    sget-object v2, Lcom/qihoo360/loader2/MP;->sBinderReasons:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_6

    .line 993
    :cond_9
    return-void

    .line 984
    .end local v3    # "a":Ljava/lang/String;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1000
    :cond_b
    const/4 v0, 0x0

    .line 1001
    .local v0, "start":Z
    const-string v1, ""

    .line 1002
    .local v1, "plugin":Ljava/lang/String;
    const-string v3, ""

    .line 1003
    .local v3, "activity":Ljava/lang/String;
    array-length v5, p3

    :goto_7
    if-ge v2, v5, :cond_f

    aget-object v6, p3, v2

    .line 1004
    .local v6, "a":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1005
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1006
    move-object v1, v6

    .line 1007
    goto :goto_8

    .line 1009
    :cond_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1010
    move-object v3, v6

    .line 1011
    goto :goto_8

    .line 1014
    :cond_d
    const-string v7, "--start"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1015
    const/4 v0, 0x1

    .line 1003
    .end local v6    # "a":Ljava/lang/String;
    :cond_e
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1018
    :cond_f
    if-eqz v0, :cond_12

    .line 1019
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1020
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1021
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1022
    iget-object v5, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v1, v3, v4}, Lcom/qihoo360/i/Factory;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1023
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_9

    .line 1024
    :cond_10
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_11

    .line 1025
    const-string v2, "ws001"

    const-string v4, "need {plugin} and {activity}"

    invoke-static {v2, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_11
    :goto_9
    return-void

    .line 1032
    .end local v0    # "start":Z
    .end local v1    # "plugin":Ljava/lang/String;
    .end local v3    # "activity":Ljava/lang/String;
    :cond_12
    invoke-static {p0, p1, p2, p3}, Lcom/qihoo360/replugin/utils/ReflectUtils;->dumpObject(Ljava/lang/Object;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1035
    const-string v0, "--- plugins V2 ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- plugins.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/loader2/Plugin;

    .line 1038
    .local v1, "p":Lcom/qihoo360/loader2/Plugin;
    iget-object v2, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1039
    .end local v1    # "p":Lcom/qihoo360/loader2/Plugin;
    goto :goto_a

    .line 1040
    :cond_13
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1042
    invoke-static {p1, p2, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1044
    const-string v0, "--- plugins.cached objects ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    invoke-static {p1, p2, p3}, Lcom/qihoo360/loader2/Plugin;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1048
    :cond_14
    return-void
.end method

.method final getBuiltinModules(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/i/IModule;",
            ">;"
        }
    .end annotation

    .line 1280
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mBuiltinModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method final getBuiltinPlugin(Ljava/lang/String;)Lcom/qihoo360/replugin/IHostBinderFetcher;
    .locals 2
    .param p1, "plugin"    # Ljava/lang/String;

    .line 1274
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mBuiltinPlugins:Ljava/util/HashMap;

    monitor-enter v0

    .line 1275
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mBuiltinPlugins:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/IHostBinderFetcher;

    monitor-exit v0

    return-object v1

    .line 1276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final getHostBinder()Landroid/os/IBinder;
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mHostSvc:Lcom/qihoo360/loader2/PmHostSvc;

    return-object v0
.end method

.method final getPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;

    .line 1059
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/loader2/Plugin;

    return-object v0
.end method

.method final getPluginByDynamicClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 537
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDynamicClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;

    .line 538
    .local v0, "dc":Lcom/qihoo360/loader2/PmBase$DynamicClass;
    if-eqz v0, :cond_0

    .line 539
    iget-object v1, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->plugin:Ljava/lang/String;

    return-object v1

    .line 541
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method final handleServiceCreated(Landroid/app/Service;)V
    .locals 4
    .param p1, "service"    # Landroid/app/Service;

    .line 1286
    :try_start_0
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v0

    sget v1, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    iget-object v2, p0, Lcom/qihoo360/loader2/PmBase;->mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

    iget-object v2, v2, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/qihoo360/loader2/IPluginHost;->regService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    goto :goto_0

    .line 1287
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "r.s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1301
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method final handleServiceDestroyed(Landroid/app/Service;)V
    .locals 4
    .param p1, "service"    # Landroid/app/Service;

    .line 1306
    :try_start_0
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v0

    sget v1, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    iget-object v2, p0, Lcom/qihoo360/loader2/PmBase;->mDefaultPlugin:Lcom/qihoo360/loader2/Plugin;

    iget-object v2, v2, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/qihoo360/loader2/IPluginHost;->unregService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    goto :goto_0

    .line 1307
    :catch_0
    move-exception v0

    .line 1309
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ur.s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1312
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method init()V
    .locals 5

    .line 234
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->getCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginCallbacks;->initPnPluginOverride()V

    .line 236
    sget-boolean v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->PERSISTENT_ENABLE:Z

    if-eqz v0, :cond_1

    .line 238
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/qihoo360/loader2/PmBase;->initForServer()V

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/qihoo360/loader2/PmBase;->initForClient()V

    goto :goto_0

    .line 247
    :cond_1
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isUIProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/qihoo360/loader2/PmBase;->initForServer()V

    .line 253
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/PmBase;->attach()V

    goto :goto_0

    .line 257
    :cond_2
    invoke-direct {p0}, Lcom/qihoo360/loader2/PmBase;->initForClient()V

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-static {v0}, Lcom/qihoo360/loader2/PluginTable;->initPlugins(Ljava/util/Map;)V

    .line 265
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/loader2/Plugin;

    .line 267
    .local v1, "p":Lcom/qihoo360/loader2/Plugin;
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plugin: p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v1    # "p":Lcom/qihoo360/loader2/Plugin;
    goto :goto_1

    .line 270
    :cond_3
    return-void
.end method

.method final insertNewPlugin(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 1112
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 1113
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert new plugin: info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PmBase;->LOCKER:[B

    monitor-enter v0

    .line 1118
    :try_start_0
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->getCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qihoo360/replugin/RePluginCallbacks;->isPluginBlocked(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1119
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 1120
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert new plugin: plugin is blocked, in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_1
    monitor-exit v0

    return-void

    .line 1125
    :cond_2
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/loader2/Plugin;

    .line 1129
    .local v1, "p":Lcom/qihoo360/loader2/Plugin;
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v3}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_0

    .line 1132
    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/qihoo360/loader2/Plugin;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1134
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_4

    .line 1135
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert new plugin: failed cause plugin has loaded, plugin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_4
    iput-boolean v2, p0, Lcom/qihoo360/loader2/PmBase;->mNeedRestart:Z

    .line 1139
    monitor-exit v0

    return-void

    .line 1143
    :cond_5
    :goto_0
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_6

    .line 1144
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert new plugin: ok: plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_6
    invoke-static {p1}, Lcom/qihoo360/loader2/Plugin;->build(Lcom/qihoo360/replugin/model/PluginInfo;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v2

    .line 1147
    .local v2, "plugin":Lcom/qihoo360/loader2/Plugin;
    iget-object v3, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qihoo360/loader2/PmBase;->mClassLoader:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lcom/qihoo360/loader2/PmBase;->mLocal:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v2, v3, v4, v5}, Lcom/qihoo360/loader2/Plugin;->attach(Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;)V

    .line 1150
    invoke-direct {p0, p1, v2}, Lcom/qihoo360/loader2/PmBase;->putPluginObject(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/loader2/Plugin;)V

    .line 1151
    .end local v1    # "p":Lcom/qihoo360/loader2/Plugin;
    .end local v2    # "plugin":Lcom/qihoo360/loader2/Plugin;
    monitor-exit v0

    .line 1152
    return-void

    .line 1151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final installBuiltinPlugin(Ljava/lang/String;Lcom/qihoo360/replugin/IHostBinderFetcher;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "p"    # Lcom/qihoo360/replugin/IHostBinderFetcher;

    .line 444
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mBuiltinPlugins:Ljava/util/HashMap;

    monitor-enter v0

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mBuiltinPlugins:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final isActivity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mContainerActivities:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final isDynamicClass(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 517
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDynamicClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;

    .line 519
    .local v0, "dc":Lcom/qihoo360/loader2/PmBase$DynamicClass;
    if-eqz v0, :cond_0

    .line 520
    iget-object v1, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->plugin:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 523
    .end local v0    # "dc":Lcom/qihoo360/loader2/PmBase$DynamicClass;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final loadAppPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;
    .locals 3
    .param p1, "plugin"    # Ljava/lang/String;

    .line 1078
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/loader2/Plugin;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qihoo360/loader2/PmBase;->loadPlugin(Lcom/qihoo360/loader2/Plugin;IZ)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    return-object v0
.end method

.method final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 10
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 661
    const-class v0, Lcom/qihoo360/replugin/component/service/server/PluginPitService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 663
    const-string v0, "PmBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadClass: Loading PitService Class... clz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    const-class v0, Lcom/qihoo360/replugin/component/service/server/PluginPitService;

    return-object v0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mContainerActivities:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 670
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mClient:Lcom/qihoo360/loader2/PluginProcessPer;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PluginProcessPer;->resolveActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 671
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    .line 672
    return-object v0

    .line 677
    :cond_2
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p m hlc u d a o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-class v1, Lcom/qihoo360/replugin/component/dummy/DummyActivity;

    return-object v1

    .line 683
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mContainerServices:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 684
    invoke-direct {p0, p1}, Lcom/qihoo360/loader2/PmBase;->loadServiceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 685
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_4

    .line 686
    return-object v0

    .line 691
    :cond_4
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p m hlc u d s o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-class v1, Lcom/qihoo360/replugin/component/dummy/DummyService;

    return-object v1

    .line 697
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mContainerProviders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 698
    invoke-direct {p0, p1}, Lcom/qihoo360/loader2/PmBase;->loadProviderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 699
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_6

    .line 700
    return-object v0

    .line 705
    :cond_6
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p m hlc u d p o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-class v1, Lcom/qihoo360/replugin/component/dummy/DummyProvider;

    return-object v1

    .line 711
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDynamicClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;

    .line 712
    .local v0, "dc":Lcom/qihoo360/loader2/PmBase$DynamicClass;
    if-eqz v0, :cond_16

    .line 713
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 714
    .local v1, "context":Landroid/content/Context;
    iget-object v2, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->plugin:Ljava/lang/String;

    invoke-static {v2}, Lcom/qihoo360/loader2/PluginDesc;->get(Ljava/lang/String;)Lcom/qihoo360/loader2/PluginDesc;

    move-result-object v2

    .line 716
    .local v2, "desc":Lcom/qihoo360/loader2/PluginDesc;
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_9

    .line 717
    const-string v3, "loadClass"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "desc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    if-eqz v2, :cond_8

    .line 719
    const-string v3, "loadClass"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "desc.isLarge()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/qihoo360/loader2/PluginDesc;->isLarge()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_8
    const-string v3, "loadClass"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RePlugin.isPluginDexExtracted("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->plugin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->plugin:Ljava/lang/String;

    invoke-static {v5}, Lcom/qihoo360/replugin/RePlugin;->isPluginDexExtracted(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_9
    if-eqz v2, :cond_b

    .line 726
    invoke-virtual {v2}, Lcom/qihoo360/loader2/PluginDesc;->getPluginName()Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "plugin":Ljava/lang/String;
    invoke-static {v3}, Lcom/qihoo360/loader2/PluginTable;->getPluginInfo(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v4

    if-nez v4, :cond_b

    .line 728
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_a

    .line 729
    const-string v4, "loadClass"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found, return DynamicClassProxyActivity.class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_a
    const-class v4, Lcom/qihoo360/replugin/component/activity/DynamicClassProxyActivity;

    return-object v4

    .line 737
    .end local v3    # "plugin":Ljava/lang/String;
    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/qihoo360/loader2/PluginDesc;->isLarge()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->plugin:Ljava/lang/String;

    invoke-static {v3}, Lcom/qihoo360/replugin/RePlugin;->isPluginDexExtracted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_0

    :cond_c
    const/4 v3, 0x0

    .line 738
    .local v3, "needStartLoadingActivity":Z
    :goto_0
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_d

    .line 739
    const-string v4, "loadClass"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needStartLoadingActivity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_d
    if-eqz v3, :cond_e

    .line 742
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 743
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 745
    new-instance v5, Landroid/content/ComponentName;

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.qihoo360.loader2.updater.PluginLoadingActivity2"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 746
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 749
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_e
    iget-object v4, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->plugin:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/qihoo360/loader2/PmBase;->loadAppPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v4

    .line 750
    .local v4, "p":Lcom/qihoo360/loader2/Plugin;
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_f

    .line 751
    const-string v5, "loadClass"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_f
    const-wide/16 v5, 0x12c

    if-eqz v4, :cond_11

    .line 755
    :try_start_0
    invoke-virtual {v4}, Lcom/qihoo360/loader2/Plugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    iget-object v8, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 756
    .local v7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_10

    .line 759
    new-instance v8, Lcom/qihoo360/loader2/PmBase$2;

    invoke-direct {v8, p0, v1}, Lcom/qihoo360/loader2/PmBase$2;-><init>(Lcom/qihoo360/loader2/PmBase;Landroid/content/Context;)V

    invoke-static {v8, v5, v6}, Lcom/qihoo360/mobilesafe/api/Tasks;->postDelayed2Thread(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :cond_10
    return-object v7

    .line 771
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    .line 773
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p m hlc dc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    .end local v5    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 777
    :cond_11
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_12

    .line 778
    const-string v7, "loadClass"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u52a0\u8f7d "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->plugin:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " \u5931\u8d25"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_12
    new-instance v7, Lcom/qihoo360/loader2/PmBase$3;

    invoke-direct {v7, p0, v1}, Lcom/qihoo360/loader2/PmBase$3;-><init>(Lcom/qihoo360/loader2/PmBase;Landroid/content/Context;)V

    invoke-static {v7, v5, v6}, Lcom/qihoo360/mobilesafe/api/Tasks;->postDelayed2Thread(Ljava/lang/Runnable;J)Z

    .line 788
    :goto_1
    const-string v5, "ws001"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p m hlc dc failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " tp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->classType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " df="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->defClass:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v5, "activity"

    iget-object v6, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->classType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 792
    const-class v5, Lcom/qihoo360/replugin/component/dummy/DummyActivity;

    return-object v5

    .line 793
    :cond_13
    const-string v5, "service"

    iget-object v6, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->classType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 794
    const-class v5, Lcom/qihoo360/replugin/component/dummy/DummyService;

    return-object v5

    .line 795
    :cond_14
    const-string v5, "provider"

    iget-object v6, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->classType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 796
    const-class v5, Lcom/qihoo360/replugin/component/dummy/DummyProvider;

    return-object v5

    .line 798
    :cond_15
    iget-object v5, v0, Lcom/qihoo360/loader2/PmBase$DynamicClass;->defClass:Ljava/lang/Class;

    return-object v5

    .line 802
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "desc":Lcom/qihoo360/loader2/PluginDesc;
    .end local v3    # "needStartLoadingActivity":Z
    .end local v4    # "p":Lcom/qihoo360/loader2/Plugin;
    :cond_16
    invoke-direct {p0, p1}, Lcom/qihoo360/loader2/PmBase;->loadDefaultClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method final loadDexPlugin(Ljava/lang/String;Lcom/qihoo360/loader2/PluginCommImpl;)Lcom/qihoo360/loader2/Plugin;
    .locals 3
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "pm"    # Lcom/qihoo360/loader2/PluginCommImpl;

    .line 1073
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/loader2/Plugin;

    iget-object v2, p0, Lcom/qihoo360/loader2/PmBase;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2, p2}, Lcom/qihoo360/loader2/Plugin;->cloneAndReattach(Landroid/content/Context;Lcom/qihoo360/loader2/Plugin;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 1074
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qihoo360/loader2/PmBase;->loadPlugin(Lcom/qihoo360/loader2/Plugin;IZ)Lcom/qihoo360/loader2/Plugin;

    move-result-object v1

    return-object v1
.end method

.method final loadPackageInfoPlugin(Ljava/lang/String;Lcom/qihoo360/loader2/PluginCommImpl;)Lcom/qihoo360/loader2/Plugin;
    .locals 3
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "pm"    # Lcom/qihoo360/loader2/PluginCommImpl;

    .line 1063
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/loader2/Plugin;

    iget-object v2, p0, Lcom/qihoo360/loader2/PmBase;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2, p2}, Lcom/qihoo360/loader2/Plugin;->cloneAndReattach(Landroid/content/Context;Lcom/qihoo360/loader2/Plugin;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 1064
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qihoo360/loader2/PmBase;->loadPlugin(Lcom/qihoo360/loader2/Plugin;IZ)Lcom/qihoo360/loader2/Plugin;

    move-result-object v1

    return-object v1
.end method

.method final loadPlugin(Lcom/qihoo360/loader2/Plugin;IZ)Lcom/qihoo360/loader2/Plugin;
    .locals 4
    .param p1, "p"    # Lcom/qihoo360/loader2/Plugin;
    .param p2, "loadType"    # I
    .param p3, "useCache"    # Z

    .line 1090
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1091
    return-object v0

    .line 1093
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/qihoo360/loader2/Plugin;->load(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1095
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pmb.lp: f to l. lt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return-object v0

    .line 1099
    :cond_1
    return-object p1
.end method

.method final loadPlugin(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/loader2/PluginCommImpl;IZ)Lcom/qihoo360/loader2/Plugin;
    .locals 3
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "pm"    # Lcom/qihoo360/loader2/PluginCommImpl;
    .param p3, "loadType"    # I
    .param p4, "useCache"    # Z

    .line 1083
    invoke-static {p1}, Lcom/qihoo360/loader2/Plugin;->build(Lcom/qihoo360/replugin/model/PluginInfo;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 1084
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qihoo360/loader2/PmBase;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2, p2}, Lcom/qihoo360/loader2/Plugin;->attach(Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;)V

    .line 1085
    invoke-virtual {p0, v0, p3, p4}, Lcom/qihoo360/loader2/PmBase;->loadPlugin(Lcom/qihoo360/loader2/Plugin;IZ)Lcom/qihoo360/loader2/Plugin;

    move-result-object v1

    return-object v1
.end method

.method final loadResourcePlugin(Ljava/lang/String;Lcom/qihoo360/loader2/PluginCommImpl;)Lcom/qihoo360/loader2/Plugin;
    .locals 3
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "pm"    # Lcom/qihoo360/loader2/PluginCommImpl;

    .line 1068
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/loader2/Plugin;

    iget-object v2, p0, Lcom/qihoo360/loader2/PmBase;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2, p2}, Lcom/qihoo360/loader2/Plugin;->cloneAndReattach(Landroid/content/Context;Lcom/qihoo360/loader2/Plugin;Ljava/lang/ClassLoader;Lcom/qihoo360/loader2/PluginCommImpl;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 1069
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/qihoo360/loader2/PmBase;->loadPlugin(Lcom/qihoo360/loader2/Plugin;IZ)Lcom/qihoo360/loader2/Plugin;

    move-result-object v1

    return-object v1
.end method

.method final lookupPlugin(Ljava/lang/ClassLoader;)Lcom/qihoo360/loader2/Plugin;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 1103
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/loader2/Plugin;

    .line 1104
    .local v1, "p":Lcom/qihoo360/loader2/Plugin;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qihoo360/loader2/Plugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1105
    return-object v1

    .line 1107
    .end local v1    # "p":Lcom/qihoo360/loader2/Plugin;
    :cond_0
    goto :goto_0

    .line 1108
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final newPluginFound(Lcom/qihoo360/replugin/model/PluginInfo;Z)V
    .locals 3
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "persistNeedRestart"    # Z

    .line 1156
    invoke-static {p1}, Lcom/qihoo360/loader2/PluginTable;->updatePlugin(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 1159
    invoke-virtual {p0, p1}, Lcom/qihoo360/loader2/PmBase;->insertNewPlugin(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 1162
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/qihoo360/loader2/PluginStatusController;->setStatus(Ljava/lang/String;II)V

    .line 1164
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    iget-boolean p2, p0, Lcom/qihoo360/loader2/PmBase;->mNeedRestart:Z

    .line 1170
    :cond_0
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p.m. n p f n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " b1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " b2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qihoo360/loader2/PmBase;->mNeedRestart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qihoo360.loader2.ACTION_NEW_PLUGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "plugin_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1176
    const-string v1, "persist_need_restart"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1177
    const-string v1, "self_need_restart"

    iget-boolean v2, p0, Lcom/qihoo360/loader2/PmBase;->mNeedRestart:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1178
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1179
    return-void
.end method

.method final pluginUninstalled(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 1182
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 1183
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear plugin cache. pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mPlugins:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    :cond_1
    invoke-static {p1}, Lcom/qihoo360/loader2/PluginTable;->removeInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 1195
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/loader2/Plugin;->queryCachedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/loader2/Plugin;->clearCachedPlugin(Ljava/lang/String;)V

    .line 1196
    return-void
.end method

.method final removeDynamicClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase;->mDynamicClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    return-void
.end method

.method final startPluginProcessLocked(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;
    .locals 7
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "process"    # I
    .param p3, "info"    # Lcom/qihoo360/loader2/PluginBinderInfo;

    .line 1199
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 1200
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start plugin process: plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_0
    iget v0, p3, Lcom/qihoo360/loader2/PluginBinderInfo;->request:I

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    if-ne v0, v1, :cond_1

    .line 1206
    if-ne p2, v2, :cond_1

    .line 1207
    const/4 p2, -0x1

    .line 1210
    :cond_1
    iget v0, p3, Lcom/qihoo360/loader2/PluginBinderInfo;->request:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1211
    if-ne p2, v2, :cond_2

    .line 1212
    const/4 p2, -0x1

    .line 1218
    :cond_2
    const-wide/16 v0, 0x4268

    invoke-static {v0, v1}, Lcom/qihoo360/loader2/PluginProcessMain;->schedulePluginProcessLoop(J)V

    .line 1221
    invoke-static {p1, p2, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->probePluginClient(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v0

    .line 1222
    .local v0, "client":Lcom/qihoo360/loader2/IPluginClient;
    if-eqz v0, :cond_4

    .line 1223
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_3

    .line 1224
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start plugin process: probe client ok, already running, plugin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_3
    return-object v0

    .line 1230
    :cond_4
    move v1, v2

    .line 1232
    .local v1, "index":I
    :try_start_0
    invoke-static {p1, p2}, Lcom/qihoo360/loader2/PluginProcessMain;->allocProcess(Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    .line 1233
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_5

    .line 1234
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start plugin process: alloc process ok, plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    :cond_5
    goto :goto_0

    .line 1236
    :catch_0
    move-exception v2

    .line 1238
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a.p.p: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1242
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    .line 1243
    invoke-static {v1}, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->isCustomPluginProcess(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1244
    invoke-static {v1}, Lcom/qihoo360/loader2/PluginManager;->isPluginProcess(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1245
    return-object v3

    .line 1249
    :cond_6
    iget-object v2, p0, Lcom/qihoo360/loader2/PmBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/qihoo360/loader2/PluginProviderStub;->proxyStartPluginProcess(Landroid/content/Context;I)Z

    move-result v2

    .line 1250
    .local v2, "rc":Z
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_7

    .line 1251
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start plugin process: start process ok, plugin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_7
    if-nez v2, :cond_8

    .line 1254
    return-object v3

    .line 1258
    :cond_8
    invoke-static {p1, p2, p3}, Lcom/qihoo360/loader2/PluginProcessMain;->probePluginClient(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v0

    .line 1259
    if-nez v0, :cond_9

    .line 1261
    const-string v4, "ws001"

    const-string v5, "spp pc n"

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return-object v3

    .line 1266
    :cond_9
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_a

    .line 1267
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start plugin process: probe client ok, plugin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p3, Lcom/qihoo360/loader2/PluginBinderInfo;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_a
    return-object v0
.end method
