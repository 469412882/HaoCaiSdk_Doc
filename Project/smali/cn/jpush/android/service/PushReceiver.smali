.class public Lcn/jpush/android/service/PushReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "PushReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p1, "PushReceiver"

    const-string p2, "Received null intent broadcast. Give up processing."

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "PushReceiver"

    const-string p2, "Received action is null"

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    const-string v1, "cn.jpush.android.intent.NOTIFICATION_OPENED_PROXY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const-string v1, "debug_notification"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "toastText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    check-cast p2, Landroid/widget/TextView;

    invoke-static {v1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    :cond_3
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, "PushReceiver"

    const-string p2, "onReceive :JCoreInterface init failed"

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_9

    :cond_6
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_6

    :cond_7
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-nez v0, :cond_8

    const-string p1, "PushReceiver"

    const-string p2, "Not found networkInfo"

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v1, "PushReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Connection state changed to - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v1, v4, :cond_d

    const/4 v1, 0x3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v1, v4, :cond_9

    goto :goto_3

    :cond_9
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v1, :cond_a

    const-string v0, "PushReceiver"

    const-string v1, "No any network is connected"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "connection-state"

    :goto_1
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_a
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-ne v1, v5, :cond_b

    const-string v0, "PushReceiver"

    const-string v1, "Network is connected."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "connection-state"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_b
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    if-ne v1, v3, :cond_c

    const-string v0, "PushReceiver"

    const-string v1, "Network is disconnected."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "connection-state"

    goto :goto_1

    :cond_c
    const-string v1, "PushReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "other network state - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Do nothing."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v0

    const-string v1, "intent.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p1, v1, v4}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_a

    :cond_d
    :goto_3
    const-string p1, "PushReceiver"

    const-string p2, "MMS or SUPL network state change, to do nothing!"

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_f
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v1, :cond_19

    :try_start_4
    const-string v4, "android.os.PowerManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_19

    const-string v5, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v0, "isDeviceIdleMode"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_11

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_5

    :cond_10
    const-string v5, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "isPowerSaveMode"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_11

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_4

    :cond_11
    :goto_5
    if-nez v3, :cond_19

    const-string v0, "PushReceiver"

    const-string v1, "doze or powersave mode exit."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "rtc_delay"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "rtc"

    const-string v2, "rtc"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v1

    const-string v2, "intent.RTC"

    invoke-virtual {v1, p1, v2, v0}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_a

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "PushReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle DEVICE_IDLE_MODE_CHANGED or POWER_SAVE_MODE_CHANGED fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_12
    :goto_6
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_15

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1, v1}, Lcn/jiguang/g/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/g/d;->a(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    invoke-static {v1, v0}, Lcn/jiguang/g/i;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_7
    invoke-static {p1, v0}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_8

    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/jiguang/g/a;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {v1}, Lcn/jiguang/g/i;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_7

    :cond_14
    const-string v0, "PushReceiver"

    const-string v2, "replace app"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-static {p1, v1}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    :cond_15
    const-string p1, "PushReceiver"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Get wrong data string from intent: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const-string p1, "PushReceiver"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Get no data from intent."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    :goto_9
    const/16 v1, 0x1f4

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    :cond_18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "rtc_delay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "rtc"

    const-string v2, "rtc"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v1

    const-string v2, "intent.RTC"

    invoke-virtual {v1, p1, v2, v0}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_19
    :goto_a
    invoke-static {}, Lcn/jiguang/d/d/b;->a()Lcn/jiguang/d/d/b;

    const-string v0, "sdktype"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcn/jiguang/d/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string p2, "PushReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceiver error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_3
    move-exception p1

    const-string p1, "PushReceiver"

    const-string p2, "Received no action intent broadcast. Give up processing."

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
