.class public abstract Lco/bxvip/sdk/BxRePluginAppLicationMakeImpl;
.super Lcom/qihoo360/replugin/RePluginApplication;
.source "BxRePluginAppLicationMakeImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0008\u0010\t\u001a\u00020\nH\u0014J\u0008\u0010\u000b\u001a\u00020\u0004H&J\u0008\u0010\u000c\u001a\u00020\u0004H&J\u0008\u0010\r\u001a\u00020\u0004H\u0016J\u0008\u0010\u000e\u001a\u00020\u0004H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lco/bxvip/sdk/BxRePluginAppLicationMakeImpl;",
        "Lcom/qihoo360/replugin/RePluginApplication;",
        "()V",
        "attachBaseContext",
        "",
        "base",
        "Landroid/content/Context;",
        "createCallbacks",
        "Lcom/qihoo360/replugin/RePluginCallbacks;",
        "createConfig",
        "Lcom/qihoo360/replugin/RePluginConfig;",
        "initJPushYouNeed",
        "initRePluginYourNeed",
        "onCreate",
        "onTerminate",
        "host-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/qihoo360/replugin/RePluginApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/qihoo360/replugin/RePluginApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qihoo360/replugin/RePlugin;->enableDebugger(Landroid/content/Context;Z)Z

    .line 43
    return-void
.end method

.method protected createCallbacks()Lcom/qihoo360/replugin/RePluginCallbacks;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    new-instance v0, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/qihoo360/replugin/RePluginCallbacks;

    return-object v0
.end method

.method protected createConfig()Lcom/qihoo360/replugin/RePluginConfig;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    new-instance v0, Lcom/qihoo360/replugin/RePluginConfig;

    invoke-direct {v0}, Lcom/qihoo360/replugin/RePluginConfig;-><init>()V

    .line 63
    .local v0, "c":Lcom/qihoo360/replugin/RePluginConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/RePluginConfig;->setUseHostClassIfNotFound(Z)Lcom/qihoo360/replugin/RePluginConfig;

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/RePluginConfig;->setVerifySign(Z)Lcom/qihoo360/replugin/RePluginConfig;

    .line 69
    new-instance v1, Lcom/qihoo360/replugin/sdk/BxHostEventCallBacks;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qihoo360/replugin/sdk/BxHostEventCallBacks;-><init>(Landroid/content/Context;)V

    check-cast v1, Lcom/qihoo360/replugin/RePluginEventCallbacks;

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/RePluginConfig;->setEventCallbacks(Lcom/qihoo360/replugin/RePluginEventCallbacks;)Lcom/qihoo360/replugin/RePluginConfig;

    .line 76
    return-object v0
.end method

.method public abstract initJPushYouNeed()V
.end method

.method public abstract initRePluginYourNeed()V
.end method

.method public onCreate()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/qihoo360/replugin/RePluginApplication;->onCreate()V

    .line 47
    sget-object v0, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/utils/CommonInit;->init(Landroid/app/Application;)V

    .line 51
    sget-object v0, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lco/bxvip/tools/ACache;->get(Landroid/content/Context;)Lco/bxvip/tools/ACache;

    move-result-object v0

    const-string v1, "plugin-update-key"

    invoke-virtual {v0, v1}, Lco/bxvip/tools/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->getAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->setAppKey(Ljava/lang/String;)V

    .line 52
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/BxPluginManager;->init(Landroid/content/Context;)Lcom/qihoo360/replugin/sdk/BxPluginManager;

    .line 53
    invoke-virtual {p0}, Lco/bxvip/sdk/BxRePluginAppLicationMakeImpl;->initJPushYouNeed()V

    .line 54
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/qihoo360/replugin/RePluginApplication;->onTerminate()V

    .line 92
    return-void
.end method
