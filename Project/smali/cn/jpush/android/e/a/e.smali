.class public final Lcn/jpush/android/e/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/ImageButton;


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 32
    const-string v0, "SystemAlertWebViewCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action --- startActivityByName--------activityName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "----- params : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "SystemAlertWebViewCallback"

    const-string v1, "The activity name is null or empty, Give up.."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcn/jpush/android/e/a/e;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 39
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    nop

    .line 45
    if-eqz p1, :cond_2

    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/jpush/android/e/a/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    const-string p1, "cn.jpush.android.ACTIVITY_PARAM"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    iget-object p1, p0, Lcn/jpush/android/e/a/e;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    nop

    .line 1057
    const-string p1, "SystemAlertWebViewCallback"

    const-string p2, "action --- close"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object p1, p0, Lcn/jpush/android/e/a/e;->b:Landroid/view/WindowManager;

    iget-object p2, p0, Lcn/jpush/android/e/a/e;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lcn/jpush/android/e/a/e;->d:Landroid/widget/ImageButton;

    invoke-static {p1, p2, v0}, Lcn/jpush/android/api/c;->a(Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/widget/ImageButton;)V

    .line 54
    :cond_2
    return-void

    .line 40
    :catch_0
    move-exception p1

    .line 41
    const-string p1, "SystemAlertWebViewCallback"

    const-string p2, "The activity name is invalid, Give up.."

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
