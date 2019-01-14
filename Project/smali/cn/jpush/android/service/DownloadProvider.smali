.class public Lcn/jpush/android/service/DownloadProvider;
.super Landroid/content/ContentProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private init()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/api/JCoreInterface;->register(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "DownloadProvider"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private report(IZLandroid/net/Uri;)V
    .locals 8

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/h/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "DownloadProvider"

    const-string p2, "Not need report waked"

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_2

    :try_start_0
    const-string v0, "need_report"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "from_package"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "from_uid"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "awake_sequence"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcn/jiguang/d/h/f;->a()Lcn/jiguang/d/h/f;

    move-result-object p3

    invoke-virtual {p3}, Lcn/jiguang/d/h/f;->b()Lcn/jiguang/d/h/e;

    move-result-object v1

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v7}, Lcn/jiguang/d/h/e;->a(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "DownloadProvider"

    const-string p2, "wakeup is not from sdkWakeUp, give up report data."

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "DownloadProvider"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "report awake fail:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/DownloadProvider;->init()V

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const-string v0, "DownloadProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadProvider getType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/DownloadProvider;->init()V

    const-string p1, "1.1.9"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/DownloadProvider;->init()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    const-string v0, "DownloadProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const-string p2, "DownloadProvider"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "DownloadProvider query:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p2, Lcn/jiguang/d/a;->l:Z

    const/4 p3, 0x4

    invoke-direct {p0, p3, p2, p1}, Lcn/jpush/android/service/DownloadProvider;->report(IZLandroid/net/Uri;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/DownloadProvider;->init()V

    const/4 p1, 0x0

    return p1
.end method
