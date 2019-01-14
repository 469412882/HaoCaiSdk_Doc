.class public Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;
.super Ljava/lang/Object;
.source "DownloadLaunchRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callbackProgressMaxCount:Ljava/lang/Integer;

.field private header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private isForceReDownload:Ljava/lang/Boolean;

.field private isWifiRequired:Ljava/lang/Boolean;

.field private maxRetryTimes:Ljava/lang/Integer;

.field private minIntervalMillis:Ljava/lang/Integer;

.field private model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

.field private threadPoolMonitor:Lcom/liulishuo/filedownloader/IThreadPoolMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    .locals 11

    .line 987
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->threadPoolMonitor:Lcom/liulishuo/filedownloader/IThreadPoolMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->minIntervalMillis:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->callbackProgressMaxCount:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->isForceReDownload:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->isWifiRequired:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->maxRetryTimes:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 992
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->threadPoolMonitor:Lcom/liulishuo/filedownloader/IThreadPoolMonitor;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->minIntervalMillis:Ljava/lang/Integer;

    .line 993
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->callbackProgressMaxCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->isForceReDownload:Ljava/lang/Boolean;

    .line 994
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->isWifiRequired:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->maxRetryTimes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;IIZZILcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$1;)V

    .line 992
    return-object v0

    .line 990
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setCallbackProgressMaxCount(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;
    .locals 0
    .param p1, "callbackProgressMaxCount"    # Ljava/lang/Integer;

    .line 967
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->callbackProgressMaxCount:Ljava/lang/Integer;

    .line 968
    return-object p0
.end method

.method public setForceReDownload(Ljava/lang/Boolean;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;
    .locals 0
    .param p1, "forceReDownload"    # Ljava/lang/Boolean;

    .line 972
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->isForceReDownload:Ljava/lang/Boolean;

    .line 973
    return-object p0
.end method

.method public setHeader(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;
    .locals 0
    .param p1, "header"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 952
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 953
    return-object p0
.end method

.method public setMaxRetryTimes(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;
    .locals 0
    .param p1, "maxRetryTimes"    # Ljava/lang/Integer;

    .line 982
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->maxRetryTimes:Ljava/lang/Integer;

    .line 983
    return-object p0
.end method

.method public setMinIntervalMillis(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;
    .locals 0
    .param p1, "minIntervalMillis"    # Ljava/lang/Integer;

    .line 962
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->minIntervalMillis:Ljava/lang/Integer;

    .line 963
    return-object p0
.end method

.method public setModel(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;
    .locals 0
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 947
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->model:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 948
    return-object p0
.end method

.method public setThreadPoolMonitor(Lcom/liulishuo/filedownloader/IThreadPoolMonitor;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;
    .locals 0
    .param p1, "threadPoolMonitor"    # Lcom/liulishuo/filedownloader/IThreadPoolMonitor;

    .line 957
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->threadPoolMonitor:Lcom/liulishuo/filedownloader/IThreadPoolMonitor;

    .line 958
    return-object p0
.end method

.method public setWifiRequired(Ljava/lang/Boolean;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;
    .locals 0
    .param p1, "wifiRequired"    # Ljava/lang/Boolean;

    .line 977
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->isWifiRequired:Ljava/lang/Boolean;

    .line 978
    return-object p0
.end method
