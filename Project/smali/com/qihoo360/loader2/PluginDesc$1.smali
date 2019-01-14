.class final Lcom/qihoo360/loader2/PluginDesc$1;
.super Landroid/content/BroadcastReceiver;
.source "PluginDesc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/loader2/PluginDesc;->registerReceiverIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 190
    invoke-static {}, Lcom/qihoo360/loader2/PluginDesc;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/qihoo360/loader2/PluginDesc;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Receiver.onReceive(): Mark change!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/qihoo360/loader2/PluginDesc;->access$202(Z)Z

    .line 195
    invoke-static {}, Lcom/qihoo360/loader2/PluginDesc;->access$300()Ljava/util/HashMap;

    .line 196
    return-void
.end method
