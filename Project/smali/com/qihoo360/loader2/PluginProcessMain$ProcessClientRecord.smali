.class final Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;
.super Ljava/lang/Object;
.source "PluginProcessMain.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/PluginProcessMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProcessClientRecord"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field client:Lcom/qihoo360/loader2/IPluginClient;

.field index:I

.field private final mManagerServer:Lcom/qihoo360/replugin/packages/PluginManagerServer;

.field name:Ljava/lang/String;

.field pid:I

.field plugin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qihoo360/replugin/packages/PluginManagerServer;)V
    .locals 0
    .param p1, "pms"    # Lcom/qihoo360/replugin/packages/PluginManagerServer;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->mManagerServer:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    .line 222
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->mManagerServer:Lcom/qihoo360/replugin/packages/PluginManagerServer;

    invoke-static {p0, v0}, Lcom/qihoo360/loader2/PluginProcessMain;->access$100(Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;Lcom/qihoo360/replugin/packages/PluginManagerServer;)V

    .line 227
    return-void
.end method

.method public getClient()Lcom/qihoo360/loader2/IPluginClient;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 231
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " plugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->plugin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessClientRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
