.class final Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;
.super Ljava/lang/Object;
.source "PluginProcessMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/PluginProcessMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProcessRecord"
.end annotation


# instance fields
.field activities:I

.field binder:Landroid/os/IBinder;

.field binders:I

.field client:Lcom/qihoo360/loader2/IPluginClient;

.field final index:I

.field mobified:J

.field pid:I

.field plugin:Ljava/lang/String;

.field services:I

.field state:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "state"    # I

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    .line 154
    iput p2, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    .line 155
    return-void
.end method


# virtual methods
.method allocate(Ljava/lang/String;)V
    .locals 2
    .param p1, "plugin"    # Ljava/lang/String;

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    .line 160
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->plugin:Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binder:Landroid/os/IBinder;

    .line 163
    iput-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    .line 164
    iput v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    .line 165
    iput v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    .line 166
    iput v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    .line 167
    return-void
.end method

.method setClient(Landroid/os/IBinder;Lcom/qihoo360/loader2/IPluginClient;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "client"    # Lcom/qihoo360/loader2/IPluginClient;

    .line 175
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binder:Landroid/os/IBinder;

    .line 176
    iput-object p2, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    .line 177
    return-void
.end method

.method setRunning(I)V
    .locals 1
    .param p1, "pid"    # I

    .line 170
    const/4 v0, 0x2

    iput v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    .line 171
    iput p1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    .line 172
    return-void
.end method

.method setStoped()V
    .locals 1

    .line 184
    const/4 v0, 0x4

    iput v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binder:Landroid/os/IBinder;

    .line 187
    iput-object v0, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 192
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mobified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->mobified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " plugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->plugin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->client:Lcom/qihoo360/loader2/IPluginClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " activities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->activities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->services:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " binders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qihoo360/loader2/PluginProcessMain$ProcessRecord;->binders:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
