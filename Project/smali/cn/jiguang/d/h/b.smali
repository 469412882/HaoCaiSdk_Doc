.class public final Lcn/jiguang/d/h/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/ServiceConnection;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public b:Landroid/content/Context;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/jiguang/d/h/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/d/h/b;->c:Z

    iput-object p1, p0, Lcn/jiguang/d/h/b;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcn/jiguang/d/h/b;->c:Z

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p2, "CustomServiceConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/d/h/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Lcn/jiguang/d/h/b;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string p2, "CustomServiceConnection"

    const-string v0, "CustomServiceConnection unbindService"

    invoke-static {p2, v0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    :try_start_1
    const-string v0, "CustomServiceConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CustomServiceConnection unbind service failed,error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-boolean p2, p0, Lcn/jiguang/d/h/b;->c:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcn/jiguang/d/h/d;

    invoke-direct {v0}, Lcn/jiguang/d/h/d;-><init>()V

    invoke-virtual {v0, p1}, Lcn/jiguang/d/h/d;->a(Landroid/content/ComponentName;)V

    const/4 v1, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcn/jiguang/d/h/d;->a(IZ)V

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcn/jiguang/d/h/d;->a(IZ)V

    :goto_3
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/jiguang/d/h/f;->a()Lcn/jiguang/d/h/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jiguang/d/h/f;->b()Lcn/jiguang/d/h/e;

    move-result-object p1

    iget-object v0, p0, Lcn/jiguang/d/h/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcn/jiguang/d/h/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "CustomServiceConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "report:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcn/jiguang/d/h/b;->b:Landroid/content/Context;

    const-string v0, "android_awake"

    invoke-static {p2, v0, p1}, Lcn/jiguang/d/h/e;->b(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_3
    const-string p1, "CustomServiceConnection"

    const-string p2, "while list wakeup, not report here."

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "CustomServiceConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleonServiceConnected error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "CustomServiceConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceDisconnected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
