.class public Lcom/jzb/haocai/haocaisdk/ReplugMainActivity;
.super Lco/bxvip/sdk/ui/BxStartActivityImpl;
.source "ReplugMainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public toYourMainActivity()V
    .locals 2

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    const-class v1, Lcom/jzb/haocai/haocaisdk/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, v0}, Lcom/jzb/haocai/haocaisdk/ReplugMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 19
    invoke-virtual {p0}, Lcom/jzb/haocai/haocaisdk/ReplugMainActivity;->finish()V

    .line 20
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/jzb/haocai/haocaisdk/ReplugMainActivity;->overridePendingTransition(II)V

    .line 22
    return-void
.end method
