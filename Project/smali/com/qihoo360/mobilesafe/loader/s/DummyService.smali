.class public Lcom/qihoo360/mobilesafe/loader/s/DummyService;
.super Landroid/app/Service;
.source "DummyService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
