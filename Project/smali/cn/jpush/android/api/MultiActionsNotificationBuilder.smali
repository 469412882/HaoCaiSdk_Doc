.class public Lcn/jpush/android/api/MultiActionsNotificationBuilder;
.super Lcn/jpush/android/api/DefaultPushNotificationBuilder;
.source "SourceFile"


# static fields
.field private static final NOTI_ACT_EXTRA_STR:Ljava/lang/String; = "notification_action_extra_string"

.field private static final NOTI_ACT_RES_ID:Ljava/lang/String; = "notification_action_res_id"

.field private static final NOTI_ACT_TEXT:Ljava/lang/String; = "notification_action_text"

.field private static final TAG:Ljava/lang/String; = "MultiActionsNotificationBuilder"


# instance fields
.field private actionJSONArray:Lorg/json/JSONArray;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;-><init>()V

    .line 32
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->actionJSONArray:Lorg/json/JSONArray;

    .line 35
    iput-object p1, p0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static parseFromPreference(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;
    .locals 3

    .line 95
    new-instance v0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;

    sget-object v1, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/jpush/android/api/MultiActionsNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 97
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->actionJSONArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 98
    :catch_0
    move-exception p0

    .line 99
    const-string v1, "MultiActionsNotificationBuilder"

    const-string v2, "Parse builder from preference failed!"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 102
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addJPushAction(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    :try_start_0
    const-string v1, "notification_action_res_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string p1, "notification_action_text"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string p1, "notification_action_extra_string"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    iget-object p1, p0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->actionJSONArray:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 46
    const-string p1, "MultiActionsNotificationBuilder"

    iget-object p2, p0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->actionJSONArray:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 47
    :catch_0
    move-exception p1

    .line 48
    const-string p2, "MultiActionsNotificationBuilder"

    const-string p3, "Construct action failed!"

    invoke-static {p2, p3}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    return-void
.end method

.method getNotification(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 57
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->actionJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 59
    :try_start_0
    iget-object v1, p0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->actionJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 60
    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.jpush.android.intent.NOTIFICATION_CLICK_ACTION_PROXY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v3, "cn.jpush.android.NOTIFIACATION_ACTION_EXTRA"

    const-string v4, "notification_action_extra_string"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getRuningFlag()Z

    move-result v3

    const/high16 v4, 0x8000000

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->mContext:Landroid/content/Context;

    const-class v6, Lcn/jpush/android/ui/PopWinActivity;

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    const-string v3, "isNotification"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    iget-object v3, p0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_1

    .line 69
    :cond_0
    iget-object v3, p0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->mContext:Landroid/content/Context;

    const-class v6, Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    iget-object v3, p0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 74
    :goto_1
    const-string v3, "MultiActionsNotificationBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Add notification action: res - "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "notification_action_res_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", string - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "notification_action_text"

    .line 75
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", extra - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "notification_action_extra_string"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "notification_action_res_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "notification_action_text"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_2

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string v2, "MultiActionsNotificationBuilder"

    const-string v3, "Parse Action from preference preference failed!"

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 57
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1

    .line 87
    :cond_2
    const-string v0, "MultiActionsNotificationBuilder"

    const-string v1, "Device with SDK_VERSION < 16, show original notification style."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->actionJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
