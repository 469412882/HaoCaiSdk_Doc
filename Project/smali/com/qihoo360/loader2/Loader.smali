.class Lcom/qihoo360/loader2/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/Loader$ProxyPlugin;
    }
.end annotation


# instance fields
.field mBinderPlugin:Lcom/qihoo360/loader2/Loader$ProxyPlugin;

.field mClassLoader:Ljava/lang/ClassLoader;

.field mComponents:Lcom/qihoo360/replugin/component/ComponentList;

.field mConstructors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCreateMethod:Ljava/lang/reflect/Method;

.field mCreateMethod2:Ljava/lang/reflect/Method;

.field mIgnores:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPackageInfo:Landroid/content/pm/PackageInfo;

.field final mPath:Ljava/lang/String;

.field mPkgContext:Landroid/content/Context;

.field mPkgResources:Landroid/content/res/Resources;

.field mPlugin:Lcom/qihoo360/i/IPlugin;

.field mPluginHost:Lcom/qihoo360/loader2/IPluginHost;

.field private final mPluginName:Ljava/lang/String;

.field final mPluginObj:Lcom/qihoo360/loader2/Plugin;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qihoo360/loader2/Plugin;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p"    # Lcom/qihoo360/loader2/Plugin;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/Loader;->mIgnores:Ljava/util/HashSet;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/Loader;->mConstructors:Ljava/util/HashMap;

    .line 145
    iput-object p1, p0, Lcom/qihoo360/loader2/Loader;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/qihoo360/loader2/Loader;->mPluginName:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    .line 149
    return-void
.end method

