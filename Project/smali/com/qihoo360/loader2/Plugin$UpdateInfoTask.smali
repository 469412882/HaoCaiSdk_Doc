.class Lcom/qihoo360/loader2/Plugin$UpdateInfoTask;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfoTask"
.end annotation


# instance fields
.field mInfo:Lcom/qihoo360/replugin/model/PluginInfo;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/qihoo360/loader2/Plugin$UpdateInfoTask;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    .line 166
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 171
    :try_start_0
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->getPluginHost()Lcom/qihoo360/loader2/IPluginHost;

    move-result-object v0

    iget-object v1, p0, Lcom/qihoo360/loader2/Plugin$UpdateInfoTask;->mInfo:Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-interface {v0, v1}, Lcom/qihoo360/loader2/IPluginHost;->updatePluginInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ph u p i: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
