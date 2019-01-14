.class public Lcn/jpush/android/service/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "AlarmReceiver"

    const-string v0, "onReceive"

    invoke-static {p2, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcn/jiguang/d/a/d;->j(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1, v0}, Lcn/jiguang/d/b/a;->a(Landroid/content/Context;Z)V

    return-void

    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/jiguang/g/a;->j(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcn/jiguang/d/d/g;->a()Lcn/jiguang/d/d/g;

    invoke-static {p1}, Lcn/jiguang/d/d/g;->b(Landroid/content/Context;)V

    return-void
.end method
