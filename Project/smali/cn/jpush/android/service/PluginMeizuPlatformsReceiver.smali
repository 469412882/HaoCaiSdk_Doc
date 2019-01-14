.class public Lcn/jpush/android/service/PluginMeizuPlatformsReceiver;
.super Lcom/meizu/cloud/pushsdk/MzPushMessageReceiver;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/MzPushMessageReceiver;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 125
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    const-string p0, "JMessageExtra"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 127
    :catch_0
    move-exception p0

    .line 128
    const-string v0, "PluginMeizuPlatformsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse extra error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    const-string p1, "PluginMeizuPlatformsReceiver"

    const-string p2, "onMessage is called"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onNotificationArrived(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 93
    const-string v0, "PluginMeizuPlatformsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotificationArrived:title:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",content:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",extra:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-static {v0, p2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {p4}, Lcn/jpush/android/service/PluginMeizuPlatformsReceiver;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcn/jpush/android/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IBZ)V

    .line 98
    return-void
.end method

.method public onNotificationClicked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 102
    const-string v0, "PluginMeizuPlatformsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotificationClicked:title:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",content:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",extra:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-static {v0, p2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {p4}, Lcn/jpush/android/service/PluginMeizuPlatformsReceiver;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcn/jpush/android/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IBZ)V

    .line 107
    return-void
.end method

.method public onPushStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
    .locals 0

    .line 57
    const-string p1, "PluginMeizuPlatformsReceiver"

    const-string p2, "onPushStatus is called"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/service/PluginMeizuPlatformsReceiver;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 37
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/MzPushMessageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public onRegister(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    const-string p1, "PluginMeizuPlatformsReceiver"

    const-string p2, "onRegister is called"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
    .locals 3

    .line 62
    const-string v0, "PluginMeizuPlatformsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRegisterStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    nop

    .line 64
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getPushId()Ljava/lang/String;

    move-result-object p2

    .line 66
    const-string v0, "PluginMeizuPlatformsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PushId is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    const/4 p2, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    .line 70
    :catch_0
    move-exception p1

    .line 71
    const-string p2, "PluginMeizuPlatformsReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update pushId unexpected error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onSubAliasStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V
    .locals 2

    .line 88
    const-string p1, "PluginMeizuPlatformsReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSubAliasStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onSubTagsStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
    .locals 2

    .line 83
    const-string p1, "PluginMeizuPlatformsReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSubTagsStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onUnRegister(Landroid/content/Context;Z)V
    .locals 0

    .line 52
    const-string p1, "PluginMeizuPlatformsReceiver"

    const-string p2, "onUnRegister is called"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onUnRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V
    .locals 2

    .line 78
    const-string p1, "PluginMeizuPlatformsReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUnRegisterStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onUpdateNotificationBuilder(Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V
    .locals 4

    .line 112
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PluginMeizuPlatformsReceiver;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    iput-object v0, p0, Lcn/jpush/android/service/PluginMeizuPlatformsReceiver;->a:Landroid/content/Context;

    .line 113
    :cond_0
    iget-object v0, p0, Lcn/jpush/android/service/PluginMeizuPlatformsReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mz_push_notification_small_icon"

    const-string v2, "drawable"

    iget-object v3, p0, Lcn/jpush/android/service/PluginMeizuPlatformsReceiver;->a:Landroid/content/Context;

    .line 114
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->setmStatusbarIcon(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_1
    return-void

    .line 118
    :catch_0
    move-exception p1

    .line 119
    const-string v0, "PluginMeizuPlatformsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set meizu statusbar icon error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method
