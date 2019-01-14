.class public Lcom/qihoo360/replugin/RePluginApplication;
.super Landroid/app/Application;
.source "RePluginApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .line 55
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0}, Lcom/qihoo360/replugin/RePluginApplication;->createConfig()Lcom/qihoo360/replugin/RePluginConfig;

    move-result-object v0

    .line 58
    .local v0, "c":Lcom/qihoo360/replugin/RePluginConfig;
    if-nez v0, :cond_0

    .line 59
    new-instance v1, Lcom/qihoo360/replugin/RePluginConfig;

    invoke-direct {v1}, Lcom/qihoo360/replugin/RePluginConfig;-><init>()V

    move-object v0, v1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/qihoo360/replugin/RePluginApplication;->createCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;

    move-result-object v1

    .line 63
    .local v1, "cb":Lcom/qihoo360/replugin/RePluginCallbacks;
    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/RePluginConfig;->setCallbacks(Lcom/qihoo360/replugin/RePluginCallbacks;)Lcom/qihoo360/replugin/RePluginConfig;

    .line 67
    :cond_1
    invoke-static {p0, v0}, Lcom/qihoo360/replugin/RePlugin$App;->attachBaseContext(Landroid/app/Application;Lcom/qihoo360/replugin/RePluginConfig;)V

    .line 68
    return-void
.end method

.method protected createCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;
    .locals 1

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createConfig()Lcom/qihoo360/replugin/RePluginConfig;
    .locals 1

    .line 39
    new-instance v0, Lcom/qihoo360/replugin/RePluginConfig;

    invoke-direct {v0}, Lcom/qihoo360/replugin/RePluginConfig;-><init>()V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 95
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    invoke-static {p1}, Lcom/qihoo360/replugin/RePlugin$App;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 72
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 74
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin$App;->onCreate()V

    .line 75
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 82
    invoke-static {}, Lcom/qihoo360/replugin/RePlugin$App;->onLowMemory()V

    .line 83
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .line 87
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 90
    invoke-static {p1}, Lcom/qihoo360/replugin/RePlugin$App;->onTrimMemory(I)V

    .line 91
    return-void
.end method
