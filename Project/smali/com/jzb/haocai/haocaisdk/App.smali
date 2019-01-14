.class public Lcom/jzb/haocai/haocaisdk/App;
.super Lco/bxvip/sdk/BxRePluginAppLicationMakeImpl;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lco/bxvip/sdk/BxRePluginAppLicationMakeImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public initJPushYouNeed()V
    .locals 0

    .line 17
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public initRePluginYourNeed()V
    .locals 0

    .line 23
    return-void
.end method
