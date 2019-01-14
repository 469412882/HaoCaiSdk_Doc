.class public Lcom/qihoo360/loader2/PluginCommImpl;
.super Ljava/lang/Object;
.source "PluginCommImpl.java"


# static fields
.field private static final CONTAINER_PROVIDER_AUTHORITY_PART:Ljava/lang/String; = ".loader.p.pr"

.field static final INTENT_KEY_THEME_ID:Ljava/lang/String; = "__themeId"


# instance fields
.field mContext:Landroid/content/Context;

.field mPluginMgr:Lcom/qihoo360/loader2/PmBase;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/qihoo360/loader2/PmBase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/qihoo360/loader2/PmBase;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    .line 76
    return-void
.end method


# virtual methods
.method public fetchPluginName(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 539
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 541
    const-string v0, "main"

    return-object v0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->lookupPlugin(Ljava/lang/ClassLoader;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 544
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    if-nez v0, :cond_1

    .line 546
    const/4 v1, 0x0

    return-object v1

    .line 548
    :cond_1
    iget-object v1, v0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 561
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->loadAppPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 562
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    if-nez v0, :cond_1

    .line 563
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 564
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACM: bindActivity: may be invalid plugin name or load plugin failed: plugin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 569
    :cond_1
    const/4 v1, 0x0

    .line 572
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 573
    iget-object v2, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v2, p2}, Lcom/qihoo360/replugin/component/ComponentList;->getActivity(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_0

    .line 576
    :cond_2
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3}, Lcom/qihoo360/replugin/component/utils/IntentMatcherHelper;->getActivityInfo(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 578
    :goto_0
    return-object v1
.end method

.method public isPluginLoaded(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPluginLoaded: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->getPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 87
    .local v0, "plugin":Lcom/qihoo360/loader2/Plugin;
    if-nez v0, :cond_1

    .line 88
    const/4 v1, 0x0

    return v1

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/qihoo360/loader2/Plugin;->isLoaded()Z

    move-result v1

    return v1
.end method

.method public loadPluginActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "process"    # I

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 407
    .local v1, "container":Ljava/lang/String;
    new-instance v2, Lcom/qihoo360/loader2/PluginBinderInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/qihoo360/loader2/PluginBinderInfo;-><init>(I)V

    .line 411
    .local v2, "info":Lcom/qihoo360/loader2/PluginBinderInfo;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/qihoo360/loader2/PluginCommImpl;->getActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    move-object v0, v6

    .line 412
    if-nez v0, :cond_1

    .line 413
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_0

    .line 414
    const-string v3, "ws001"

    const-string v6, "PACM: bindActivity: activity not found"

    invoke-static {v3, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    return-object v5

    .line 420
    :cond_1
    const-string v6, "__themeId"

    iget v7, v0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_2

    .line 422
    const-string v6, "theme"

    const-string v7, "intent.putExtra(%s, %s);"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v9, v8, v4

    iget v9, v0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_2
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 427
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v3}, Lcom/qihoo360/replugin/component/utils/PluginClientHelper;->getProcessInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move p4, v3

    .line 431
    :cond_3
    invoke-static {p2, p4, v2}, Lcom/qihoo360/loader2/MP;->startPluginProcess(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v3

    .line 432
    .local v3, "client":Lcom/qihoo360/loader2/IPluginClient;
    if-nez v3, :cond_4

    .line 433
    return-object v5

    .line 437
    :cond_4
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v3, p2, p4, v6, p1}, Lcom/qihoo360/loader2/IPluginClient;->allocActivityContainer(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 438
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_5

    .line 439
    const-string v6, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alloc success: container="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " plugin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " activity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v3    # "client":Lcom/qihoo360/loader2/IPluginClient;
    :cond_5
    goto :goto_0

    .line 441
    :catch_0
    move-exception v3

    .line 443
    .local v3, "e":Ljava/lang/Throwable;
    const-string v6, "ws001"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "l.p.a spp|aac: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 449
    return-object v5

    .line 452
    :cond_6
    invoke-static {p1}, Lcom/qihoo360/loader2/PmBase;->cleanIntentPluginParams(Landroid/content/Intent;)V

    .line 461
    new-instance v3, Lcom/qihoo360/loader2/PluginIntent;

    invoke-direct {v3, p1}, Lcom/qihoo360/loader2/PluginIntent;-><init>(Landroid/content/Intent;)V

    .line 462
    .local v3, "ii":Lcom/qihoo360/loader2/PluginIntent;
    invoke-virtual {v3, p2}, Lcom/qihoo360/loader2/PluginIntent;->setPlugin(Ljava/lang/String;)V

    .line 463
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/qihoo360/loader2/PluginIntent;->setActivity(Ljava/lang/String;)V

    .line 464
    const/high16 v5, -0x80000000

    invoke-virtual {v3, v5}, Lcom/qihoo360/loader2/PluginIntent;->setProcess(I)V

    .line 465
    invoke-virtual {v3, v1}, Lcom/qihoo360/loader2/PluginIntent;->setContainer(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v3, v4}, Lcom/qihoo360/loader2/PluginIntent;->setCounter(I)V

    .line 467
    new-instance v4, Landroid/content/ComponentName;

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public loadPluginClassLoader(Lcom/qihoo360/replugin/model/PluginInfo;)Ljava/lang/ClassLoader;
    .locals 4
    .param p1, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 335
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/qihoo360/loader2/PmBase;->loadPlugin(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/loader2/PluginCommImpl;IZ)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 336
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    if-eqz v0, :cond_0

    .line 337
    iget-object v1, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v1, v1, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v1

    .line 340
    :cond_0
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 341
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not found plugin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public loadPluginProvider(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 6
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "process"    # I

    .line 510
    new-instance v0, Lcom/qihoo360/loader2/PluginBinderInfo;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/qihoo360/loader2/PluginBinderInfo;-><init>(I)V

    .line 513
    .local v0, "info":Lcom/qihoo360/loader2/PluginBinderInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p3, v0}, Lcom/qihoo360/loader2/MP;->startPluginProcess(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v2

    .line 514
    .local v2, "client":Lcom/qihoo360/loader2/IPluginClient;
    if-nez v2, :cond_0

    .line 515
    return-object v1

    .line 518
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".loader.p.pr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/qihoo360/loader2/PluginBinderInfo;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "auth":Ljava/lang/String;
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "main"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 522
    .end local v2    # "client":Lcom/qihoo360/loader2/IPluginClient;
    .end local v3    # "auth":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 524
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "l.p.p spp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method public loadPluginService(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 7
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "process"    # I

    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, "container":Ljava/lang/String;
    new-instance v1, Lcom/qihoo360/loader2/PluginBinderInfo;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/qihoo360/loader2/PluginBinderInfo;-><init>(I)V

    .line 483
    .local v1, "info":Lcom/qihoo360/loader2/PluginBinderInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, p3, v1}, Lcom/qihoo360/loader2/MP;->startPluginProcess(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v3

    .line 484
    .local v3, "client":Lcom/qihoo360/loader2/IPluginClient;
    if-nez v3, :cond_0

    .line 485
    return-object v2

    .line 489
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".loader.s.Service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/qihoo360/loader2/PluginBinderInfo;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 491
    new-instance v4, Landroid/content/ComponentName;

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 492
    .end local v3    # "client":Lcom/qihoo360/loader2/IPluginClient;
    :catch_0
    move-exception v3

    .line 494
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "l.p.p spp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .end local v3    # "e":Ljava/lang/Throwable;
    return-object v2
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "binder"    # Ljava/lang/String;

    .line 126
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->getBuiltinPlugin(Ljava/lang/String;)Lcom/qihoo360/replugin/IHostBinderFetcher;

    move-result-object v0

    .line 133
    .local v0, "p":Lcom/qihoo360/replugin/IHostBinderFetcher;
    if-eqz v0, :cond_2

    .line 134
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 135
    const-string v1, "ws001"

    const-string v2, "use buildin plugin"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    invoke-interface {v0, p2}, Lcom/qihoo360/replugin/IHostBinderFetcher;->query(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1

    .line 141
    .end local v0    # "p":Lcom/qihoo360/replugin/IHostBinderFetcher;
    :cond_2
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->loadAppPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 142
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    if-nez v0, :cond_4

    .line 143
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_3

    .line 144
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query: not found plugin,  name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    const/4 v1, 0x0

    return-object v1

    .line 149
    :cond_4
    invoke-virtual {v0, p2}, Lcom/qihoo360/loader2/Plugin;->query(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "binder"    # Ljava/lang/String;
    .param p3, "process"    # I

    .line 160
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    if-ne p3, v1, :cond_0

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/qihoo360/loader2/PluginCommImpl;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isUIProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/qihoo360/loader2/PluginCommImpl;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 168
    :cond_1
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->processTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "processTail":Ljava/lang/String;
    sget-object v2, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->PROCESS_INT_MAP:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->PROCESS_INT_MAP:Ljava/util/Map;

    .line 170
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p3, v2, :cond_2

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/qihoo360/loader2/PluginCommImpl;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1

    .line 175
    :cond_2
    if-ne p3, v1, :cond_3

    .line 177
    :try_start_0
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qihoo360/loader2/IPluginHost;->queryPluginBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 178
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "q.p.b: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v1    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/qihoo360/mobilesafe/svcmanager/QihooServiceManager;->getPluginService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public query(Ljava/lang/String;Ljava/lang/Class;)Lcom/qihoo360/i/IModule;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/qihoo360/i/IModule;",
            ">;)",
            "Lcom/qihoo360/i/IModule;"
        }
    .end annotation

    .line 100
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/qihoo360/i/IModule;>;"
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->getBuiltinModules(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 105
    .local v0, "modules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qihoo360/i/IModule;>;"
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/i/IModule;

    return-object v1

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v1, p1}, Lcom/qihoo360/loader2/PmBase;->loadAppPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v1

    .line 110
    .local v1, "p":Lcom/qihoo360/loader2/Plugin;
    if-nez v1, :cond_3

    .line 111
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 112
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query: not found plugin,  name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 117
    :cond_3
    invoke-virtual {v1, p2}, Lcom/qihoo360/loader2/Plugin;->query(Ljava/lang/Class;)Lcom/qihoo360/i/IModule;

    move-result-object v2

    return-object v2
.end method

.method public queryPluginClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 308
    invoke-static {p1}, Lcom/qihoo360/loader2/Plugin;->queryCachedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/loader2/Plugin;->queryCachedClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 309
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 310
    return-object v0

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v1, p1, p0}, Lcom/qihoo360/loader2/PmBase;->loadDexPlugin(Ljava/lang/String;Lcom/qihoo360/loader2/PluginCommImpl;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v1

    .line 314
    .local v1, "p":Lcom/qihoo360/loader2/Plugin;
    if-eqz v1, :cond_1

    .line 315
    iget-object v2, v1, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v2

    .line 318
    :cond_1
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 319
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 283
    invoke-static {p1}, Lcom/qihoo360/loader2/Plugin;->queryCachedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/loader2/Plugin;->queryCachedComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v0

    .line 284
    .local v0, "cl":Lcom/qihoo360/replugin/component/ComponentList;
    if-eqz v0, :cond_0

    .line 285
    return-object v0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v1, p1, p0}, Lcom/qihoo360/loader2/PmBase;->loadPackageInfoPlugin(Ljava/lang/String;Lcom/qihoo360/loader2/PluginCommImpl;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v1

    .line 289
    .local v1, "p":Lcom/qihoo360/loader2/Plugin;
    if-eqz v1, :cond_1

    .line 290
    iget-object v2, v1, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    return-object v2

    .line 293
    :cond_1
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 294
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public queryPluginContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->loadAppPlugin(Ljava/lang/String;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 197
    .local v0, "p":Lcom/qihoo360/loader2/Plugin;
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v1, v1, Lcom/qihoo360/loader2/Loader;->mPkgContext:Landroid/content/Context;

    return-object v1

    .line 201
    :cond_0
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 202
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not found plugin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public queryPluginPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 241
    invoke-static {p1}, Lcom/qihoo360/loader2/Plugin;->queryCachedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/loader2/Plugin;->queryCachedPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 242
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 243
    return-object v0

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v1, p1, p0}, Lcom/qihoo360/loader2/PmBase;->loadPackageInfoPlugin(Ljava/lang/String;Lcom/qihoo360/loader2/PluginCommImpl;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v1

    .line 247
    .local v1, "p":Lcom/qihoo360/loader2/Plugin;
    if-eqz v1, :cond_1

    .line 248
    iget-object v2, v1, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v2

    .line 251
    :cond_1
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 252
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public queryPluginPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 268
    invoke-static {p1}, Lcom/qihoo360/loader2/Plugin;->queryPluginNameByPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "pluginName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/PluginCommImpl;->queryPluginPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1

    .line 272
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public queryPluginResouces(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 216
    invoke-static {p1}, Lcom/qihoo360/loader2/Plugin;->queryCachedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/loader2/Plugin;->queryCachedResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 217
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 218
    return-object v0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v1, p1, p0}, Lcom/qihoo360/loader2/PmBase;->loadResourcePlugin(Ljava/lang/String;Lcom/qihoo360/loader2/PluginCommImpl;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v1

    .line 222
    .local v1, "p":Lcom/qihoo360/loader2/Plugin;
    if-eqz v1, :cond_1

    .line 223
    iget-object v2, v1, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    iget-object v2, v2, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;

    return-object v2

    .line 226
    :cond_1
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 227
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public queryPluginsReceiverList(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .line 353
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v0

    .line 354
    .local v0, "pluginHost":Lcom/qihoo360/loader2/IPluginHost;
    if-eqz v0, :cond_0

    .line 356
    :try_start_0
    invoke-interface {v0, p1}, Lcom/qihoo360/loader2/IPluginHost;->queryPluginsReceiverList(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 359
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query PluginsReceiverList fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "plugin"    # Ljava/lang/String;
    .param p4, "activity"    # Ljava/lang/String;
    .param p5, "process"    # I

    .line 376
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start activity: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " process="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v1, v0, Lcom/qihoo360/loader2/PmBase;->mInternal:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 388
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 389
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityForResult: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " options="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginCommImpl;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v0, v0, Lcom/qihoo360/loader2/PmBase;->mInternal:Lcom/qihoo360/loader2/PluginLibraryInternalProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
