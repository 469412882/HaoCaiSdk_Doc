.class public final Lcn/jpush/android/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "Xiaomi"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/i;->a:Ljava/lang/String;

    .line 31
    const-string v0, "huawei"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/i;->b:Ljava/lang/String;

    .line 32
    const-string v0, "Meizu"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/i;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)B
    .locals 9

    .line 35
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 36
    const-string p0, "PluginWhichPlatform"

    const-string v1, "context was null"

    invoke-static {p0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return v0

    .line 39
    :cond_0
    nop

    .line 40
    nop

    .line 41
    nop

    .line 43
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    const-string v3, "PluginWhichPlatform"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get MANUFACTURER failed - error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    const-string p0, "PluginWhichPlatform"

    const-string v1, "MANUFACTURER was empty"

    invoke-static {p0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return v0

    .line 51
    :cond_1
    sget-object v3, Lcn/jpush/android/c/i;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    .line 52
    nop

    .line 53
    invoke-static {p0}, Lcn/jpush/android/c/i;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    nop

    .line 67
    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    :cond_3
    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    .line 56
    :cond_4
    sget-object v3, Lcn/jpush/android/c/i;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 57
    nop

    .line 58
    invoke-static {p0}, Lcn/jpush/android/c/i;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 59
    nop

    .line 67
    const/4 v4, 0x2

    goto :goto_2

    :cond_5
    const/4 v4, 0x2

    goto :goto_1

    .line 61
    :cond_6
    sget-object v3, Lcn/jpush/android/c/i;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 62
    nop

    .line 63
    invoke-static {p0}, Lcn/jpush/android/c/i;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    nop

    .line 67
    const/4 v5, 0x3

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :goto_2
    const-string v2, "PluginWhichPlatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "realPhoneType:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " jPluginPlatformType:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p0, v4}, Lcn/jpush/android/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {p0, v4}, Lcn/jpush/android/b;->b(Landroid/content/Context;I)Z

    move-result v3

    .line 70
    const-string v6, "PluginWhichPlatform"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "current cache rid is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",regUploaded:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    if-nez v5, :cond_8

    .line 73
    invoke-static {p0, v4, v1}, Lcn/jpush/android/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 74
    invoke-static {p0, v4, v0}, Lcn/jpush/android/b;->b(Landroid/content/Context;IZ)V

    .line 76
    :cond_8
    return v5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 346
    const-string v0, "PluginWhichPlatform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - getPluginPlatformConfigInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 348
    const-string p0, "PluginWhichPlatform"

    const-string p1, "context was null"

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-object v0

    .line 353
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 355
    if-eqz p0, :cond_4

    .line 356
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 361
    if-eqz p0, :cond_3

    .line 362
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 363
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 364
    :cond_2
    :goto_0
    const-string p0, "PluginWhichPlatform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "metadata: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - not defined in manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    nop

    .line 377
    move-object p0, v0

    :goto_1
    const-string v0, "PluginWhichPlatform"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-object p0

    .line 370
    :cond_3
    :try_start_1
    const-string p0, "PluginWhichPlatform"

    const-string p1, "NO meta data defined in manifest."

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-object v0

    .line 358
    :cond_4
    const-string p0, "PluginWhichPlatform"

    const-string p1, "metadata: Can not get metaData from ApplicationInfo"

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    return-object v0

    .line 373
    :catch_0
    move-exception p0

    .line 374
    const-string p1, "PluginWhichPlatform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load plugin sdk config info error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-object v0
.end method

.method private static a()Z
    .locals 6

    .line 178
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    .line 179
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "ro.build.display.id"

    aput-object v4, v3, v1

    .line 180
    const-string v4, "android.os.SystemProperties"

    .line 181
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 182
    const-string v5, "get"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 184
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    const-string v3, "PluginWhichPlatform"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get flyme version is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 188
    const-string v3, "OS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Flyme 5.1.11.1A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    :cond_0
    const-string v3, "OS"

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Flyme OS 5.1.11.1A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v2, :cond_2

    :cond_1
    return v0

    :cond_2
    return v1

    .line 193
    :cond_3
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v2, "PluginWhichPlatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " getFlymeVersion wrong error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return v1
.end method

.method private static b()Z
    .locals 6

    .line 250
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    .line 251
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "ro.build.version.emui"

    aput-object v4, v3, v1

    .line 252
    const-string v4, "android.os.SystemProperties"

    .line 253
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 254
    const-string v5, "get"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 256
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    const-string v3, "PluginWhichPlatform"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get EMUI version is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 260
    const-string v3, "EmotionUI_4.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v2, :cond_0

    return v0

    :cond_0
    return v1

    .line 264
    :cond_1
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string v2, "PluginWhichPlatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " getEmuiVersion wrong error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return v1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string p0, "PluginWhichPlatform"

    const-string v0, "context was null"

    invoke-static {p0, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 p0, 0x0

    return p0

    .line 84
    :cond_0
    invoke-static {p0}, Lcn/jpush/android/c/i;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 4

    .line 91
    nop

    .line 92
    const-string v0, "cn.jpush.android.service.PluginFCMMessagingService"

    invoke-static {p0, v0}, Lcn/jpush/android/d/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "cn.jpush.android.service.PluginFCMInstanceIdService"

    .line 93
    invoke-static {p0, v0}, Lcn/jpush/android/d/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 95
    const-string p0, "PluginWhichPlatform"

    const-string v0, "Os version is lower 14 ,will not use fcm"

    invoke-static {p0, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return v1

    .line 1116
    :cond_0
    :try_start_0
    const-string v0, "com.google.firebase.iid.FirebaseInstanceId"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1117
    nop

    .line 99
    invoke-static {p0}, Lcn/jpush/android/c/i;->d(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 100
    const/4 p0, 0x1

    .line 107
    const/4 v1, 0x1

    :cond_1
    goto :goto_0

    .line 102
    :catch_0
    move-exception p0

    .line 103
    const-string v0, "PluginWhichPlatform"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Please check *.jar files your project depends on, can\'t load class - com.google.firebase.iid.FirebaseInstanceId \nerror:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please check *.jar files your project depends on."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 109
    :cond_2
    const-string p0, "PluginWhichPlatform"

    const-string v0, "AndroidManifest.xml missing service: cn.jpush.android.platforms.PluginFCMMessagingService and cn.jpush.android.platforms.PluginFCMInstanceIdService"

    invoke-static {p0, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return v1
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 7

    .line 121
    nop

    .line 122
    nop

    .line 123
    const-string v0, "com.google.android.gms"

    .line 125
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 126
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 127
    const/4 v3, 0x1

    goto :goto_0

    .line 126
    :cond_0
    nop

    .line 127
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 128
    :try_start_1
    const-string p0, "PluginWhichPlatform"

    const-string v0, "google play services is not system app!"

    invoke-static {p0, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v2

    .line 141
    :catch_0
    move-exception p0

    const/4 v0, 0x0

    goto :goto_3

    .line 139
    :catch_1
    move-exception p0

    goto :goto_2

    .line 131
    :cond_1
    const-string v4, "com.google.android.gms.version"

    invoke-static {p0, v4}, Lcn/jpush/android/d/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 132
    if-nez v4, :cond_2

    return v2

    .line 133
    :cond_2
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-lt p0, v4, :cond_3

    .line 135
    const/4 p0, 0x1

    goto :goto_1

    .line 134
    :cond_3
    nop

    .line 135
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_4

    .line 136
    :try_start_2
    const-string v0, "PluginWhichPlatform"

    const-string v4, "google play services is out of date , please update."

    invoke-static {v0, v4}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 141
    :catch_2
    move-exception v0

    move-object v6, v0

    move v0, p0

    move-object p0, v6

    goto :goto_3

    .line 139
    :catch_3
    move-exception v0

    goto :goto_4

    :goto_2
    const/4 p0, 0x0

    goto :goto_4

    .line 141
    :catch_4
    move-exception p0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 142
    :goto_3
    const-string v4, "PluginWhichPlatform"

    const-string v5, "get google play services error:"

    invoke-static {v4, v5, p0}, Lcn/jpush/android/d/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    move p0, v0

    goto :goto_6

    .line 139
    :catch_5
    move-exception p0

    const/4 p0, 0x0

    const/4 v3, 0x0

    .line 140
    :goto_4
    const-string v0, "PluginWhichPlatform"

    const-string v4, "no google play services in the device!"

    invoke-static {v0, v4}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_4
    :goto_5
    nop

    .line 144
    :goto_6
    if-eqz v3, :cond_5

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 4

    .line 151
    nop

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-lt v0, v3, :cond_3

    const-string v0, "cn.jpush.android.service.PluginMeizuPlatformsReceiver"

    invoke-static {p0, v0}, Lcn/jpush/android/d/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1198
    :try_start_0
    const-string p0, "com.meizu.cloud.pushsdk.PushManager"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1199
    nop

    .line 154
    const/4 p0, 0x1

    goto :goto_0

    .line 1201
    :cond_0
    nop

    .line 154
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {}, Lcn/jpush/android/c/i;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 155
    goto :goto_3

    .line 157
    :cond_1
    const-string p0, "PluginWhichPlatform"

    const-string v0, "flyme version < 5.1.11.1A , Should not use MeizuPush"

    invoke-static {p0, v0}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 159
    :catch_0
    move-exception p0

    .line 160
    const-string v0, "PluginWhichPlatform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Please check *.jar files your project depends on, can\'t load class - com.meizu.cloud.pushsdk.PushManager \nerror:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please check *.aar files your project depends on."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 168
    :cond_2
    :goto_1
    goto :goto_2

    .line 170
    :cond_3
    const-string p0, "PluginWhichPlatform"

    const-string v0, "AndroidManifest.xml missing receiver: cn.jpush.android.service.PluginMeizuPlatformsReceiver"

    invoke-static {p0, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_2
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 4

    .line 212
    nop

    .line 215
    const-string v0, "cn.jpush.android.service.PluginXiaomiPlatformsReceiver"

    invoke-static {p0, v0}, Lcn/jpush/android/d/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 217
    nop

    .line 1205
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->shouldUseMIUIPush(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1206
    nop

    .line 217
    const/4 p0, 0x1

    goto :goto_0

    .line 1208
    :cond_0
    nop

    .line 217
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 218
    goto :goto_3

    .line 220
    :cond_1
    const-string p0, "PluginWhichPlatform"

    const-string v0, "should not Use MIUIPush"

    invoke-static {p0, v0}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 222
    :catch_0
    move-exception p0

    .line 223
    const-string v0, "PluginWhichPlatform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Please check *.jar files your project depends on, can\'t load class - com.xiaomi.mipush.sdk.MiPushClient \nerror:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please check *.jar files your project depends on."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 231
    :cond_2
    :goto_1
    goto :goto_2

    .line 237
    :cond_3
    const-string p0, "PluginWhichPlatform"

    const-string v0, "AndroidManifest.xml missing receiver: cn.jpush.android.service.PluginXiaomiPlatformsReceiver"

    invoke-static {p0, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_2
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 4

    .line 279
    nop

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_3

    const-string v0, "cn.jpush.android.service.PluginHuaweiPlatformsReceiver"

    .line 284
    invoke-static {p0, v0}, Lcn/jpush/android/d/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 286
    :try_start_0
    invoke-static {}, Lcn/jpush/android/c/i;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1272
    sget-object p0, Lcom/huawei/hms/support/api/push/HuaweiPush;->HuaweiPushApi:Lcom/huawei/hms/support/api/push/HuaweiPushApi;

    if-eqz p0, :cond_0

    .line 1273
    nop

    .line 286
    const/4 p0, 0x1

    goto :goto_0

    .line 1275
    :cond_0
    nop

    .line 286
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 287
    goto :goto_3

    .line 289
    :cond_1
    const-string p0, "PluginWhichPlatform"

    const-string v0, "emui version must large than 4.0"

    invoke-static {p0, v0}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 291
    :catch_0
    move-exception p0

    .line 292
    const-string v0, "PluginWhichPlatform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Please check *.jar files your project depends on, can\'t load class - com.huawei.hms.support.api.push.HuaweiPush \nerror:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please check *.jar files your project depends on."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 300
    :cond_2
    :goto_1
    goto :goto_2

    .line 306
    :cond_3
    const-string p0, "PluginWhichPlatform"

    const-string v0, "AndroidManifest.xml missing receiver: cn.jpush.android.service.PluginHuaweiPlatformsReceiver"

    invoke-static {p0, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_2
    const/4 v1, 0x0

    :goto_3
    return v1
.end method
