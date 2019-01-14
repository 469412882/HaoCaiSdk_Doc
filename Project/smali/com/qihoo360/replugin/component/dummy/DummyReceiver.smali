.class public Lcom/qihoo360/replugin/component/dummy/DummyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DummyReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 42
    const-string v0, "ws001"

    const-string v1, "d.r o.c f"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
