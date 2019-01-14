.class public Lcom/qihoo360/replugin/RePlugin$App;
.super Ljava/lang/Object;
.source "RePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/RePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "App"
.end annotation


# static fields
.field static sAttached:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachBaseContext(Landroid/app/Application;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;

    .line 926
    new-instance v0, Lcom/qihoo360/replugin/RePluginConfig;

    invoke-direct {v0}, Lcom/qihoo360/replugin/RePluginConfig;-><init>()V

    invoke-static {p0, v0}, Lcom/qihoo360/replugin/RePlugin$App;->attachBaseContext(Landroid/app/Application;Lcom/qihoo360/replugin/RePluginConfig;)V

    .line 927
    return-void
.end method

.method public static attachBaseContext(Landroid/app/Application;Lcom/qihoo360/replugin/RePluginCallbacks;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "pc"    # Lcom/qihoo360/replugin/RePluginCallbacks;

    .line 940
    new-instance v0, Lcom/qihoo360/replugin/RePluginConfig;

    invoke-direct {v0}, Lcom/qihoo360/replugin/RePluginConfig;-><init>()V

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/RePluginConfig;->setCallbacks(Lcom/qihoo360/replugin/RePluginCallbacks;)Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qihoo360/replugin/RePlugin$App;->attachBaseContext(Landroid/app/Application;Lcom/qihoo360/replugin/RePluginConfig;)V

    .line 941
    return-void
.end method

.method public static attachBaseContext(Landroid/app/Application;Lcom/qihoo360/replugin/RePluginConfig;)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "config"    # Lcom/qihoo360/replugin/RePluginConfig;

    .line 953
    sget-boolean v0, Lcom/qihoo360/replugin/RePlugin$App;->sAttached:Z

    if-eqz v0, :cond_1

    .line 954
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 955
    const-string v0, "RePlugin"

    const-string v1, "attachBaseContext: Already called"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_0
    return-void

    .line 960
    :cond_1
    invoke-static {p0}, Lcom/qihoo360/replugin/RePluginInternal;->init(Landroid/app/Application;)V

    .line 961
    invoke-static {p1}, Lcom/qihoo360/replugin/RePlugin;->access$002(Lcom/qihoo360/replugin/RePluginConfig;)Lcom/qihoo360/replugin/RePluginConfig;

    .line 962
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->access$000()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qihoo360/replugin/RePluginConfig;->initDefaults(Landroid/content/Context;)V

    .line 964
    invoke-static {p0}, Lcom/qihoo360/replugin/base/IPC;->init(Landroid/content/Context;)V

    .line 968
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 969
    const-string v0, "RePlugin"

    const-string v1, "act=, init, flag=, Start, pn=, framework, func=, attachBaseContext, lib=, RePlugin"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->printMemoryStatus(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_2
    invoke-static {}, Lcom/qihoo360/replugin/helper/HostConfigHelper;->init()V

    .line 977
    sput-object p0, Lcom/qihoo360/mobilesafe/api/AppVar;->sAppContext:Landroid/content/Context;

    .line 980
    invoke-static {p0}, Lcom/qihoo360/loader2/PluginStatusController;->setAppContext(Landroid/app/Application;)V

    .line 982
    invoke-static {p0}, Lcom/qihoo360/loader2/PMF;->init(Landroid/app/Application;)V

    .line 983
    invoke-static {}, Lcom/qihoo360/loader2/PMF;->callAttach()V

    .line 985
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qihoo360/replugin/RePlugin$App;->sAttached:Z

    .line 986
    return-void
.end method

.method public static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .line 1062
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1063
    return-void

    .line 1067
    :cond_0
    invoke-static {p0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->notifyOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1068
    return-void
.end method

.method public static onCreate()V
    .locals 2

    .line 996
    sget-boolean v0, Lcom/qihoo360/replugin/RePlugin$App;->sAttached:Z

    if-nez v0, :cond_0

    .line 997
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1000
    :cond_0
    invoke-static {}, Lcom/qihoo360/mobilesafe/api/Tasks;->init()V

    .line 1002
    invoke-static {}, Lcom/qihoo360/loader2/PMF;->callAppCreate()V

    .line 1005
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/packages/PluginInfoUpdater;->register(Landroid/content/Context;)V

    .line 1011
    :cond_1
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/RePluginConfig;->isPrintDetailLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1012
    const-string v0, "RePlugin"

    const-string v1, "act=, init, flag=, End, pn=, framework, func=, onCreate, lib=, RePlugin"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->printMemoryStatus(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_2
    return-void
.end method

.method public static onLowMemory()V
    .locals 2

    .line 1026
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1027
    return-void

    .line 1031
    :cond_0
    invoke-static {}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->notifyOnLowMemory()V

    .line 1032
    return-void
.end method

.method public static onTrimMemory(I)V
    .locals 2
    .param p0, "level"    # I

    .line 1044
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1045
    return-void

    .line 1049
    :cond_0
    invoke-static {p0}, Lcom/qihoo360/replugin/component/app/PluginApplicationClient;->notifyOnTrimMemory(I)V

    .line 1050
    return-void
.end method
