.class public Lcom/qihoo360/replugin/component/service/PluginServiceClient;
.super Ljava/lang/Object;
.source "PluginServiceClient.java"


# static fields
.field static final PROCESS_UNKNOWN:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "PluginServiceClient"

.field private static sClientHandler:Landroid/os/Handler;

.field private static sClientMessenger:Landroid/os/Messenger;

.field private static sDispatcherManager:Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;

.field private static sServerFetcher:Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;

    invoke-direct {v0}, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;-><init>()V

    sput-object v0, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sServerFetcher:Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;

    .line 56
    new-instance v0, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;

    invoke-direct {v0}, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;-><init>()V

    sput-object v0, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sDispatcherManager:Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sClientHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Landroid/os/Messenger;

    sget-object v1, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sClientHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sClientMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sc"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 179
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;IZ)Z

    move-result v0

    return v0
.end method

.method public static bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;IZ)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sc"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "throwOnFail"    # Z

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qihoo360/replugin/component/utils/PluginClientHelper;->getComponentNameByContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    .line 188
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->getProcessByComponentName(Landroid/content/ComponentName;)I

    move-result v7

    .line 189
    .local v7, "process":I
    const v1, 0x7fffffff

    if-ne v7, v1, :cond_2

    .line 191
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSS.bindService(): Call SystemAPI: in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    if-eqz p4, :cond_1

    .line 195
    new-instance v1, Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem;

    invoke-direct {v1}, Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem;-><init>()V

    throw v1

    .line 197
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1

    .line 202
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 204
    sget-object v1, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sServerFetcher:Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;

    invoke-virtual {v1, v7}, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->fetchByProcess(I)Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v8

    .line 205
    .local v8, "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    const/4 v9, 0x0

    if-nez v8, :cond_3

    .line 207
    const-string v1, "ws001"

    const-string v2, "psc.bs: pss n"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v9

    .line 214
    :cond_3
    :try_start_0
    sget-object v1, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sDispatcherManager:Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;

    sget-object v4, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sClientHandler:Landroid/os/Handler;

    move-object v2, p2

    move-object v3, p0

    move v5, p3

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->get(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;II)Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    move-result-object v1

    .line 215
    .local v1, "sd":Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
    invoke-virtual {v1}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->getIServiceConnection()Lcom/qihoo360/loader2/mgr/IServiceConnection;

    move-result-object v2

    sget-object v3, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sClientMessenger:Landroid/os/Messenger;

    invoke-interface {v8, p1, v2, p3, v3}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;->bindService(Landroid/content/Intent;Lcom/qihoo360/loader2/mgr/IServiceConnection;ILandroid/os/Messenger;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .local v2, "r":I
    if-eqz v2, :cond_4

    const/4 v9, 0x1

    nop

    :cond_4
    return v9

    .line 218
    .end local v1    # "sd":Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
    .end local v2    # "r":I
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ws001"

    const-string v3, "psc.bs: pss e"

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v1    # "e":Ljava/lang/Throwable;
    return v9
.end method

.method private static getProcessByComponentName(Landroid/content/ComponentName;)I
    .locals 7
    .param p0, "cn"    # Landroid/content/ComponentName;

    .line 295
    const v0, 0x7fffffff

    if-nez p0, :cond_0

    .line 298
    return v0

    .line 300
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "pn":Ljava/lang/String;
    invoke-static {v1}, Lcom/qihoo360/i/Factory;->queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v2

    .line 303
    .local v2, "col":Lcom/qihoo360/replugin/component/ComponentList;
    if-nez v2, :cond_2

    .line 304
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 305
    const-string v3, "PluginServiceClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProcessByComponentName(): Fetch Component List Error! pn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_1
    return v0

    .line 309
    :cond_2
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/component/ComponentList;->getService(Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 310
    .local v3, "si":Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_4

    .line 311
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_3

    .line 312
    const-string v4, "PluginServiceClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProcessByComponentName(): Not register! pn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_3
    return v0

    .line 316
    :cond_4
    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/qihoo360/replugin/component/utils/PluginClientHelper;->getProcessInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 317
    .local v0, "p":I
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_5

    .line 318
    const-string v4, "PluginServiceClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProcessByComponentName(): Okay! Process="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; pn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_5
    return v0
.end method

.method private static getServiceComponentFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 328
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {v0}, Lcom/qihoo360/i/Factory;->fetchPluginName(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "plugin":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qihoo360/replugin/component/utils/PluginClientHelper;->getComponentNameByContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    .line 337
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 338
    invoke-static {v1}, Lcom/qihoo360/i/Factory;->queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v2

    .line 339
    .local v2, "componentList":Lcom/qihoo360/replugin/component/ComponentList;
    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {v2, p0, p1}, Lcom/qihoo360/replugin/component/ComponentList;->getServiceAndPluginByIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v3

    .line 342
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ServiceInfo;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 343
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 346
    .end local v2    # "componentList":Lcom/qihoo360/replugin/component/ComponentList;
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ServiceInfo;Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 347
    :cond_2
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_3

    .line 348
    const-string v2, "ws001"

    const-string v3, "PSS.startService(): No Component and no Action"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_3
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->startService(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "throwOnFail"    # Z

    .line 77
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->getServiceComponentFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 80
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->getProcessByComponentName(Landroid/content/ComponentName;)I

    move-result v1

    .line 81
    .local v1, "process":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 83
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSS.startService(): Call SystemAPI: in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    if-eqz p2, :cond_1

    .line 87
    new-instance v2, Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem;

    invoke-direct {v2}, Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem;-><init>()V

    throw v2

    .line 89
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    .line 94
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 96
    sget-object v2, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sServerFetcher:Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;

    invoke-virtual {v2, v1}, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->fetchByProcess(I)Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v2

    .line 97
    .local v2, "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 99
    const-string v4, "ws001"

    const-string v5, "psc.ss: pss n"

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v3

    .line 106
    :cond_3
    :try_start_0
    sget-object v4, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sClientMessenger:Landroid/os/Messenger;

    invoke-interface {v2, p1, v4}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;->startService(Landroid/content/Intent;Landroid/os/Messenger;)Landroid/content/ComponentName;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 107
    :catch_0
    move-exception v4

    .line 109
    .local v4, "e":Ljava/lang/Throwable;
    const-string v5, "ws001"

    const-string v6, "psc.ss: pss e"

    invoke-static {v5, v6, v4}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v4    # "e":Ljava/lang/Throwable;
    return-object v3
.end method

.method public static stopSelf(Landroid/app/Service;)V
    .locals 4
    .param p0, "s"    # Landroid/app/Service;

    .line 284
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-static {v0}, Lcom/qihoo360/loader2/PMF;->stopService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ws001"

    const-string v3, "pss.ss: pf f"

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static stopService(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 124
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->stopService(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method

.method public static stopService(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "throwOnFail"    # Z

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qihoo360/replugin/component/utils/PluginClientHelper;->getComponentNameByContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    .line 133
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->getProcessByComponentName(Landroid/content/ComponentName;)I

    move-result v1

    .line 134
    .local v1, "process":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 136
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 137
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSS.stopService(): Call SystemAPI: in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    if-eqz p2, :cond_1

    .line 140
    new-instance v2, Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem;

    invoke-direct {v2}, Lcom/qihoo360/replugin/component/utils/PluginClientHelper$ShouldCallSystem;-><init>()V

    throw v2

    .line 142
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v2

    return v2

    .line 147
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    sget-object v2, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sServerFetcher:Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;

    invoke-virtual {v2, v1}, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->fetchByProcess(I)Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v2

    .line 150
    .local v2, "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 152
    const-string v4, "ws001"

    const-string v5, "psc.sts: pss n"

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v3

    .line 159
    :cond_3
    :try_start_0
    sget-object v4, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sClientMessenger:Landroid/os/Messenger;

    invoke-interface {v2, p1, v4}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;->stopService(Landroid/content/Intent;Landroid/os/Messenger;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    nop

    :cond_4
    return v3

    .line 160
    :catch_0
    move-exception v4

    .line 162
    .local v4, "e":Ljava/lang/Throwable;
    const-string v5, "ws001"

    const-string v6, "psc.sts: pss e"

    invoke-static {v5, v6, v4}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .end local v4    # "e":Ljava/lang/Throwable;
    return v3
.end method

.method public static unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sc"    # Landroid/content/ServiceConnection;

    .line 234
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z

    move-result v0

    return v0
.end method

.method public static unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sc"    # Landroid/content/ServiceConnection;
    .param p2, "callSysFirst"    # Z

    .line 240
    if-eqz p2, :cond_1

    .line 242
    :try_start_0
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSS.unbindService(): First, We call SystemAPI: sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 252
    :cond_1
    :goto_0
    sget-object v0, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sDispatcherManager:Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;

    invoke-virtual {v0, p0, p1}, Lcom/qihoo360/replugin/component/service/PluginServiceDispatcherManager;->forget(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    move-result-object v0

    .line 253
    .local v0, "sd":Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 255
    const-string v2, "ws001"

    const-string v3, "psc.us: sd n"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v1

    .line 259
    :cond_2
    sget-object v2, Lcom/qihoo360/replugin/component/service/PluginServiceClient;->sServerFetcher:Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->getProcess()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/component/service/PluginServiceServerFetcher;->fetchByProcess(I)Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v2

    .line 260
    .local v2, "pss":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    if-nez v2, :cond_3

    .line 262
    const-string v3, "ws001"

    const-string v4, "psc.us: pss n"

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v1

    .line 267
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->getIServiceConnection()Lcom/qihoo360/loader2/mgr/IServiceConnection;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;->unbindService(Lcom/qihoo360/loader2/mgr/IServiceConnection;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    .line 268
    :catch_1
    move-exception v3

    .line 270
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "ws001"

    const-string v5, "psc.us: pss e"

    invoke-static {v4, v5, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v3    # "e":Ljava/lang/Throwable;
    return v1
.end method
