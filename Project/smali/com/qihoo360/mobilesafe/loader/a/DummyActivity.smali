.class public Lcom/qihoo360/mobilesafe/loader/a/DummyActivity;
.super Landroid/app/Activity;
.source "DummyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    const-string v0, "ws001"

    const-string v1, "d a o c f m"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/loader/a/DummyActivity;->finish()V

    .line 45
    return-void
.end method
