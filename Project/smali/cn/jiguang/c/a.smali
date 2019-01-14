.class public final Lcn/jiguang/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jiguang/c/b;


# static fields
.field private static final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcn/jiguang/c/a;->a:Ljava/util/LinkedHashMap;

    const-string v1, "s.jpush.cn"

    const/16 v2, 0x4a38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/c/a;->a:Ljava/util/LinkedHashMap;

    const-string v1, "sis.jpush.io"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/c/a;->a:Ljava/util/LinkedHashMap;

    const-string v1, "easytomessage.com"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CNHostConfig"

    const-string v0, "conn info was empty"

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "srv"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "CNHostConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save srvHost:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    const-string v2, "srv"

    invoke-static {v1, v2, p0}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, "conn"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CNHostConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save connHost:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    const-string v1, "conn"

    invoke-static {v0, v1, p0}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CN"

    return-object v0
.end method

.method public final b()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcn/jiguang/c/a;->a:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    const-string v1, "conn"

    const-string v2, "im64.jpush.cn"

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "im64.jpush.cn"

    :cond_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    const-string v1, "srv"

    const-string v2, "_im64._tcp.jpush.cn"

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "_im64._tcp.jpush.cn"

    :cond_0
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "_psis._udp.jpush.cn"

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "stats.jpush.cn"

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, "update.sdk.jiguang.cn"

    return-object v0
.end method
