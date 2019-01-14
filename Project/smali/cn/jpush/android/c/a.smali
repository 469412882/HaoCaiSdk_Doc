.class public final Lcn/jpush/android/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;
.implements Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;


# instance fields
.field protected a:Lcom/huawei/hms/api/HuaweiApiClient;

.field private b:Lcn/jpush/android/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/jpush/android/c/c;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcn/jpush/android/c/a;->b:Lcn/jpush/android/c/c;

    .line 30
    :try_start_0
    new-instance p2, Lcom/huawei/hms/api/HuaweiApiClient$Builder;

    invoke-direct {p2, p1}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/huawei/hms/support/api/push/HuaweiPush;->PUSH_API:Lcom/huawei/hms/api/Api;

    .line 31
    invoke-virtual {p2, p1}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;->addApi(Lcom/huawei/hms/api/Api;)Lcom/huawei/hms/api/HuaweiApiClient$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1, p0}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;->addConnectionCallbacks(Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;)Lcom/huawei/hms/api/HuaweiApiClient$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1, p0}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;->addOnConnectionFailedListener(Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;)Lcom/huawei/hms/api/HuaweiApiClient$Builder;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;->build()Lcom/huawei/hms/api/HuaweiApiClient;

    move-result-object p1

    iput-object p1, p0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-void

    .line 35
    :catch_0
    move-exception p1

    .line 36
    const-string p2, "PluginHuaweiApiClientCallBack"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new PluginHuaweiPlatformAction object failed e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private a()Landroid/app/Activity;
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/jpush/android/c/a;->b:Lcn/jpush/android/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/c/a;->b:Lcn/jpush/android/c/c;

    iget-object v0, v0, Lcn/jpush/android/c/c;->a:Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcn/jpush/android/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/huawei/hms/support/api/push/HuaweiPush;->HuaweiPushApi:Lcom/huawei/hms/support/api/push/HuaweiPushApi;

    iget-object v1, p0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-interface {v0, v1}, Lcom/huawei/hms/support/api/push/HuaweiPushApi;->getToken(Lcom/huawei/hms/support/api/client/ApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;

    move-result-object v0

    .line 96
    new-instance v1, Lcn/jpush/android/c/a$1;

    invoke-direct {v1, p0}, Lcn/jpush/android/c/a$1;-><init>(Lcn/jpush/android/c/a;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/client/PendingResult;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    const-string v0, "PluginHuaweiApiClientCallBack"

    const-string v1, "get token failed, HMS is disconnect."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v1, "PluginHuaweiApiClientCallBack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get RegID failed error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private c()Z
    .locals 4

    .line 120
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {v0}, Lcom/huawei/hms/api/HuaweiApiClient;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "PluginHuaweiApiClientCallBack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load connect state faile -  error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final onConnected()V
    .locals 2

    .line 51
    const-string v0, "PluginHuaweiApiClientCallBack"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcn/jpush/android/c/a;->b()Ljava/lang/String;

    .line 53
    return-void
.end method

.method public final onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 5

    .line 67
    const-string v0, "PluginHuaweiApiClientCallBack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectionFailed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/c/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    .line 70
    const-string v1, "PluginHuaweiApiClientCallBack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "is user Resolvable Error - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz v0, :cond_2

    .line 72
    invoke-direct {p0}, Lcn/jpush/android/c/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    invoke-direct {p0}, Lcn/jpush/android/c/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result p1

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, p1, v2}, Lcom/huawei/hms/api/HuaweiApiAvailability;->resolveError(Landroid/app/Activity;II)V

    goto :goto_1

    .line 75
    :cond_1
    const-string p1, "PluginHuaweiApiClientCallBack"

    const-string v0, "onConnectionFailed activity was null"

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 79
    :cond_2
    :try_start_1
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object p1

    invoke-direct {p0}, Lcn/jpush/android/c/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    goto :goto_1

    .line 80
    :catch_0
    move-exception p1

    .line 81
    :try_start_2
    const-string v0, "PluginHuaweiApiClientCallBack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uploadRegID failed - error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    return-void

    .line 84
    :catch_1
    move-exception p1

    .line 85
    const-string v0, "PluginHuaweiApiClientCallBack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resolverError failed error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_1
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    .line 57
    const-string v0, "PluginHuaweiApiClientCallBack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :try_start_0
    iget-object p1, p0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-void

    .line 60
    :catch_0
    move-exception p1

    .line 61
    const-string v0, "PluginHuaweiApiClientCallBack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectionSuspended reconnect failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
