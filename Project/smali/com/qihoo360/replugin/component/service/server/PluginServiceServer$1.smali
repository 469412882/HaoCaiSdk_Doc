.class Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$1;
.super Landroid/os/Handler;
.source "PluginServiceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 98
    iput-object p1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$1;->this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 109
    .local v2, "sr":Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 110
    iget-object v3, v2, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->service:Landroid/app/Service;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v4}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    goto :goto_0

    .line 112
    :cond_1
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_2

    .line 113
    const-string v3, "ws001"

    const-string v4, "pss.onStartCommand fail."

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "sr":Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    :cond_2
    :goto_0
    return-void
.end method
