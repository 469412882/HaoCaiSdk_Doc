.class public Lcom/qihoo360/replugin/RePlugin;
.super Ljava/lang/Object;
.source "RePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/RePlugin$App;
    }
.end annotation


# static fields
.field public static final PLUGIN_NAME_MAIN:Ljava/lang/String; = "main"

.field public static final PROCESS_AUTO:Ljava/lang/String; = "-2147483648"

.field public static final PROCESS_PERSIST:Ljava/lang/String; = "-2"

.field public static final PROCESS_UI:Ljava/lang/String; = "-1"

.field private static final TAG:Ljava/lang/String; = "RePlugin"

.field private static sConfig:Lcom/qihoo360/replugin/RePluginConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    return-void
.end method

.method static synthetic access$000()Lcom/qihoo360/replugin/RePluginConfig;
    .locals 1

    .line 79
    sget-object v0, Lcom/qihoo360/replugin/RePlugin;->sConfig:Lcom/qihoo360/replugin/RePluginConfig;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qihoo360/replugin/RePluginConfig;)Lcom/qihoo360/replugin/RePluginConfig;
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/replugin/RePluginConfig;

    .line 79
    sput-object p0, Lcom/qihoo360/replugin/RePlugin;->sConfig:Lcom/qihoo360/replugin/RePluginConfig;

    return-object p0
.end method

