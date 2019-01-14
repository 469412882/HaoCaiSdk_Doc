.class public final Lcn/jpush/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:I

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Landroid/content/Context;

.field public static f:Z

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    sget-object v0, Lcn/jiguang/api/SdkType;->JPUSH:Lcn/jiguang/api/SdkType;

    invoke-virtual {v0}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/a;->a:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/jpush/android/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    sput-boolean v1, Lcn/jpush/android/a;->f:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 8

    const-class v0, Lcn/jpush/android/a;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcn/jpush/android/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 78
    monitor-exit v0

    return v2

    .line 80
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcn/jpush/android/d/a;->e(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 81
    const-string p0, "JPushGlobal"

    const-string v1, "invalide running, please check your manifest configs"

    invoke-static {p0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit v0

    return v3

    .line 84
    :cond_1
    :try_start_2
    const-string v1, "JPushGlobal"

    const-string v4, "action:init - Service"

    invoke-static {v1, v4}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/jpush/android/a;->c:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcn/jpush/android/a;->e:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    nop

    .line 1120
    :try_start_3
    const-string v1, "JPushGlobal"

    const-string v4, "action - handleUpgrade"

    invoke-static {v1, v4}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v1, "3.1.1"

    .line 1122
    nop

    .line 1199
    const-string v4, "jpush_sdk_version"

    const-string v5, ""

    invoke-static {p0, v4, v5}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1122
    nop

    .line 1123
    const-string v5, "JPushGlobal"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "jpush sdk version - curVersion:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",oldVersion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1125
    const-string v4, "JPushGlobal"

    const-string v5, "It\'s same push version"

    invoke-static {v4, v5}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1127
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1128
    const-string v4, "JPushGlobal"

    const-string v5, "It\'s a new push version"

    invoke-static {v4, v5}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :cond_3
    :goto_0
    nop

    .line 2195
    const-string v4, "jpush_sdk_version"

    invoke-static {p0, v4, v1}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1134
    goto :goto_1

    .line 1132
    :catch_0
    move-exception v1

    .line 1133
    :try_start_4
    const-string v4, "JPushGlobal"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleUpgrade failed:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_1
    invoke-static {p0}, Lcn/jpush/android/a;->b(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 89
    if-nez v1, :cond_4

    .line 90
    const-string p0, "JPushGlobal"

    const-string v1, "JPush cannot be initialized completely due to NULL appInfo."

    invoke-static {p0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    monitor-exit v0

    return v3

    .line 94
    :cond_4
    :try_start_5
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    sput v3, Lcn/jpush/android/a;->b:I

    .line 95
    sget v3, Lcn/jpush/android/a;->b:I

    if-nez v3, :cond_5

    .line 96
    const-string v3, "JPushGlobal"

    const-string v4, "metadata: Can not get Application icon, you will be not able to show notification due to the application icon is null."

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 100
    :cond_5
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/jpush/android/a;->d:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 103
    goto :goto_2

    .line 101
    :catch_1
    move-exception p0

    .line 102
    :try_start_7
    const-string v1, "JPushGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get mApplicationName error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_2
    sget-object p0, Lcn/jpush/android/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 105
    monitor-exit v0

    return v2

    .line 76
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 112
    :catch_0
    move-exception p0

    .line 113
    const-string v0, "JPushGlobal"

    const-string v1, "Unexpected: failed to get current application info"

    invoke-static {v0, v1, p0}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    const/4 p0, 0x0

    return-object p0
.end method
