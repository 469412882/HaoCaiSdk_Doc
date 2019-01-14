.class final Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper$1;
.super Ljava/lang/Object;
.source "PluginReceiverHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper;->onPluginReceiverReceived(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$pContext:Landroid/content/Context;

.field final synthetic val$receiverName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper$1;->val$receiverName:Ljava/lang/String;

    iput-object p2, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper$1;->val$finalReceiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper$1;->val$pContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 91
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "ms-receiver"

    const-string v1, "\u8c03\u7528 %s.onReceive()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper$1;->val$receiverName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper$1;->val$finalReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper$1;->val$pContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/receiver/PluginReceiverHelper$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    return-void
.end method
