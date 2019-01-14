.class public Lcn/jpush/android/service/PluginFCMMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/google/firebase/messaging/RemoteMessage$Notification;I)Landroid/app/Notification;
    .locals 11

    .line 83
    invoke-virtual {p2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getClickAction()Ljava/lang/String;

    move-result-object p2

    .line 86
    const-string v2, "PluginFCMMessagingService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6536\u5230\u901a\u77e5 title:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",clickAction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    sget-object v0, Lcn/jpush/android/a;->d:Ljava/lang/String;

    .line 93
    :cond_0
    nop

    .line 95
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/service/PluginFCMMessagingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcn/jpush/android/service/PluginFCMMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 96
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 97
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.google.firebase.messaging.default_notification_icon"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :cond_1
    const/4 v3, 0x0

    :goto_0
    goto :goto_1

    .line 99
    :catch_0
    move-exception v3

    .line 100
    const-string v4, "PluginFCMMessagingService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get fcm icon res error"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    .line 103
    const-string v4, "PluginFCMMessagingService"

    const-string v5, "did not config fcm icon meta"

    invoke-static {v4, v5}, Lcn/jpush/android/d/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget v4, Lcn/jpush/android/a;->b:I

    if-eqz v4, :cond_2

    .line 105
    sget v3, Lcn/jpush/android/a;->b:I

    goto :goto_3

    .line 108
    :cond_2
    :try_start_1
    sget-object v4, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 109
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 110
    :try_start_2
    const-string v3, "PluginFCMMessagingService"

    const-string v5, "JPush.mPackageInconId == 0 ?, get icon from application info."

    invoke-static {v3, v5}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    nop

    .line 117
    move v3, v4

    goto :goto_3

    .line 111
    :catch_1
    move-exception v3

    move v10, v4

    move-object v4, v3

    move v3, v10

    goto :goto_2

    :catch_2
    move-exception v4

    .line 112
    :goto_2
    const-string v5, "PluginFCMMessagingService"

    const-string v6, "failed to get application info and icon."

    invoke-static {v5, v6, v4}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :cond_3
    :goto_3
    const/4 v4, 0x0

    .line 118
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    const/4 v7, -0x1

    const/16 v8, 0xb

    if-lt v5, v8, :cond_6

    .line 119
    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v9, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 126
    const-string v1, "JPush"

    const-string v3, "Notification"

    invoke-static {v0, v1, v3, v2, v7}, Lcn/jpush/android/api/b;->a(Landroid/app/Notification$Builder;Ljava/lang/String;Ljava/lang/CharSequence;II)V

    .line 130
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_4

    .line 131
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_4

    .line 132
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_5

    .line 133
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 135
    :cond_5
    move-object v0, v4

    goto :goto_4

    .line 136
    :cond_6
    new-instance v0, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 140
    :goto_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 141
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcn/jpush/android/service/PluginFCMMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_5

    .line 145
    :cond_7
    invoke-virtual {p0}, Lcn/jpush/android/service/PluginFCMMessagingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0}, Lcn/jpush/android/service/PluginFCMMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 146
    if-nez p2, :cond_8

    .line 147
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 149
    :cond_8
    move-object v1, p2

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 152
    :goto_5
    const/high16 p1, 0x14000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    const/high16 p1, 0x8000000

    invoke-static {p0, p3, v1, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 155
    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v6

    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 156
    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 157
    iput v7, v0, Landroid/app/Notification;->defaults:I

    .line 158
    return-object v0
.end method


# virtual methods
.method public onDeletedMessages()V
    .locals 2

    .line 168
    const-string v0, "PluginFCMMessagingService"

    const-string v1, "onDeletedMessages is called"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-super {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    .line 170
    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 8

    .line 42
    const-string v0, "PluginFCMMessagingService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMessageReceived is called:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    .line 45
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 49
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    if-eqz v0, :cond_2

    .line 58
    nop

    .line 1066
    :try_start_0
    const-string p1, "JMessageExtra"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1067
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1068
    const-string v2, "msg_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1069
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcn/jpush/android/api/b;->a(Ljava/lang/String;I)I

    move-result v5

    .line 1070
    invoke-direct {p0, v1, v0, v5}, Lcn/jpush/android/service/PluginFCMMessagingService;->a(Landroid/os/Bundle;Lcom/google/firebase/messaging/RemoteMessage$Notification;I)Landroid/app/Notification;

    move-result-object p1

    .line 1071
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PluginFCMMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1072
    invoke-virtual {v0, v5, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1073
    const-string v4, ""

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcn/jpush/android/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IBZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    goto :goto_1

    .line 1075
    :catch_0
    move-exception p1

    .line 1076
    const-string v0, "PluginFCMMessagingService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#unexcepted - action handleNotification error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 60
    :cond_2
    nop

    .line 1162
    const-string p1, "intent.plugin.platform.ON_MESSAGING"

    invoke-static {p0, v1, p1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1163
    sget-object p1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 62
    :goto_1
    return-void

    .line 46
    :cond_3
    :goto_2
    const-string p1, "PluginFCMMessagingService"

    const-string v0, "data is null"

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 3

    .line 174
    const-string v0, "PluginFCMMessagingService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMessageSent is called "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageSent(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 180
    const-string v0, "PluginFCMMessagingService"

    const-string v1, "onSendError is called"

    invoke-static {v0, v1, p2}, Lcn/jpush/android/d/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    invoke-super {p0, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 182
    return-void
.end method
