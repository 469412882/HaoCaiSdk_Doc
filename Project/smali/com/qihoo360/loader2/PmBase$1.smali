.class Lcom/qihoo360/loader2/PmBase$1;
.super Landroid/content/BroadcastReceiver;
.source "PmBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/loader2/PmBase;->registerReceiverAction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/loader2/PmBase;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qihoo360/loader2/PmBase;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/loader2/PmBase;

    .line 632
    iput-object p1, p0, Lcom/qihoo360/loader2/PmBase$1;->this$0:Lcom/qihoo360/loader2/PmBase;

    iput-object p2, p0, Lcom/qihoo360/loader2/PmBase$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 636
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase$1;->val$action:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    const-string v0, "obj"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 638
    .local v0, "info":Lcom/qihoo360/replugin/model/PluginInfo;
    if-eqz v0, :cond_3

    .line 639
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase$1;->val$action:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x4a300c39    # 2884366.2f

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    const v4, 0x7c9c887b

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "ACTION_NEW_PLUGIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "ACTION_UNINSTALL_PLUGIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 639
    .end local v0    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    goto :goto_1

    .line 645
    .restart local v0    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    :pswitch_0
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase$1;->this$0:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v1, v0}, Lcom/qihoo360/loader2/PmBase;->pluginUninstalled(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 645
    .end local v0    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    goto :goto_1

    .line 642
    .restart local v0    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    :pswitch_1
    iget-object v1, p0, Lcom/qihoo360/loader2/PmBase$1;->this$0:Lcom/qihoo360/loader2/PmBase;

    const-string v2, "persist_need_restart"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/qihoo360/loader2/PmBase;->newPluginFound(Lcom/qihoo360/replugin/model/PluginInfo;Z)V

    .line 643
    nop

    .line 650
    .end local v0    # "info":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
