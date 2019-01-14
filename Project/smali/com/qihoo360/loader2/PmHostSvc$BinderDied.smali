.class final Lcom/qihoo360/loader2/PmHostSvc$BinderDied;
.super Ljava/lang/Object;
.source "PmHostSvc.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/PmHostSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BinderDied"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/qihoo360/loader2/PmHostSvc$BinderDied;->name:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/qihoo360/loader2/PmHostSvc$BinderDied;->binder:Landroid/os/IBinder;

    .line 126
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 130
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died: n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/loader2/PmHostSvc$BinderDied;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/loader2/PmHostSvc$BinderDied;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PluginProcessMain;->sBinders:Ljava/util/HashMap;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcom/qihoo360/loader2/PluginProcessMain;->sBinders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/qihoo360/loader2/PmHostSvc$BinderDied;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
