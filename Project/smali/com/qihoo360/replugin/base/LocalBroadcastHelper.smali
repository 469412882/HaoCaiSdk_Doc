.class public Lcom/qihoo360/replugin/base/LocalBroadcastHelper;
.super Ljava/lang/Object;
.source "LocalBroadcastHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendBroadcastSyncUi(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 44
    :try_start_0
    new-instance v0, Lcom/qihoo360/replugin/base/LocalBroadcastHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/qihoo360/replugin/base/LocalBroadcastHelper$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/base/ThreadUtils;->syncToMainThread(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
