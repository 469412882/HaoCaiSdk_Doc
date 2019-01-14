.class public Lcn/jpush/android/service/PluginHuaweiPlatformsReceiver;
.super Lcom/huawei/hms/support/api/push/PushReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/huawei/hms/support/api/push/PushReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/content/Context;Lcom/huawei/hms/support/api/push/PushReceiver$Event;Landroid/os/Bundle;)V
    .locals 9

    .line 32
    const-string v0, "PluginHuaweiPlatformsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEvent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/huawei/hms/support/api/push/PushReceiver$Event;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    if-eqz p2, :cond_5

    sget-object v0, Lcom/huawei/hms/support/api/push/PushReceiver$Event;->NOTIFICATION_OPENED:Lcom/huawei/hms/support/api/push/PushReceiver$Event;

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/push/PushReceiver$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const-string v1, "pushNotifyId"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 35
    move v6, v0

    goto :goto_1

    .line 34
    :cond_1
    nop

    .line 35
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 36
    const-string v0, "notification"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 38
    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 41
    :cond_2
    if-eqz p3, :cond_3

    :try_start_0
    const-string v0, "pushMsg"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 47
    :catch_0
    move-exception v0

    goto :goto_4

    .line 41
    :cond_3
    nop

    .line 42
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    move-object v4, v0

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    const-string v0, "PluginHuaweiPlatformsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receive extented notification message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, ""

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcn/jpush/android/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IBZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_5

    .line 47
    :goto_4
    nop

    .line 48
    const-string v1, "PluginHuaweiPlatformsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse message error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_5
    :goto_5
    invoke-super {p0, p1, p2, p3}, Lcom/huawei/hms/support/api/push/PushReceiver;->onEvent(Landroid/content/Context;Lcom/huawei/hms/support/api/push/PushReceiver$Event;Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onPushState(Landroid/content/Context;Z)V
    .locals 3

    .line 56
    const-string v0, "PluginHuaweiPlatformsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPushState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1, p2}, Lcom/huawei/hms/support/api/push/PushReceiver;->onPushState(Landroid/content/Context;Z)V

    .line 58
    return-void
.end method

.method public onToken(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/huawei/hms/support/api/push/PushReceiver;->onToken(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    nop

    .line 19
    if-eqz p3, :cond_0

    .line 20
    const-string v0, "belongId"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 22
    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string v0, "PluginHuaweiPlatformsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",belongId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :try_start_0
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    const-string p2, "PluginHuaweiPlatformsReceiver"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "uploadRegID failed - error:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
