.class public Lcom/qihoo360/replugin/component/dummy/DummyActivity;
.super Landroid/app/Activity;
.source "DummyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    const-string v0, "ws001"

    const-string v1, "d.a o.c f"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/qihoo360/replugin/component/dummy/DummyActivity;->finish()V

    .line 50
    return-void
.end method
