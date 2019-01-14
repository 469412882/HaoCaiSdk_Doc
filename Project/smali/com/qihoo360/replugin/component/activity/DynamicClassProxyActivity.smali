.class public Lcom/qihoo360/replugin/component/activity/DynamicClassProxyActivity;
.super Landroid/app/Activity;
.source "DynamicClassProxyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/qihoo360/replugin/component/activity/DynamicClassProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 44
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "dynamicClassName":Ljava/lang/String;
    invoke-static {v1}, Lcom/qihoo360/i/Factory2;->getPluginByDynamicClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "plugin":Ljava/lang/String;
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_0

    .line 51
    const-string v3, "loadClass"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DynamicClassProxyActivity.onCreate(), plugin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/qihoo360/replugin/RePlugin;->isPluginInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v3, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin;->getConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qihoo360/replugin/RePluginConfig;->getCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, p0, v2, v3, v5}, Lcom/qihoo360/replugin/RePluginCallbacks;->onPluginNotExistsForActivity(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Z

    .line 62
    .end local v1    # "dynamicClassName":Ljava/lang/String;
    .end local v2    # "plugin":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/qihoo360/replugin/component/activity/DynamicClassProxyActivity;->finish()V

    .line 63
    return-void
.end method
