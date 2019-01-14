.class public final Lcn/jpush/android/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/app/Activity;

.field b:Lcn/jpush/android/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_0

    .line 27
    const-string p1, "PluginHuaweiPushInterface"

    const-string v0, "context was null"

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void

    .line 30
    :cond_0
    invoke-static {p1}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;)B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 31
    new-instance v0, Lcn/jpush/android/c/a;

    invoke-direct {v0, p1, p0}, Lcn/jpush/android/c/a;-><init>(Landroid/content/Context;Lcn/jpush/android/c/c;)V

    iput-object v0, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 36
    const-string v0, "PluginHuaweiPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart mActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/c/c;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-nez p1, :cond_0

    .line 38
    const-string p1, "PluginHuaweiPushInterface"

    const-string v0, "activity was null"

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void

    .line 42
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object v0, v0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    if-eqz v0, :cond_1

    .line 43
    iput-object p1, p0, Lcn/jpush/android/c/c;->a:Landroid/app/Activity;

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/jpush/android/api/JPushInterface;->isPushStopped(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 45
    iget-object p1, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object p1, p1, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_1
    return-void

    .line 48
    :catch_0
    move-exception p1

    .line 49
    const-string v0, "PluginHuaweiPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart - error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public final a(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 3

    .line 62
    const-string v0, "PluginHuaweiPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/16 p3, 0x2711

    if-ne p2, p3, :cond_6

    .line 64
    if-eqz p1, :cond_5

    .line 67
    if-eqz p4, :cond_0

    :try_start_0
    const-string p2, "intent.extra.RESULT"

    const/4 p3, 0x0

    invoke-virtual {p4, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 67
    :cond_0
    const/4 p2, -0x1

    .line 68
    :goto_0
    const-string p3, "PluginHuaweiPushInterface"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult,intent.extra.RESULT value"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-nez p2, :cond_2

    .line 71
    iget-object p1, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object p1, p1, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object p1, p1, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    .line 72
    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->isConnecting()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object p1, p1, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    .line 73
    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 74
    iget-object p1, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object p1, p1, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->connect()V

    goto :goto_2

    .line 76
    :cond_1
    const-string p1, "PluginHuaweiPushInterface"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult call connect failed huaweiApiClient:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object p3, p3, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 79
    :cond_2
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    const/16 p1, 0xd

    if-ne p2, p1, :cond_3

    .line 81
    const-string p1, "PluginHuaweiPushInterface"

    const-string p2, "user cancled"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 82
    :cond_3
    const/16 p1, 0x8

    if-ne p2, p1, :cond_4

    .line 83
    const-string p1, "PluginHuaweiPushInterface"

    const-string p2, "huawei sdk internal error"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 86
    :cond_4
    const-string p1, "PluginHuaweiPushInterface"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "unknow error:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 89
    :goto_1
    nop

    .line 90
    const-string p2, "PluginHuaweiPushInterface"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onActivityResult error:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 93
    :cond_5
    const-string p1, "PluginHuaweiPushInterface"

    const-string p2, "onActivityResult activity was null"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_6
    :goto_2
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 3

    .line 54
    const-string v0, "PluginHuaweiPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStop mActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/c/c;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-nez p1, :cond_0

    .line 56
    const-string p1, "PluginHuaweiPushInterface"

    const-string v0, "activity was null"

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcn/jpush/android/c/c;->a:Landroid/app/Activity;

    .line 59
    return-void
.end method
