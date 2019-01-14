.class public Lcom/liulishuo/filedownloader/services/FileDownloadService;
.super Landroid/app/Service;
.source "FileDownloadService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService;,
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;
    }
.end annotation


# instance fields
.field private handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 44
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 45
    invoke-static {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->holdContext(Landroid/content/Context;)V

    .line 48
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v0

    iget v0, v0, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MIN_PROGRESS_STEP:I

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->setMinProgressStep(I)V

    .line 49
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v0

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MIN_PROGRESS_TIME:J

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->setMinProgressTime(J)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 54
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    new-instance v0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;-><init>()V

    .line 56
    .local v0, "manager":Lcom/liulishuo/filedownloader/services/FileDownloadManager;
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v1

    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->PROCESS_NON_SEPARATE:Z

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/liulishuo/filedownloader/services/FDServiceSharedHandler;-><init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/FileDownloadManager;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;

    goto :goto_1

    .line 59
    :cond_0
    new-instance v1, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/liulishuo/filedownloader/services/FDServiceSeparateHandler;-><init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/FileDownloadManager;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;

    .line 61
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;->onDestroy()V

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 65
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->handler:Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/services/IFileDownloadServiceHandler;->onStartCommand(Landroid/content/Intent;II)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method
