.class public Lcom/qihoo360/replugin/packages/PluginInfoUpdater;
.super Ljava/lang/Object;
.source "PluginInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/packages/PluginInfoUpdater$UpdateReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_UNINSTALL_PLUGIN:Ljava/lang/String; = "ACTION_UNINSTALL_PLUGIN"

.field private static final ACTION_UPDATE_INFO:Ljava/lang/String; = "com.qihoo360.replugin.pms.ACTION_UPDATE_INFO"

.field private static final TAG:Ljava/lang/String; = "PluginInfoUpdater"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$100(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .line 37
    invoke-static {p0}, Lcom/qihoo360/replugin/packages/PluginInfoUpdater;->onReceiveUpdateInfo(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private static onReceiveUpdateInfo(Landroid/content/Intent;)Z
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .line 70
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "PluginInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveUpdateInfo: in="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    const-string v0, "pn"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "pn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 75
    return v2

    .line 79
    :cond_1
    invoke-static {v0, v2}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    .line 80
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v1, :cond_2

    .line 81
    return v2

    .line 85
    :cond_2
    const-string v3, "used"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    const-string v3, "used"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 87
    .local v2, "used":Z
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_3

    .line 88
    const-string v3, "PluginInfoUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceiveUpdateInfo: pn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; setIsUsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3
    invoke-virtual {v1, v2}, Lcom/qihoo360/replugin/model/PluginInfo;->setIsUsed(Z)V

    .line 92
    .end local v2    # "used":Z
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public static register(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.qihoo360.replugin.pms.ACTION_UPDATE_INFO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/qihoo360/replugin/packages/PluginInfoUpdater$UpdateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/qihoo360/replugin/packages/PluginInfoUpdater$UpdateReceiver;-><init>(Lcom/qihoo360/replugin/packages/PluginInfoUpdater$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 47
    return-void
.end method

.method static updateIsUsed(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "used"    # Z

    .line 50
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "PluginInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIsUsed: Prepare to send broadcast, pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; used="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qihoo360.replugin.pms.ACTION_UPDATE_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "used"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    invoke-static {p0, v0}, Lcom/qihoo360/replugin/base/IPC;->sendLocalBroadcast2AllSync(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 57
    return-void
.end method
