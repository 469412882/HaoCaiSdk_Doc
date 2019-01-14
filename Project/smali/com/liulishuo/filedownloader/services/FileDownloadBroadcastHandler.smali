.class public Lcom/liulishuo/filedownloader/services/FileDownloadBroadcastHandler;
.super Ljava/lang/Object;
.source "FileDownloadBroadcastHandler.java"


# static fields
.field public static final ACTION_COMPLETED:Ljava/lang/String; = "filedownloader.intent.action.completed"

.field public static final KEY_MODEL:Ljava/lang/String; = "model"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseIntent(Landroid/content/Intent;)Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .line 40
    const-string v0, "filedownloader.intent.action.completed"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t recognize the intent with action %s, on the current version we only support action [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "filedownloader.intent.action.completed"

    aput-object v4, v2, v3

    .line 42
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    const-string v0, "model"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    return-object v0
.end method

.method public static sendCompletedBroadcast(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 2
    .param p0, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "filedownloader.intent.action.completed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "model"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    return-void
.end method
