.class public Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
.super Ljava/lang/Object;
.source "FetchDataTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/FetchDataTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

.field connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

.field connectionIndex:Ljava/lang/Integer;

.field connectionProfile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

.field downloadId:Ljava/lang/Integer;

.field downloadRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;

.field isWifiRequired:Ljava/lang/Boolean;

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/liulishuo/filedownloader/download/FetchDataTask;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->isWifiRequired:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->connectionProfile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->downloadId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->connectionIndex:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/download/FetchDataTask;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->connectionProfile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->downloadRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->downloadId:Ljava/lang/Integer;

    .line 298
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->connectionIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->isWifiRequired:Ljava/lang/Boolean;

    .line 299
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    iget-object v9, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->path:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/liulishuo/filedownloader/download/FetchDataTask;-><init>(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Lcom/liulishuo/filedownloader/download/ConnectionProfile;Lcom/liulishuo/filedownloader/download/DownloadRunnable;IIZLcom/liulishuo/filedownloader/download/ProcessCallback;Ljava/lang/String;Lcom/liulishuo/filedownloader/download/FetchDataTask$1;)V

    .line 297
    return-object v0

    .line 295
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setCallback(Lcom/liulishuo/filedownloader/download/ProcessCallback;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/liulishuo/filedownloader/download/ProcessCallback;

    .line 263
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    .line 264
    return-object p0
.end method

.method public setConnection(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    .locals 0
    .param p1, "connection"    # Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    .line 253
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    .line 254
    return-object p0
.end method

.method public setConnectionIndex(I)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    .locals 1
    .param p1, "connectionIndex"    # I

    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->connectionIndex:Ljava/lang/Integer;

    .line 284
    return-object p0
.end method

.method public setConnectionProfile(Lcom/liulishuo/filedownloader/download/ConnectionProfile;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    .locals 0
    .param p1, "connectionProfile"    # Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    .line 258
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->connectionProfile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    .line 259
    return-object p0
.end method

.method public setDownloadId(I)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    .locals 1
    .param p1, "downloadId"    # I

    .line 288
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->downloadId:Ljava/lang/Integer;

    .line 289
    return-object p0
.end method

.method public setHost(Lcom/liulishuo/filedownloader/download/DownloadRunnable;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    .locals 0
    .param p1, "downloadRunnable"    # Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    .line 278
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->downloadRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    .line 279
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->path:Ljava/lang/String;

    .line 269
    return-object p0
.end method

.method public setWifiRequired(Z)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    .locals 1
    .param p1, "wifiRequired"    # Z

    .line 273
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->isWifiRequired:Ljava/lang/Boolean;

    .line 274
    return-object p0
.end method
