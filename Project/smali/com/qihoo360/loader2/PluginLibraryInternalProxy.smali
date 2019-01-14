.class public Lcom/qihoo360/loader2/PluginLibraryInternalProxy;
.super Ljava/lang/Object;
.source "PluginLibraryInternalProxy.java"


# instance fields
.field mPluginMgr:Lcom/qihoo360/loader2/PmBase;


# direct methods
.method constructor <init>(Lcom/qihoo360/loader2/PmBase;)V
    .locals 0
    .param p1, "pm"    # Lcom/qihoo360/loader2/PmBase;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    .line 66
    return-void
.end method

.method private fetchPluginByPitActivity(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v1, v1, Lcom/qihoo360/loader2/PmBase;->mClient:Lcom/qihoo360/loader2/PluginProcessPer;

    iget-object v1, v1, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qihoo360/loader2/PluginContainers;->lookupByContainer(Ljava/lang/String;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-result-object v0

    .line 177
    :cond_0
    if-eqz v0, :cond_1

    .line 178
    iget-object v1, v0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    return-object v1

    .line 180
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getDefaultThemeId()I
    .locals 2

    .line 781
    sget-boolean v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ACTIVITY_PIT_USE_APPCOMPAT:Z

    if-eqz v0, :cond_0

    .line 783
    :try_start_0
    const-string v0, "android.support.v7.appcompat.R$style"

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 784
    .local v0, "clazz":Ljava/lang/Class;
    const-string v1, "Theme_AppCompat"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/utils/ReflectUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 789
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 790
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_1

    .line 787
    :catch_1
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 788
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 785
    :catch_2
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 791
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 793
    :cond_0
    :goto_1
    const v0, 0x1030006

    return v0
.end method

.method private getDynamicThemeId(Landroid/app/Activity;)I
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 703
    const/4 v0, -0x1

    .line 705
    .local v0, "dynamicThemeId":I
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.view.ContextThemeWrapper"

    const-string v3, "getThemeResId"

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/qihoo360/replugin/utils/ReflectUtils;->invokeMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 709
    goto :goto_0

    .line 707
    :catch_0
    move-exception v1

    .line 708
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 710
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private static getPluginName(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 350
    const-string v0, ""

    .line 351
    .local v0, "plugin":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Lcom/qihoo360/replugin/RePlugin;->fetchPluginNameByClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    .line 359
    :cond_2
    return-object v0
.end method

.method private getThemeId(Landroid/app/Activity;Landroid/content/Intent;)I
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 719
    invoke-direct {p0, p1}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->getDynamicThemeId(Landroid/app/Activity;)I

    move-result v0

    .line 722
    .local v0, "dynamicThemeId":I
    const-string v1, "__themeId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 724
    .local v1, "manifestThemeId":I
    if-nez v1, :cond_0

    .line 725
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 729
    :cond_0
    invoke-static {}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->getDefaultThemeId()I

    move-result v2

    .line 730
    .local v2, "defaultThemeId":I
    invoke-static {v1}, Lcom/qihoo360/loader2/LaunchModeStates;->isTranslucentTheme(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 731
    const v2, 0x1030010

    .line 736
    :cond_1
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_2

    .line 737
    const-string v3, "theme"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultThemeId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v3, "theme"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dynamicThemeId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v3, "theme"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manifestThemeId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_2
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    .line 745
    if-ne v0, v2, :cond_4

    .line 747
    if-eqz v1, :cond_3

    .line 748
    move v3, v1

    goto :goto_0

    .line 750
    :cond_3
    move v3, v2

    goto :goto_0

    .line 755
    :cond_4
    move v3, v0

    .line 755
    .local v3, "themeId":I
    :goto_0
    goto :goto_1

    .line 760
    .end local v3    # "themeId":I
    :cond_5
    if-eqz v1, :cond_6

    .line 761
    move v3, v1

    goto :goto_0

    .line 763
    :cond_6
    move v3, v2

    .line 767
    .restart local v3    # "themeId":I
    :goto_1
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_7

    .line 768
    const-string v4, "theme"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "themeId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_7
    return v3
.end method

.method private isNeedToDownload(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plugin"    # Ljava/lang/String;

    .line 366
    invoke-static {p2}, Lcom/qihoo360/loader2/V5FileInfo;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "n":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qihoo360/replugin/RePluginConfig;->getPnInstallDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 368
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 369
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 370
    const-string v2, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedToDownload(): V5 file not exists. Plugin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    return v3

    .line 375
    :cond_1
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 376
    const-string v2, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedToDownload(): V5 file exists. Extracting... Plugin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qihoo360/loader2/MP;->pluginDownloaded(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v2

    .line 380
    .local v2, "i":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v2, :cond_4

    .line 381
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_3

    .line 382
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedToDownload(): V5 file is invalid. Plugin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3
    return v3

    .line 387
    :cond_4
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_5

    .line 388
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedToDownload(): V5 file is Okay. Loading... Plugin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_5
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method public createActivityContext(Landroid/app/Activity;Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newBase"    # Landroid/content/Context;

    .line 411
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qihoo360/loader2/PmBase;->lookupPlugin(Ljava/lang/ClassLoader;)Lcom/qihoo360/loader2/Plugin;

    move-result-object v0

    .line 412
    .local v0, "plugin":Lcom/qihoo360/loader2/Plugin;
    if-nez v0, :cond_1

    .line 413
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 414
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACM: createActivityContext: can\'t found plugin object for activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 419
    :cond_1
    iget-object v1, v0, Lcom/qihoo360/loader2/Plugin;->mLoader:Lcom/qihoo360/loader2/Loader;

    invoke-virtual {v1, p2}, Lcom/qihoo360/loader2/Loader;->createBaseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method public fetchPlugins(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 641
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qihoo360/loader2/MP;->getPlugins(Z)Ljava/util/List;

    move-result-object v0

    .line 642
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 643
    .local v1, "ja":Lorg/json/JSONArray;
    sget-object v2, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    monitor-enter v2

    .line 644
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 645
    .local v4, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 646
    :cond_0
    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getJSON()Lorg/json/JSONObject;

    move-result-object v5

    .line 647
    .local v5, "jo":Lorg/json/JSONObject;
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 649
    .end local v4    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    .end local v5    # "jo":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 650
    :cond_2
    monitor-exit v2

    .line 651
    return-object v1

    .line 650
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getPluginByDynamicClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->getPluginByDynamicClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActivityCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 462
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " taskid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 468
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 474
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/qihoo360/loader2/PluginIntent;

    invoke-direct {v1, v0}, Lcom/qihoo360/loader2/PluginIntent;-><init>(Landroid/content/Intent;)V

    .line 475
    .local v1, "ii":Lcom/qihoo360/loader2/PluginIntent;
    invoke-virtual {v1}, Lcom/qihoo360/loader2/PluginIntent;->getPlugin()Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "pluginName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/qihoo360/loader2/PluginIntent;->getActivity()Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "activityName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/qihoo360/loader2/PluginIntent;->getProcess()I

    move-result v4

    .line 478
    .local v4, "process":I
    invoke-virtual {v1}, Lcom/qihoo360/loader2/PluginIntent;->getContainer()Ljava/lang/String;

    move-result-object v5

    .line 479
    .local v5, "container":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/qihoo360/loader2/PluginIntent;->getCounter()I

    move-result v6

    .line 480
    .local v6, "counter":I
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_1

    .line 481
    const-string v7, "ws001"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activity create: name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " activity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " process="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " container="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " counter="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 487
    const-string v7, "ws001"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "a.c.1: a="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " l="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qihoo360/replugin/helper/LogRelease;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-static {p1, v0}, Lcom/qihoo360/loader2/PMF;->forward(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 490
    return-void

    .line 492
    :cond_2
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_3

    .line 493
    const-string v7, "ws001"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "perfect: container="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " plugin="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " activity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "ii":Lcom/qihoo360/loader2/PluginIntent;
    .end local v2    # "pluginName":Ljava/lang/String;
    .end local v3    # "activityName":Ljava/lang/String;
    .end local v4    # "process":I
    .end local v5    # "container":Ljava/lang/String;
    .end local v6    # "counter":I
    :cond_3
    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a.c.2: exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 504
    .local v0, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 505
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v1, v1, Lcom/qihoo360/loader2/PmBase;->mClient:Lcom/qihoo360/loader2/PluginProcessPer;

    iget-object v1, v1, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qihoo360/loader2/PluginContainers;->lookupByContainer(Ljava/lang/String;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-result-object v0

    .line 507
    :cond_5
    if-nez v0, :cond_6

    .line 510
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a.c1: l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .line 516
    :cond_6
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v1, v1, Lcom/qihoo360/loader2/PmBase;->mClient:Lcom/qihoo360/loader2/PluginProcessPer;

    iget-object v1, v1, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    iget-object v2, v0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    iget-object v3, v0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v3}, Lcom/qihoo360/loader2/PluginContainers;->handleCreate(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 520
    :try_start_1
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v1

    sget v2, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    iget-object v3, v0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    iget-object v4, v0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/qihoo360/loader2/IPluginHost;->regActivity(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 525
    goto :goto_1

    .line 521
    :catch_1
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a.c2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz p2, :cond_7

    .line 529
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 533
    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 534
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_9

    .line 535
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_8

    .line 536
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set activity intent cl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_8
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 543
    :cond_9
    iget-object v2, v0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    iget-object v3, v0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/qihoo360/replugin/component/activity/ActivityInjector;->inject(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 544
    return-void
.end method

.method public handleActivityCreateBefore(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 429
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 430
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity create before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " taskid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    if-eqz p2, :cond_1

    .line 436
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 439
    :try_start_0
    const-string v0, "android:support:fragments"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a.c.b1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 449
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 450
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 451
    invoke-direct {p0, p1, v0}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->getThemeId(Landroid/app/Activity;Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 453
    :cond_2
    return-void
.end method

.method public handleActivityDestroy(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 579
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity destroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " taskid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v0, v0, Lcom/qihoo360/loader2/PmBase;->mClient:Lcom/qihoo360/loader2/PluginProcessPer;

    iget-object v0, v0, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PluginContainers;->handleDestroy(Landroid/app/Activity;)V

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "state":Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v1, v1, Lcom/qihoo360/loader2/PmBase;->mClient:Lcom/qihoo360/loader2/PluginProcessPer;

    iget-object v1, v1, Lcom/qihoo360/loader2/PluginProcessPer;->mACM:Lcom/qihoo360/loader2/PluginContainers;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qihoo360/loader2/PluginContainers;->lookupByContainer(Ljava/lang/String;)Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    move-result-object v0

    .line 591
    :cond_1
    if-nez v0, :cond_2

    .line 594
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p a h a d c f p a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void

    .line 601
    :cond_2
    iget-object v1, v0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    .line 602
    .local v1, "plugin":Ljava/lang/String;
    iget-object v2, v0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    .line 604
    .local v2, "container":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v3

    sget v4, Lcom/qihoo360/loader2/PluginManager;->sPluginProcessIndex:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v1, v2, v5}, Lcom/qihoo360/loader2/IPluginHost;->unregActivity(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    goto :goto_0

    .line 605
    :catch_0
    move-exception v3

    .line 607
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ur.a: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qihoo360/replugin/RePluginConfig;->getEventCallbacks()Lcom/qihoo360/replugin/RePluginEventCallbacks;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 613
    return-void
.end method

.method public handleRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 553
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity restore instance state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    if-eqz p2, :cond_2

    .line 559
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 562
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 563
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 564
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 565
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 566
    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 568
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 571
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public handleServiceCreate(Landroid/app/Service;)V
    .locals 1
    .param p1, "service"    # Landroid/app/Service;

    .line 621
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->handleServiceCreated(Landroid/app/Service;)V

    .line 622
    return-void
.end method

.method public handleServiceDestroy(Landroid/app/Service;)V
    .locals 1
    .param p1, "service"    # Landroid/app/Service;

    .line 630
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->handleServiceDestroyed(Landroid/app/Service;)V

    .line 631
    return-void
.end method

.method public isDynamicClass(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1, p2}, Lcom/qihoo360/loader2/PmBase;->isDynamicClass(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerDynamicClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "defClass"    # Ljava/lang/Class;

    .line 672
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    const-string v3, ""

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qihoo360/loader2/PmBase;->addDynamicClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public registerDynamicClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "plugin"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "target"    # Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qihoo360/loader2/PmBase;->addDynamicClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 77
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start context: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    const-string v0, "compatible"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-static {p2}, Lcom/qihoo360/loader2/PmBase;->cleanIntentPluginParams(Landroid/content/Intent;)V

    .line 84
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "ws001"

    const-string v2, "start context: COMPATIBLE is true, direct start"

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    return v1

    .line 93
    :cond_2
    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 96
    .local v2, "cn":Landroid/content/ComponentName;
    if-eqz v2, :cond_3

    .line 97
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 98
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_3

    .line 99
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start context: custom context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v2    # "cn":Landroid/content/ComponentName;
    :cond_3
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v2, v0}, Lcom/qihoo360/loader2/PmBase;->isActivity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    invoke-static {p2}, Lcom/qihoo360/loader2/PmBase;->cleanIntentPluginParams(Landroid/content/Intent;)V

    .line 107
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_4

    .line 108
    const-string v2, "ws001"

    const-string v3, "start context: context is container, direct start"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_4
    return v1

    .line 117
    :cond_5
    const-string v2, "plugin"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "plugin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 123
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_7

    .line 125
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_6

    .line 126
    const-string v4, "loadClass"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHookingClass("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->isDynamicClass(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_6
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->isDynamicClass(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 130
    const-string v4, "compatible"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    new-instance v4, Landroid/content/ComponentName;

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    return v1

    .line 137
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 139
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_8

    .line 140
    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-direct {p0, v4}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->fetchPluginByPitActivity(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 142
    :cond_8
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_9

    .line 143
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start context: custom plugin is empty, query plugin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4}, Lcom/qihoo360/replugin/RePlugin;->fetchPluginNameByClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v2

    .line 153
    :cond_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 154
    invoke-static {p2}, Lcom/qihoo360/loader2/PmBase;->cleanIntentPluginParams(Landroid/content/Intent;)V

    .line 155
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_b

    .line 156
    const-string v4, "ws001"

    const-string v5, "start context: plugin and context is empty, direct start"

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_b
    return v1

    .line 162
    :cond_c
    const-string v1, "process"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 164
    .local v1, "process":I
    invoke-static {p2}, Lcom/qihoo360/loader2/PmBase;->cleanIntentPluginParams(Landroid/content/Intent;)V

    .line 167
    invoke-static {p1, p2, v2, v0, v1}, Lcom/qihoo360/i/Factory;->startActivityWithNoInjectCN(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    return v4
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "plugin"    # Ljava/lang/String;
    .param p4, "activity"    # Ljava/lang/String;
    .param p5, "process"    # I
    .param p6, "download"    # Z

    .line 197
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 198
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

    const-string v2, " download="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    if-eqz p6, :cond_2

    .line 205
    invoke-static {p3}, Lcom/qihoo360/loader2/PluginTable;->getPluginInfo(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 206
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 207
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found, start download ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->isNeedToDownload(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->getCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p5}, Lcom/qihoo360/replugin/RePluginCallbacks;->onPluginNotExistsForActivity(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    return v0

    .line 223
    :cond_2
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_3

    .line 224
    const-string v0, "loadClass"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHookingClass("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {p3, p4}, Lcom/qihoo360/i/Factory2;->isDynamicClass(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_3
    invoke-static {p3, p4}, Lcom/qihoo360/i/Factory2;->isDynamicClass(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 229
    const-string v0, "compatible"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    return v1

    .line 237
    :cond_4
    invoke-static {p3}, Lcom/qihoo360/loader2/PluginStatusController;->getStatus(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_6

    .line 238
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_5

    .line 239
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginLibraryInternalProxy.startActivity(): Plugin Disabled. pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_5
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->getCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p5}, Lcom/qihoo360/replugin/RePluginCallbacks;->onPluginNotExistsForActivity(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    return v0

    .line 246
    :cond_6
    invoke-static {p3}, Lcom/qihoo360/replugin/RePlugin;->isPluginDexExtracted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 247
    invoke-static {p3}, Lcom/qihoo360/loader2/PluginDesc;->get(Ljava/lang/String;)Lcom/qihoo360/loader2/PluginDesc;

    move-result-object v0

    .line 248
    .local v0, "pd":Lcom/qihoo360/loader2/PluginDesc;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/qihoo360/loader2/PluginDesc;->isLarge()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 249
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_7

    .line 250
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PM.startActivity(): Large Plugin! p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_7
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->getCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p2, p5}, Lcom/qihoo360/replugin/RePluginCallbacks;->onLoadLargePluginForActivity(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    return v1

    .line 261
    .end local v0    # "pd":Lcom/qihoo360/loader2/PluginDesc;
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 264
    .local v0, "from":Landroid/content/Intent;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 265
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 268
    :cond_9
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-object v2, v2, Lcom/qihoo360/loader2/PmBase;->mLocal:Lcom/qihoo360/loader2/PluginCommImpl;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/qihoo360/loader2/PluginCommImpl;->loadPluginActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 269
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_b

    .line 270
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_a

    .line 271
    const-string v1, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plugin cn not found: intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " process="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_a
    const/4 v1, 0x0

    return v1

    .line 279
    :cond_b
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 281
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_c

    .line 282
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start activity: real intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_c
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 301
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qihoo360/replugin/RePluginConfig;->getEventCallbacks()Lcom/qihoo360/replugin/RePluginEventCallbacks;

    move-result-object v3

    invoke-virtual {v3, p1, v0, p2}, Lcom/qihoo360/replugin/RePluginEventCallbacks;->onPrepareStartPitActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    .line 303
    return v1
.end method

.method public startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 315
    invoke-static {p1, p2}, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->getPluginName(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "plugin":Ljava/lang/String;
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 318
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start activity with startActivityForResult: intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 322
    return v2

    .line 325
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 326
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_2

    .line 327
    return v2

    .line 329
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "name":Ljava/lang/String;
    const/high16 v4, -0x80000000

    invoke-static {p2, v0, v3, v4}, Lcom/qihoo360/i/Factory;->loadPluginActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    .line 332
    .local v4, "cnNew":Landroid/content/ComponentName;
    if-nez v4, :cond_3

    .line 333
    return v2

    .line 336
    :cond_3
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 338
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v2, v5, :cond_4

    .line 339
    invoke-virtual {p1, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 341
    :cond_4
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 343
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public unregisterDynamicClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginLibraryInternalProxy;->mPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0, p1}, Lcom/qihoo360/loader2/PmBase;->removeDynamicClass(Ljava/lang/String;)V

    .line 689
    return-void
.end method