.method public static addCertSignature(Ljava/lang/String;)V
    .locals 2
    .param p0, "sign"    # Ljava/lang/String;

    .line 336
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "arg is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/CertUtils;->SIGNATURES:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public static convertToPnFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 890
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/qihoo360/replugin/packages/RePluginInstaller;->covertToPnFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 891
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 894
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static createComponentName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "cls"    # Ljava/lang/String;

    .line 325
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "cls"    # Ljava/lang/String;

    .line 311
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 312
    .local v0, "in":Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/RePlugin;->createComponentName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 313
    return-object v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 905
    invoke-static {p0, p1, p2}, Lcom/qihoo360/loader2/DumpUtils;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method public static enableDebugger(Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 220
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 221
    new-instance v0, Lcom/qihoo360/replugin/debugger/DebuggerReceivers;

    invoke-direct {v0}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers;-><init>()V

    .line 222
    .local v0, "debuggerReceivers":Lcom/qihoo360/replugin/debugger/DebuggerReceivers;
    invoke-virtual {v0, p0}, Lcom/qihoo360/replugin/debugger/DebuggerReceivers;->registerReceivers(Landroid/content/Context;)Z

    .line 224
    .end local v0    # "debuggerReceivers":Lcom/qihoo360/replugin/debugger/DebuggerReceivers;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static fetchBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "module"    # Ljava/lang/String;

    .line 469
    invoke-static {p0, p1}, Lcom/qihoo360/i/Factory;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static fetchBinder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "process"    # Ljava/lang/String;

    .line 450
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/qihoo360/i/Factory;->query(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static fetchClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 417
    invoke-static {p0}, Lcom/qihoo360/i/Factory;->queryPluginClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static fetchComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;
    .locals 1
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 376
    invoke-static {p0}, Lcom/qihoo360/i/Factory;->queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v0

    return-object v0
.end method

.method public static fetchContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 1
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 430
    invoke-static {p0}, Lcom/qihoo360/i/Factory;->queryPluginContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static fetchPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 390
    invoke-static {p0}, Lcom/qihoo360/i/Factory;->queryPluginPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static fetchPluginNameByClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .line 482
    invoke-static {p0}, Lcom/qihoo360/i/Factory;->fetchPluginName(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fetchResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "resTypeAndName"    # Ljava/lang/String;

    .line 499
    invoke-static {p0}, Lcom/qihoo360/replugin/RePlugin;->fetchPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 500
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 502
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 503
    const-string v2, "RePlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchResourceIdByName: Plugin not found. pn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; resName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    return v1

    .line 507
    :cond_1
    invoke-static {p0}, Lcom/qihoo360/replugin/RePlugin;->fetchResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 508
    .local v2, "res":Landroid/content/res/Resources;
    if-nez v2, :cond_3

    .line 510
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_2

    .line 511
    const-string v3, "RePlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchResourceIdByName: Plugin not found (fetchResources). pn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; resName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_2
    return v1

    .line 519
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "idKey":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static fetchResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 404
    invoke-static {p0}, Lcom/qihoo360/i/Factory;->queryPluginResouces(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static fetchViewByLayoutName(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "layoutName"    # Ljava/lang/String;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation

    .line 536
    invoke-static {p0}, Lcom/qihoo360/replugin/RePlugin;->fetchContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 537
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 539
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 540
    const-string v1, "RePlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchViewByLayoutName: Plugin not found. pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; layoutName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "resTypeAndName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/qihoo360/replugin/RePlugin;->fetchResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 546
    .local v2, "id":I
    if-gtz v2, :cond_2

    .line 548
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 549
    const-string v3, "RePlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchViewByLayoutName: fetch failed! pn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; layoutName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    const/4 v3, 0x0

    return-object v3

    .line 558
    :cond_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public static getConfig()Lcom/qihoo360/replugin/RePluginConfig;
    .locals 1

    .line 718
    sget-object v0, Lcom/qihoo360/replugin/RePlugin;->sConfig:Lcom/qihoo360/replugin/RePluginConfig;

    return-object v0
.end method

.method public static getGlobalBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 811
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/qihoo360/mobilesafe/svcmanager/QihooServiceManager;->getService(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginInfo(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 579
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation

    .line 568
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/qihoo360/loader2/MP;->getPlugins(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginVersion(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 590
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    .line 591
    .local v0, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v0, :cond_0

    .line 592
    const/4 v1, -0x1

    return v1

    .line 595
    :cond_0
    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v1

    return v1
.end method

.method public static getRunningPlugins()Lcom/qihoo360/replugin/packages/PluginRunningList;
    .locals 1

    .line 683
    invoke-static {}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->getRunningPluginsNoThrows()Lcom/qihoo360/replugin/packages/PluginRunningList;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningProcessesByPlugin(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 696
    invoke-static {p0}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->getRunningProcessesByPluginNoThrows(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 362
    const-string v0, "2.2.4"

    return-object v0
.end method

.method public static install(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 123
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 125
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 126
    const-string v1, "RePlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install: File not exists. path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    return-object v2

    .line 129
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_4

    .line 130
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_3

    .line 131
    const-string v1, "RePlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install: Not a valid file. path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_3
    return-object v2

    .line 137
    :cond_4
    const-string v1, "p-n-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 138
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->getPnInstallDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "installPath":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 140
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_5

    .line 141
    const-string v3, "RePlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "install: Must be installed from the specified path. Path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; Allowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_5
    return-object v2

    .line 147
    .end local v1    # "installPath":Ljava/lang/String;
    :cond_6
    invoke-static {p0}, Lcom/qihoo360/loader2/MP;->pluginDownloaded(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    return-object v1
.end method

.method public static isCurrentPersistentProcess()Z
    .locals 1

    .line 706
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v0

    return v0
.end method

.method public static isForDev()Z
    .locals 1

    .line 352
    sget-boolean v0, Lcom/qihoo360/replugin/RePluginInternal;->FOR_DEV:Z

    return v0
.end method

.method public static isHookingClass(Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;

    .line 860
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/i/Factory2;->isDynamicClass(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPluginDexExtracted(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 632
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    .line 633
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->isDexExtracted()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public static isPluginInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 607
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    .line 608
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public static isPluginRunning(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 645
    :try_start_0
    invoke-static {p0}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->isPluginRunning(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 646
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 651
    const/4 v1, 0x0

    return v1
.end method

.method public static isPluginRunningInProcess(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "process"    # Ljava/lang/String;

    .line 665
    :try_start_0
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/packages/PluginManagerProxy;->isPluginRunningInProcess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 666
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 671
    const/4 v1, 0x0

    return v1
.end method

.method public static isPluginUsed(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 620
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    .line 621
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->isUsed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public static preload(Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 1
    .param p0, "pi"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 203
    if-nez p0, :cond_0

    .line 204
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/qihoo360/replugin/packages/PluginFastInstallProviderProxy;->install(Landroid/content/Context;Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v0

    return v0
.end method

.method public static preload(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 177
    invoke-static {p0}, Lcom/qihoo360/replugin/RePlugin;->getPluginInfo(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    .line 178
    .local v0, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v0, :cond_1

    .line 180
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "RePlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preload: Plugin not found! pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 185
    :cond_1
    invoke-static {v0}, Lcom/qihoo360/replugin/RePlugin;->preload(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v1

    return v1
.end method

.method public static registerGlobalBinder(Ljava/lang/String;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 762
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/qihoo360/mobilesafe/svcmanager/QihooServiceManager;->addService(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public static registerGlobalBinderDelayed(Ljava/lang/String;Lcom/qihoo360/replugin/IBinderGetter;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "getter"    # Lcom/qihoo360/replugin/IBinderGetter;

    .line 781
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/qihoo360/mobilesafe/svcmanager/QihooServiceManager;->addService(Landroid/content/Context;Ljava/lang/String;Lcom/qihoo360/replugin/IBinderGetter;)Z

    move-result v0

    return v0
.end method

.method public static registerHookingClass(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Class;)V
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Landroid/content/ComponentName;
    .param p2, "defClass"    # Ljava/lang/Class;

    .line 850
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/qihoo360/i/Factory2;->registerDynamicClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    .line 851
    return-void
.end method

.method public static registerHostBinder(Lcom/qihoo360/replugin/IHostBinderFetcher;)V
    .locals 1
    .param p0, "hbf"    # Lcom/qihoo360/replugin/IHostBinderFetcher;

    .line 746
    const-string v0, "main"

    invoke-static {v0, p0}, Lcom/qihoo360/loader2/MP;->installBuiltinPlugin(Ljava/lang/String;Lcom/qihoo360/replugin/IHostBinderFetcher;)V

    .line 747
    return-void
.end method

.method public static registerInstalledReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .line 734
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.qihoo360.loader2.ACTION_NEW_PLUGIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 735
    .local v0, "itf":Landroid/content/IntentFilter;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 736
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 240
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 241
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 243
    const/4 v1, 0x0

    return v1

    .line 245
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "plugin":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "cls":Ljava/lang/String;
    const/high16 v3, -0x80000000

    invoke-static {p0, p1, v1, v2, v3}, Lcom/qihoo360/i/Factory;->startActivityWithNoInjectCN(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    return v3
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pluginName"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;

    .line 262
    const/high16 v0, -0x80000000

    invoke-static {p0, p1, p2, p3, v0}, Lcom/qihoo360/i/Factory;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 275
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/qihoo360/i/Factory;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 289
    invoke-static {p0, p1, p2, p3}, Lcom/qihoo360/i/Factory;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static uninstall(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pluginName"    # Ljava/lang/String;

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/qihoo360/loader2/MP;->pluginUninstall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static unregisterGlobalBinder(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 794
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/qihoo360/mobilesafe/svcmanager/QihooServiceManager;->removeService(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public static unregisterHookingClass(Ljava/lang/String;)V
    .locals 0
    .param p0, "source"    # Ljava/lang/String;

    .line 872
    invoke-static {p0}, Lcom/qihoo360/i/Factory2;->unregisterDynamicClass(Ljava/lang/String;)V

    .line 873
    return-void
.end method
