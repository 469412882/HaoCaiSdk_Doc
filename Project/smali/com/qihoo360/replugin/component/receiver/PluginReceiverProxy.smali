.class public Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;
.super Landroid/content/BroadcastReceiver;
.source "PluginReceiverProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ms-receiver"


# instance fields
.field private mActionPluginComponents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mReceiverProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;->mReceiverProcess:Ljava/util/HashMap;

    return-void
.end method

.method private getProcessOfReceiver(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "receiver"    # Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;->mReceiverProcess:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-static {p1}, Lcom/qihoo360/i/Factory;->queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v1

    .line 127
    .local v1, "components":Lcom/qihoo360/replugin/component/ComponentList;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Lcom/qihoo360/replugin/component/ComponentList;->getReceiverMap()Ljava/util/HashMap;

    move-result-object v2

    .line 130
    .local v2, "receiverMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ActivityInfo;>;"
    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    .line 133
    .local v3, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_0

    .line 134
    iget-object v4, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;->mReceiverProcess:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v5}, Lcom/qihoo360/replugin/component/utils/PluginClientHelper;->getProcessInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v1    # "components":Lcom/qihoo360/replugin/component/ComponentList;
    .end local v2    # "receiverMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ActivityInfo;>;"
    .end local v3    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;->mReceiverProcess:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;->mReceiverProcess:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 142
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static loadClassSafety(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 60
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;->mActionPluginComponents:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 67
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "ms-receiver"

    const-string v3, "\u4ee3\u7406 Receiver \u6536\u5230 action: %s "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;->mActionPluginComponents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 73
    .local v1, "pc":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_6

    .line 76
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 77
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 78
    .local v5, "plugin":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 79
    goto :goto_0

    .line 83
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 88
    .local v8, "receiver":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v5, v8}, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;->getProcessOfReceiver(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 91
    .local v9, "process":I
    const/4 v10, -0x2

    if-ne v9, v10, :cond_3

    .line 92
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v10

    .line 93
    .local v10, "host":Lcom/qihoo360/loader2/IPluginHost;
    invoke-interface {v10, v5, v8, p2}, Lcom/qihoo360/loader2/IPluginHost;->onReceive(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 94
    .end local v10    # "host":Lcom/qihoo360/loader2/IPluginHost;
    goto :goto_2

    .line 95
    :cond_3
    new-instance v10, Lcom/qihoo360/loader2/PluginBinderInfo;

    invoke-direct {v10, v2}, Lcom/qihoo360/loader2/PluginBinderInfo;-><init>(I)V

    invoke-static {v5, v9, v10}, Lcom/qihoo360/loader2/MP;->startPluginProcess(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v10

    .line 96
    .local v10, "client":Lcom/qihoo360/loader2/IPluginClient;
    invoke-interface {v10, v5, v8, p2}, Lcom/qihoo360/loader2/IPluginClient;->onReceive(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v9    # "process":I
    .end local v10    # "client":Lcom/qihoo360/loader2/IPluginClient;
    :goto_2
    goto :goto_3

    .line 99
    :catch_0
    move-exception v9

    .line 100
    .local v9, "e":Ljava/lang/Throwable;
    sget-boolean v10, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v10, :cond_4

    .line 101
    const-string v10, "ms-receiver"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v8    # "receiver":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    goto :goto_1

    .line 105
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "plugin":Ljava/lang/String;
    .end local v6    # "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    goto :goto_0

    .line 108
    .end local v1    # "pc":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_6
    return-void

    .line 61
    .end local v0    # "action":Ljava/lang/String;
    :cond_7
    :goto_4
    return-void
.end method

.method public setActionPluginMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 146
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    iput-object p1, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;->mActionPluginComponents:Ljava/util/HashMap;

    .line 147
    return-void
.end method
