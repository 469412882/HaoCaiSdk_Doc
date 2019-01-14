.class Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LaunchTaskRunnable"
.end annotation


# instance fields
.field private mExpired:Z

.field private final mTaskStarter:Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;)V
    .locals 1
    .param p1, "taskStarter"    # Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->mTaskStarter:Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->mExpired:Z

    .line 147
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 164
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->mTaskStarter:Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public expire()V
    .locals 1

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->mExpired:Z

    .line 169
    return-void
.end method

.method public isSameListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 159
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->mTaskStarter:Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->mTaskStarter:Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;->equalListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->mExpired:Z

    if-eqz v0, :cond_0

    .line 152
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->mTaskStarter:Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;->start()V

    .line 156
    return-void
.end method
