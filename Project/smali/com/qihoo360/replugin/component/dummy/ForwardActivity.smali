.class public Lcom/qihoo360/replugin/component/dummy/ForwardActivity;
.super Landroid/app/Activity;
.source "ForwardActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v0, "ws001"

    const-string v1, "f.a: o.c"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/qihoo360/replugin/component/dummy/ForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 48
    const-string v1, "ws001"

    const-string v2, "f.a: nul i"

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-static {p0, v0}, Lcom/qihoo360/loader2/PMF;->forward(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 53
    return-void
.end method