.method private adjustPluginProcess(Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 627
    invoke-direct {p0, p1}, Lcom/qihoo360/loader2/Loader;->getConfigProcessMap(Landroid/content/pm/ApplicationInfo;)Ljava/util/HashMap;

    move-result-object v0

    .line 628
    .local v0, "processMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mPluginName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    .line 631
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 632
    invoke-direct {p0}, Lcom/qihoo360/loader2/Loader;->genDynamicProcessMap()Ljava/util/HashMap;

    move-result-object v0

    .line 636
    .end local v1    # "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_1
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 637
    const-string v1, "ws001"

    const-string v2, "--- \u8c03\u6574\u63d2\u4ef6\u4e2d\u7ec4\u4ef6\u7684\u8fdb\u7a0b BEGIN ---"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 639
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 643
    :cond_2
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/component/ComponentList;->getActivityMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/qihoo360/loader2/Loader;->doAdjust(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 644
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/component/ComponentList;->getServiceMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/qihoo360/loader2/Loader;->doAdjust(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 645
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/component/ComponentList;->getReceiverMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/qihoo360/loader2/Loader;->doAdjust(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 646
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/component/ComponentList;->getProviderMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/qihoo360/loader2/Loader;->doAdjust(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 648
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_3

    .line 649
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- \u8c03\u6574\u63d2\u4ef6\u4e2d\u7ec4\u4ef6\u7684\u8fdb\u7a0b END --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_3
    return-void
.end method

.method private adjustPluginTaskAffinity(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 13
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 681
    if-nez p2, :cond_0

    .line 682
    return-void

    .line 685
    :cond_0
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 686
    .local v0, "bdl":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    .line 687
    const-string v1, "use_default_task_affinity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 688
    .local v1, "useDefault":Z
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 689
    const-string v3, "task-affinity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1
    if-nez v1, :cond_5

    .line 693
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 694
    const-string v3, "task-affinity"

    const-string v5, "\u66ff\u6362\u63d2\u4ef6 %s \u4e2d\u9ed8\u8ba4\u7684 TaskAffinity"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_2
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 698
    .local v3, "defaultPluginTaskAffinity":Ljava/lang/String;
    iget-object v5, p0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v5}, Lcom/qihoo360/replugin/component/ComponentList;->getActivityMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 699
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/ActivityInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ActivityInfo;

    .line 700
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    sget-boolean v8, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    const/4 v9, 0x2

    if-eqz v8, :cond_3

    .line 701
    if-eqz v7, :cond_3

    .line 702
    const-string v8, "task-affinity"

    const-string v10, "%s.taskAffinity = %s "

    new-array v11, v9, [Ljava/lang/Object;

    iget-object v12, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v12, v11, v4

    iget-object v12, v7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    aput-object v12, v11, v2

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_3
    if-eqz v7, :cond_4

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 708
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 709
    sget-boolean v8, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v8, :cond_4

    .line 710
    const-string v8, "task-affinity"

    const-string v10, "\u4fee\u6539 %s \u7684 TaskAffinity \u4e3a %s"

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v11, v9, v4

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    aput-object v11, v9, v2

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/ActivityInfo;>;"
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    :cond_4
    goto :goto_0

    .line 716
    .end local v1    # "useDefault":Z
    .end local v3    # "defaultPluginTaskAffinity":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private doAdjust(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/content/pm/ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 655
    .local p1, "processMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;+Landroid/content/pm/ComponentInfo;>;"
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 659
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 660
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/content/pm/ComponentInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ComponentInfo;

    .line 661
    .local v2, "info":Landroid/content/pm/ComponentInfo;
    if-eqz v2, :cond_2

    .line 662
    iget-object v3, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 664
    .local v3, "targetProcess":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 665
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_1

    .line 666
    const-string v4, "task-affinity"

    const-string v5, "--- \u8c03\u6574\u7ec4\u4ef6 %s, %s -> %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_1
    iput-object v3, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 672
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/content/pm/ComponentInfo;>;"
    .end local v2    # "info":Landroid/content/pm/ComponentInfo;
    .end local v3    # "targetProcess":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 673
    :cond_3
    return-void

    .line 656
    :cond_4
    :goto_1
    return-void
.end method

.method private genDynamicProcessMap()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 559
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 561
    .local v0, "processMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/qihoo360/loader2/Loader;->getHostProcessList()Ljava/util/List;

    move-result-object v1

    .line 562
    .local v1, "hostProcessList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/qihoo360/loader2/Loader;->getPluginProcessList()Ljava/util/List;

    move-result-object v2

    .line 564
    .local v2, "pluginProcessList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 566
    .local v4, "hostProcessCount":I
    :goto_0
    if-gtz v4, :cond_1

    .line 567
    return-object v0

    .line 570
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 572
    .local v5, "pluginProcessCount":I
    :goto_1
    nop

    .line 572
    .local v3, "i":I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 573
    rem-int v6, v3, v4

    .line 574
    .local v6, "hostProcessIndex":I
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .end local v6    # "hostProcessIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 577
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method private getConfigProcessMap(Landroid/content/pm/ApplicationInfo;)Ljava/util/HashMap;
    .locals 8
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 588
    .local v0, "processMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 589
    .local v1, "bdl":Landroid/os/Bundle;
    if-eqz v1, :cond_6

    const-string v2, "process_map"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 593
    :cond_0
    :try_start_0
    const-string v2, "process_map"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "processMapStr":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 595
    .local v3, "ja":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 595
    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 596
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 597
    .local v5, "jo":Lorg/json/JSONObject;
    if-eqz v5, :cond_3

    .line 598
    const-string v6, "to"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 599
    .local v6, "to":Ljava/lang/String;
    const-string v7, "$ui"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 600
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    goto :goto_1

    .line 603
    :cond_1
    const-string v7, "$p"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 604
    sget-object v7, Lcom/qihoo360/replugin/component/process/PluginProcessHost;->PROCESS_ADJUST_MAP:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 607
    :cond_2
    :goto_1
    const-string v7, "from"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .end local v5    # "jo":Lorg/json/JSONObject;
    .end local v6    # "to":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 614
    .end local v2    # "processMapStr":Ljava/lang/String;
    .end local v3    # "ja":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_4
    goto :goto_2

    .line 610
    :catch_0
    move-exception v2

    .line 611
    .local v2, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 612
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 615
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_5
    :goto_2
    return-object v0

    .line 590
    :cond_6
    :goto_3
    return-object v0
.end method

.method private getHostProcessList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v0, "pluginProcessList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 513
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getPluginHost()Lcom/qihoo360/loader2/IPluginHost;
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/qihoo360/loader2/Loader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qihoo360/loader2/PluginProviderStub;->proxyFetchHostBinder(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    .line 399
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 400
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 401
    const-string v1, "ms-receiver"

    const-string v2, "p.p fhb fail"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 405
    :cond_1
    invoke-static {v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v1

    return-object v1
.end method

.method private getPluginProcess(Ljava/util/Set;[Landroid/content/pm/ComponentInfo;)V
    .locals 4
    .param p2, "componentInfos"    # [Landroid/content/pm/ComponentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/content/pm/ComponentInfo;",
            ")V"
        }
    .end annotation

    .line 546
    .local p1, "processSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 547
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 548
    .local v2, "componentInfo":Landroid/content/pm/ComponentInfo;
    iget-object v3, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v2    # "componentInfo":Landroid/content/pm/ComponentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_0
    return-void
.end method

.method private getPluginProcessList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 527
    .local v0, "processSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/component/ComponentList;->getApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 529
    .local v1, "pluginUIProcess":Ljava/lang/String;
    iget-object v2, p0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/component/ComponentList;->getProviders()[Landroid/content/pm/ProviderInfo;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/qihoo360/loader2/Loader;->getPluginProcess(Ljava/util/Set;[Landroid/content/pm/ComponentInfo;)V

    .line 530
    iget-object v2, p0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/component/ComponentList;->getActivities()[Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/qihoo360/loader2/Loader;->getPluginProcess(Ljava/util/Set;[Landroid/content/pm/ComponentInfo;)V

    .line 531
    iget-object v2, p0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/component/ComponentList;->getServices()[Landroid/content/pm/ServiceInfo;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/qihoo360/loader2/Loader;->getPluginProcess(Ljava/util/Set;[Landroid/content/pm/ComponentInfo;)V

    .line 532
    iget-object v2, p0, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/component/ComponentList;->getReceivers()[Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/qihoo360/loader2/Loader;->getPluginProcess(Ljava/util/Set;[Landroid/content/pm/ComponentInfo;)V

    .line 534
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 536
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private regReceivers()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v0, v0, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "plugin":Ljava/lang/String;
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mPluginHost:Lcom/qihoo360/loader2/IPluginHost;

    if-nez v1, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/qihoo360/loader2/Loader;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v1

    iput-object v1, p0, Lcom/qihoo360/loader2/Loader;->mPluginHost:Lcom/qihoo360/loader2/IPluginHost;

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mPluginHost:Lcom/qihoo360/loader2/IPluginHost;

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mPluginHost:Lcom/qihoo360/loader2/IPluginHost;

    sget-object v2, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->INS:Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;

    invoke-virtual {v2, v0}, Lcom/qihoo360/mobilesafe/parser/manifest/ManifestParser;->getReceiverFilterMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/qihoo360/loader2/IPluginHost;->regReceiver(Ljava/lang/String;Ljava/util/Map;)V

    .line 392
    :cond_1
    return-void
.end method


# virtual methods
.method final createBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 8
    .param p1, "newBase"    # Landroid/content/Context;

    .line 168
    new-instance v7, Lcom/qihoo360/loader2/PluginContext;

    iget-object v3, p0, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/qihoo360/loader2/Loader;->mPluginName:Ljava/lang/String;

    const v2, 0x1030005

    move-object v0, v7

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/qihoo360/loader2/PluginContext;-><init>(Landroid/content/Context;ILjava/lang/ClassLoader;Landroid/content/res/Resources;Ljava/lang/String;Lcom/qihoo360/loader2/Loader;)V

    return-object v7
.end method

.method final invoke(Lcom/qihoo360/loader2/PluginCommImpl;)Z
    .locals 5
    .param p1, "manager"    # Lcom/qihoo360/loader2/PluginCommImpl;

    .line 434
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mCreateMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/qihoo360/loader2/Loader;->mPkgContext:Landroid/content/Context;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/i/IPlugin;

    iput-object v1, p0, Lcom/qihoo360/loader2/Loader;->mPlugin:Lcom/qihoo360/i/IPlugin;

    .line 435
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 436
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loader.invoke(): plugin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo360/loader2/Loader;->mPlugin:Lcom/qihoo360/i/IPlugin;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qihoo360/loader2/Loader;->mPlugin:Lcom/qihoo360/i/IPlugin;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_1
    nop

    .line 444
    return v4

    .line 438
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ws001"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    return v0
.end method

.method final invoke2(Lcom/qihoo360/loader2/PluginCommImpl;)Z
    .locals 7
    .param p1, "x"    # Lcom/qihoo360/loader2/PluginCommImpl;

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "manager":Landroid/os/IBinder;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/qihoo360/loader2/Loader;->mCreateMethod2:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/qihoo360/loader2/Loader;->mPkgContext:Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 486
    .local v2, "b":Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 488
    const-string v3, "ws001"

    const-string v4, "p.e.r.b n"

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v1

    .line 492
    :cond_0
    new-instance v3, Lcom/qihoo360/loader2/Loader$ProxyPlugin;

    invoke-direct {v3, v2}, Lcom/qihoo360/loader2/Loader$ProxyPlugin;-><init>(Landroid/os/IBinder;)V

    iput-object v3, p0, Lcom/qihoo360/loader2/Loader;->mBinderPlugin:Lcom/qihoo360/loader2/Loader$ProxyPlugin;

    .line 493
    iget-object v3, p0, Lcom/qihoo360/loader2/Loader;->mBinderPlugin:Lcom/qihoo360/loader2/Loader$ProxyPlugin;

    iput-object v3, p0, Lcom/qihoo360/loader2/Loader;->mPlugin:Lcom/qihoo360/i/IPlugin;

    .line 494
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 495
    const-string v3, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loader.invoke2(): plugin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", plugin.binder.cl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v0    # "manager":Landroid/os/IBinder;
    .end local v2    # "b":Landroid/os/IBinder;
    :cond_1
    nop

    .line 503
    return v6

    .line 497
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "ws001"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    return v1
.end method

.method final isAppLoaded()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/qihoo360/loader2/Loader;->mPlugin:Lcom/qihoo360/i/IPlugin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isDexLoaded()Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/qihoo360/loader2/Loader;->isResourcesLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isPackageInfoLoaded()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isResourcesLoaded()Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/qihoo360/loader2/Loader;->isPackageInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final loadDex(Ljava/lang/ClassLoader;I)Z
    .locals 21
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "load"    # I

    move-object/from16 v8, p0

    .line 173
    move/from16 v9, p2

    const/4 v10, 0x0

    :try_start_0
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object v11, v1

    .line 175
    .local v11, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/qihoo360/loader2/Plugin;->queryCachedPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 176
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_5

    .line 178
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    const/16 v2, 0x8f

    invoke-virtual {v11, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 180
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_3

    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 187
    :cond_0
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 188
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get package archive info, pi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 191
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 193
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 201
    :cond_2
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v1, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 202
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v2

    .line 203
    .local v2, "ld":Ljava/io/File;
    iget-object v3, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 211
    sget-object v3, Lcom/qihoo360/loader2/Plugin;->PKG_NAME_2_PLUGIN_NAME:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 212
    :try_start_1
    sget-object v4, Lcom/qihoo360/loader2/Plugin;->PKG_NAME_2_PLUGIN_NAME:Ljava/util/HashMap;

    iget-object v5, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v8, Lcom/qihoo360/loader2/Loader;->mPluginName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 216
    :try_start_2
    sget-object v3, Lcom/qihoo360/loader2/Plugin;->PLUGIN_NAME_2_FILENAME:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 217
    :try_start_3
    sget-object v4, Lcom/qihoo360/loader2/Plugin;->PLUGIN_NAME_2_FILENAME:Ljava/util/HashMap;

    iget-object v5, v8, Lcom/qihoo360/loader2/Loader;->mPluginName:Ljava/lang/String;

    iget-object v6, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    :try_start_4
    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 222
    :try_start_5
    sget-object v4, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_PACKAGE_INFO:Ljava/util/HashMap;

    iget-object v5, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 218
    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 213
    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v4

    .line 181
    .end local v1    # "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    .end local v2    # "ld":Ljava/io/File;
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_4

    .line 182
    const-string v1, "ws001"

    const-string v2, "get package archive info null"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_4
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 185
    return v10

    .line 230
    :cond_5
    :goto_1
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v1, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v1

    if-nez v1, :cond_6

    .line 231
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v1, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    iget-object v2, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/qihoo360/replugin/model/PluginInfo;->setFrameworkVersionByMeta(Landroid/os/Bundle;)V

    .line 238
    :cond_6
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/qihoo360/loader2/Plugin;->queryCachedComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v1

    iput-object v1, v8, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    .line 239
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    if-nez v1, :cond_7

    .line 241
    new-instance v1, Lcom/qihoo360/replugin/component/ComponentList;

    iget-object v2, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    iget-object v4, v8, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v4, v4, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-direct {v1, v2, v3, v4}, Lcom/qihoo360/replugin/component/ComponentList;-><init>(Landroid/content/pm/PackageInfo;Ljava/lang/String;Lcom/qihoo360/replugin/model/PluginInfo;)V

    iput-object v1, v8, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/qihoo360/loader2/Loader;->regReceivers()V

    .line 247
    sget-object v1, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 248
    :try_start_b
    sget-object v2, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_COMPONENT_LIST:Ljava/util/HashMap;

    iget-object v3, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, v8, Lcom/qihoo360/loader2/Loader;->mComponents:Lcom/qihoo360/replugin/component/ComponentList;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 253
    :try_start_c
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v1}, Lcom/qihoo360/loader2/Loader;->adjustPluginProcess(Landroid/content/pm/ApplicationInfo;)V

    .line 256
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPluginName:Ljava/lang/String;

    iget-object v2, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v1, v2}, Lcom/qihoo360/loader2/Loader;->adjustPluginTaskAffinity(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_2

    .line 249
    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v2

    .line 259
    :cond_7
    :goto_2
    if-nez v9, :cond_8

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/qihoo360/loader2/Loader;->isPackageInfoLoaded()Z

    move-result v1

    return v1

    .line 263
    :cond_8
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/qihoo360/loader2/Plugin;->queryCachedResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;

    .line 265
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3

    if-nez v1, :cond_e

    .line 268
    :try_start_f
    sget-boolean v1, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 270
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 271
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v2, v8, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;

    .line 272
    .end local v1    # "r":Landroid/content/res/Resources;
    goto :goto_3

    .line 273
    :cond_9
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    .line 280
    :goto_3
    nop

    .line 281
    :try_start_10
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;

    if-nez v1, :cond_b

    .line 282
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_a

    .line 283
    const-string v1, "ws001"

    const-string v2, "get resources null"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_a
    return v10

    .line 287
    :cond_b
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_c

    .line 288
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get resources for app, r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_c
    sget-object v1, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_RESOURCES:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3

    .line 293
    :try_start_11
    sget-object v2, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_RESOURCES:Ljava/util/HashMap;

    iget-object v3, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, v8, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    monitor-exit v1

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v2

    .line 275
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 276
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_d

    .line 277
    const-string v2, "ws001"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    :cond_d
    return v10

    .line 296
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e
    :goto_4
    const/4 v12, 0x1

    if-ne v9, v12, :cond_f

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/qihoo360/loader2/Loader;->isResourcesLoaded()Z

    move-result v1

    return v1

    .line 300
    :cond_f
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/qihoo360/loader2/Plugin;->queryCachedClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, v8, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    .line 301
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_16

    .line 303
    iget-object v1, v8, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v1, v1, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexParentDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "out":Ljava/lang/String;
    const-string v1, "dex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-boolean v1, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_10

    .line 312
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 312
    .end local p1    # "parent":Ljava/lang/ClassLoader;
    .local v1, "parent":Ljava/lang/ClassLoader;
    :goto_5
    goto :goto_6

    .line 315
    .end local v1    # "parent":Ljava/lang/ClassLoader;
    .restart local p1    # "parent":Ljava/lang/ClassLoader;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_5

    .line 317
    .end local p1    # "parent":Ljava/lang/ClassLoader;
    .restart local v1    # "parent":Ljava/lang/ClassLoader;
    :goto_6
    :try_start_13
    iget-object v2, v8, Lcom/qihoo360/loader2/Loader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 319
    .local v6, "soDir":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 320
    .local v2, "begin":J
    const/4 v4, 0x0

    .line 322
    .local v4, "isDexExist":Z
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_11

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-wide v2, v13

    .line 324
    iget-object v7, v8, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v7, v7, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v7}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexFile()Ljava/io/File;

    move-result-object v7

    .line 325
    .local v7, "dexFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-lez v17, :cond_11

    .line 326
    const/4 v4, 0x1

    .line 330
    .end local v2    # "begin":J
    .end local v4    # "isDexExist":Z
    .end local v7    # "dexFile":Ljava/io/File;
    .local v13, "isDexExist":Z
    .local v14, "begin":J
    :cond_11
    move-wide v14, v2

    move v13, v4

    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qihoo360/replugin/RePluginConfig;->getCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v2

    iget-object v3, v8, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v3, v3, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    iget-object v4, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/qihoo360/replugin/RePluginCallbacks;->createPluginClassLoader(Lcom/qihoo360/replugin/model/PluginInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/qihoo360/replugin/PluginDexClassLoader;

    move-result-object v2

    iput-object v2, v8, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    .line 331
    const-string v2, "dex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, v8, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_13

    .line 334
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_12

    .line 335
    const-string v2, "ws001"

    const-string v3, "get dex null"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_12
    return v10

    .line 340
    :cond_13
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_15

    .line 341
    if-nez v13, :cond_14

    .line 342
    const-string v2, "createClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --\u91ca\u653eDEX, (plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/qihoo360/loader2/Loader;->mPluginName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v4, v4, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", use:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v4, 0x0

    move-object/from16 v18, v11

    sub-long v10, v16, v14

    .line 343
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v18, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", process:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move/from16 v19, v13

    goto :goto_7

    .line 346
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_14
    move-object/from16 v18, v11

    .line 346
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    const-string v2, "createClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --\u65e0\u9700\u91ca\u653eDEX, (plugin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/qihoo360/loader2/Loader;->mPluginName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/qihoo360/loader2/Loader;->mPluginObj:Lcom/qihoo360/loader2/Plugin;

    iget-object v4, v4, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", use:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v4, 0x0

    move/from16 v19, v13

    sub-long v12, v10, v14

    .line 347
    .end local v13    # "isDexExist":Z
    .local v19, "isDexExist":Z
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", process:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 353
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "isDexExist":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "isDexExist":Z
    :cond_15
    move-object/from16 v18, v11

    move/from16 v19, v13

    .line 353
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "isDexExist":Z
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v19    # "isDexExist":Z
    :goto_7
    sget-object v2, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_DEX:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    .line 354
    :try_start_14
    sget-object v3, Lcom/qihoo360/loader2/Plugin;->FILENAME_2_DEX:Ljava/util/HashMap;

    iget-object v4, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    new-instance v7, Ljava/lang/ref/WeakReference;

    iget-object v10, v8, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v7, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    monitor-exit v2

    .line 357
    move-object v10, v1

    goto :goto_8

    .line 355
    :catchall_5
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    throw v3
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1

    .line 367
    .end local v5    # "out":Ljava/lang/String;
    .end local v6    # "soDir":Ljava/lang/String;
    .end local v14    # "begin":J
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "isDexExist":Z
    :catch_1
    move-exception v0

    move-object v10, v1

    goto :goto_9

    .line 357
    .end local v1    # "parent":Ljava/lang/ClassLoader;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local p1    # "parent":Ljava/lang/ClassLoader;
    :cond_16
    move-object/from16 v18, v11

    move-object/from16 v10, p1

    .line 357
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local p1    # "parent":Ljava/lang/ClassLoader;
    .local v10, "parent":Ljava/lang/ClassLoader;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    :goto_8
    const/4 v1, 0x2

    if-ne v9, v1, :cond_17

    .line 358
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/qihoo360/loader2/Loader;->isDexLoaded()Z

    move-result v1

    return v1

    .line 367
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v0

    goto :goto_9

    .line 362
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    :cond_17
    new-instance v11, Lcom/qihoo360/loader2/PluginContext;

    iget-object v2, v8, Lcom/qihoo360/loader2/Loader;->mContext:Landroid/content/Context;

    const v3, 0x1030005

    iget-object v4, v8, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    iget-object v5, v8, Lcom/qihoo360/loader2/Loader;->mPkgResources:Landroid/content/res/Resources;

    iget-object v6, v8, Lcom/qihoo360/loader2/Loader;->mPluginName:Ljava/lang/String;

    move-object v1, v11

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/qihoo360/loader2/PluginContext;-><init>(Landroid/content/Context;ILjava/lang/ClassLoader;Landroid/content/res/Resources;Ljava/lang/String;Lcom/qihoo360/loader2/Loader;)V

    iput-object v11, v8, Lcom/qihoo360/loader2/Loader;->mPkgContext:Landroid/content/Context;

    .line 363
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_18

    .line 364
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/qihoo360/loader2/Loader;->mPkgContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_2

    .line 372
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :cond_18
    nop

    .line 374
    const/4 v1, 0x1

    return v1

    .line 367
    .end local v10    # "parent":Ljava/lang/ClassLoader;
    .restart local p1    # "parent":Ljava/lang/ClassLoader;
    :catch_3
    move-exception v0

    move-object/from16 v10, p1

    .line 367
    .end local p1    # "parent":Ljava/lang/ClassLoader;
    .restart local v10    # "parent":Ljava/lang/ClassLoader;
    :goto_9
    move-object v1, v0

    .line 369
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/qihoo360/loader2/Loader;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    const/4 v2, 0x0

    return v2
.end method

.method final loadEntryMethod(Z)Z
    .locals 5
    .param p1, "log"    # Z

    .line 412
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.qihoo360.plugin."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mPluginName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Entry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 414
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 415
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found entry: className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", loader="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    const-string v2, "create"

    sget-object v3, Lcom/qihoo360/i/Factory;->PLUGIN_ENTRY_EXPORT_METHOD_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/qihoo360/loader2/Loader;->mCreateMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz p1, :cond_1

    .line 421
    const-string v1, "ws001"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 424
    :cond_1
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 425
    const-string v1, "ws001"

    const-string v2, "loadEntryMethod exception"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qihoo360/loader2/Loader;->mCreateMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method final loadEntryMethod2()Z
    .locals 5

    .line 450
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.qihoo360.plugin."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mPluginName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Entry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 452
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 453
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found entry: className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", loader="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    const-string v2, "create"

    sget-object v3, Lcom/qihoo360/i/Factory;->PLUGIN_ENTRY_EXPORT_METHOD2_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/qihoo360/loader2/Loader;->mCreateMethod2:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 462
    :goto_0
    iget-object v0, p0, Lcom/qihoo360/loader2/Loader;->mCreateMethod2:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method final loadEntryMethod3()Z
    .locals 5

    .line 468
    :try_start_0
    const-string v0, "com.qihoo360.replugin.Entry"

    .line 469
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/qihoo360/loader2/Loader;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 470
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 471
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found entry: className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", loader="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    const-string v2, "create"

    sget-object v3, Lcom/qihoo360/i/Factory;->PLUGIN_ENTRY_EXPORT_METHOD2_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/qihoo360/loader2/Loader;->mCreateMethod2:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws001"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/qihoo360/loader2/Loader;->mCreateMethod2:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
