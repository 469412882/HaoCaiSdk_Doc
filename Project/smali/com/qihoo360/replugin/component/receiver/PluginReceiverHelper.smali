.class public Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper;
.super Ljava/lang/Object;
.source "PluginReceiverHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPluginReceiverReceived(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Intent;)V
    .locals 8
    .param p0, "plugin"    # Ljava/lang/String;
    .param p1, "receiverName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 46
    .local p2, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/BroadcastReceiver;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/qihoo360/i/Factory;->queryPluginContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "pContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 56
    return-void

    .line 59
    :cond_1
    const-string v1, "%s-%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 62
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    if-eqz p2, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/content/BroadcastReceiver;

    goto :goto_2

    .line 65
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/qihoo360/replugin/component/receiver/PluginReceiverProxy;->loadClassSafety(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 66
    .local v5, "c":Ljava/lang/Class;
    if-eqz v5, :cond_5

    .line 67
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/BroadcastReceiver;

    move-object v2, v6

    .line 68
    if-eqz p2, :cond_4

    .line 69
    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_4
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_5

    .line 73
    const-string v6, "ms-receiver"

    const-string v7, "\u53cd\u5c04\u521b\u5efa Receiver \u5b9e\u4f8b %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v5    # "c":Ljava/lang/Class;
    goto :goto_1

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/Throwable;
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_5

    .line 78
    const-string v4, "ms-receiver"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    nop

    .line 85
    :goto_2
    if-eqz v2, :cond_6

    .line 86
    move-object v3, v2

    .line 88
    .local v3, "finalReceiver":Landroid/content/BroadcastReceiver;
    new-instance v4, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper$1;

    invoke-direct {v4, p1, v3, v0, p3}, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper$1;-><init>(Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v4}, Lcom/qihoo360/mobilesafe/api/Tasks;->post2UI(Ljava/lang/Runnable;)Z

    .line 99
    .end local v3    # "finalReceiver":Landroid/content/BroadcastReceiver;
    :cond_6
    return-void

    .line 47
    .end local v0    # "pContext":Landroid/content/Context;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "receiver":Landroid/content/BroadcastReceiver;
    :cond_7
    :goto_3
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_8

    .line 48
    const-string v0, "ms-receiver"

    const-string v1, "plugin or receiver or intent is null, return."

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_8
    return-void
.end method
