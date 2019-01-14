.class Lcom/qihoo360/loader2/PluginTable;
.super Ljava/lang/Object;
.source "PluginTable.java"


# static fields
.field static final PLUGINS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final buildPlugins()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation

    .line 121
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "ws001"

    const-string v1, "build plugins"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qihoo360/loader2/MP;->getPlugins(Z)Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " plugins"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1
    return-object v0
.end method

.method static final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 45
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->DUMP_ENABLED:Z

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- PluginTable.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qihoo360/loader2/MP;->getPlugins(Z)Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 49
    .local v2, "r":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 50
    .end local v2    # "r":Lcom/qihoo360/replugin/model/PluginInfo;
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 53
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    :cond_1
    return-void
.end method

.method static final getPluginInfo(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 2
    .param p0, "plugin"    # Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/model/PluginInfo;

    monitor-exit v0

    return-object v1

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final initPlugins(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/loader2/Plugin;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p0, "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qihoo360/loader2/Plugin;>;"
    sget-object v0, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/loader2/Plugin;

    .line 58
    .local v2, "plugin":Lcom/qihoo360/loader2/Plugin;
    iget-object v3, v2, Lcom/qihoo360/loader2/Plugin;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-static {v3}, Lcom/qihoo360/loader2/PluginTable;->putPluginInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 59
    .end local v2    # "plugin":Lcom/qihoo360/loader2/Plugin;
    goto :goto_0

    .line 60
    :cond_0
    monitor-exit v0

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static putPluginInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 2
    .param p0, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 134
    sget-object v0, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    return-void
.end method

.method static final removeInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 5
    .param p0, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "rc":Z
    const/4 v1, 0x0

    .line 102
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    sget-object v2, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    monitor-enter v2

    .line 103
    :try_start_0
    sget-object v3, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/replugin/model/PluginInfo;

    move-object v1, v3

    .line 104
    if-eqz v1, :cond_0

    .line 105
    invoke-static {p0}, Lcom/qihoo360/loader2/PluginTable;->removePluginInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 106
    const/4 v0, 0x1

    .line 108
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1

    .line 110
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeInfo plugin table: info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " rc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    return-void

    .line 108
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static removePluginInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 2
    .param p0, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 142
    sget-object v0, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method static final replaceInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 5
    .param p0, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "rc":Z
    const/4 v1, 0x0

    .line 85
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    sget-object v2, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    monitor-enter v2

    .line 86
    :try_start_0
    sget-object v3, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qihoo360/replugin/model/PluginInfo;

    move-object v1, v3

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1, p0}, Lcom/qihoo360/replugin/model/PluginInfo;->canReplaceForPn(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-static {p0}, Lcom/qihoo360/loader2/PluginTable;->putPluginInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 90
    const/4 v0, 0x1

    .line 93
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1

    .line 95
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replace plugin table: info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " rc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    return-void

    .line 93
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static final updatePlugin(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 4
    .param p0, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 64
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update plugin table: info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PluginTable;->PLUGINS:Ljava/util/HashMap;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/RePluginConfig;->getCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/qihoo360/replugin/RePluginCallbacks;->isPluginBlocked(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update plugin table: plugin is blocked, in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    monitor-exit v0

    return-void

    .line 78
    :cond_2
    invoke-static {p0}, Lcom/qihoo360/loader2/PluginTable;->putPluginInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
