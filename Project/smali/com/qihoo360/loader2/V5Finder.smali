.class public Lcom/qihoo360/loader2/V5Finder;
.super Ljava/lang/Object;
.source "V5Finder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final search(Landroid/content/Context;Ljava/io/File;Lcom/qihoo360/loader2/Builder$PxAll;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginDir"    # Ljava/io/File;
    .param p2, "all"    # Lcom/qihoo360/loader2/Builder$PxAll;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "v5Plugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qihoo360/loader2/V5FileInfo;>;"
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->getPnInstallDir()Ljava/io/File;

    move-result-object v1

    .line 44
    .local v1, "dir":Ljava/io/File;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search v5 files: dir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-static {v1, v0}, Lcom/qihoo360/loader2/V5Finder;->searchV5Plugins(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 51
    .end local v1    # "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/loader2/V5FileInfo;

    .line 53
    .local v2, "p":Lcom/qihoo360/loader2/V5FileInfo;
    new-instance v3, Lcom/qihoo360/loader/utils/ProcessLocker;

    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Lcom/qihoo360/loader2/V5FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/qihoo360/loader2/V5FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".lock"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/qihoo360/loader/utils/ProcessLocker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v3, "lock":Lcom/qihoo360/loader/utils/ProcessLocker;
    invoke-virtual {v3}, Lcom/qihoo360/loader/utils/ProcessLocker;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, p0, p1, v4, v5}, Lcom/qihoo360/loader2/V5FileInfo;->updateV5FileTo(Landroid/content/Context;Ljava/io/File;ZZ)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v4

    .line 67
    .local v4, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v4, :cond_2

    .line 68
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_3

    .line 69
    const-string v5, "ws001"

    const-string v6, "search: fail to update v5 plugin"

    invoke-static {v5, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p2, v4}, Lcom/qihoo360/loader2/Builder$PxAll;->addV5(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 74
    .end local v2    # "p":Lcom/qihoo360/loader2/V5FileInfo;
    .end local v3    # "lock":Lcom/qihoo360/loader/utils/ProcessLocker;
    .end local v4    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_3
    :goto_1
    goto :goto_0

    .line 75
    :cond_4
    return-void
.end method

.method private static final searchV5Plugins(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 9
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/loader2/V5FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "plugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qihoo360/loader2/V5FileInfo;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 80
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "ws001"

    const-string v2, "search v5 plugin: nothing"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void

    .line 85
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 86
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    .line 90
    goto :goto_1

    .line 92
    :cond_3
    const/4 v4, 0x0

    .line 93
    .local v4, "p":Lcom/qihoo360/loader2/V5FileInfo;
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/qihoo360/loader2/V5FileInfo;->build(Ljava/io/File;I)Lcom/qihoo360/loader2/V5FileInfo;

    move-result-object v4

    .line 94
    if-eqz v4, :cond_4

    .line 95
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_1

    .line 98
    :cond_4
    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/qihoo360/loader2/V5FileInfo;->build(Ljava/io/File;I)Lcom/qihoo360/loader2/V5FileInfo;

    move-result-object v4

    .line 99
    if-eqz v4, :cond_5

    .line 100
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    nop

    .line 85
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "p":Lcom/qihoo360/loader2/V5FileInfo;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_6
    return-void
.end method
