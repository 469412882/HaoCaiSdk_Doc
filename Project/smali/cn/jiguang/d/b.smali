.class final Lcn/jiguang/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "JCoreGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onServiceConnected, ComponentName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "JCoreGlobal"

    const-string v0, "Remote Service bind success."

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcn/jiguang/b/b;->a(Landroid/os/IBinder;)Lcn/jiguang/b/a;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/g/a/a;->a(Lcn/jiguang/b/a;)V

    sget-object p1, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object p1

    sget-object p2, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    const-string v0, "intent.INIT"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, p2, v0, v1}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "JCoreGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onServiceDisconnected, ComponentName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/g/a/a;->d()V

    return-void
.end method
