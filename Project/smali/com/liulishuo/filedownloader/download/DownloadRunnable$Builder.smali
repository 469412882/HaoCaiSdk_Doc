.class public Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/DownloadRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

.field private final connectTaskBuilder:Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

.field private connectionIndex:Ljava/lang/Integer;

.field private isWifiRequired:Ljava/lang/Boolean;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->connectTaskBuilder:Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    .locals 10

    .line 201
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->isWifiRequired:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->connectionIndex:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->connectTaskBuilder:Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->build()Lcom/liulishuo/filedownloader/download/ConnectTask;

    move-result-object v0

    .line 206
    .local v0, "connectTask":Lcom/liulishuo/filedownloader/download/ConnectTask;
    new-instance v9, Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    iget v2, v0, Lcom/liulishuo/filedownloader/download/ConnectTask;->downloadId:I

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->connectionIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->isWifiRequired:Ljava/lang/Boolean;

    .line 207
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->path:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lcom/liulishuo/filedownloader/download/DownloadRunnable;-><init>(IILcom/liulishuo/filedownloader/download/ConnectTask;Lcom/liulishuo/filedownloader/download/ProcessCallback;ZLjava/lang/String;Lcom/liulishuo/filedownloader/download/DownloadRunnable$1;)V

    .line 206
    return-object v9

    .line 202
    .end local v0    # "connectTask":Lcom/liulishuo/filedownloader/download/ConnectTask;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s %s %B"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->path:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->isWifiRequired:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method buildForTest(Lcom/liulishuo/filedownloader/download/ConnectTask;)Lcom/liulishuo/filedownloader/download/DownloadRunnable;
    .locals 9
    .param p1, "connectTask"    # Lcom/liulishuo/filedownloader/download/ConnectTask;

    .line 211
    new-instance v8, Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    iget v1, p1, Lcom/liulishuo/filedownloader/download/ConnectTask;->downloadId:I

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    const-string v6, ""

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/liulishuo/filedownloader/download/DownloadRunnable;-><init>(IILcom/liulishuo/filedownloader/download/ConnectTask;Lcom/liulishuo/filedownloader/download/ProcessCallback;ZLjava/lang/String;Lcom/liulishuo/filedownloader/download/DownloadRunnable$1;)V

    return-object v8
.end method

.method public setCallback(Lcom/liulishuo/filedownloader/download/ProcessCallback;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/liulishuo/filedownloader/download/ProcessCallback;

    .line 156
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    .line 157
    return-object p0
.end method

.method public setConnectionIndex(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    .locals 0
    .param p1, "connectionIndex"    # Ljava/lang/Integer;

    .line 196
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->connectionIndex:Ljava/lang/Integer;

    .line 197
    return-object p0
.end method

.method public setConnectionModel(Lcom/liulishuo/filedownloader/download/ConnectionProfile;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    .locals 1
    .param p1, "model"    # Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    .line 181
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->connectTaskBuilder:Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->setConnectionProfile(Lcom/liulishuo/filedownloader/download/ConnectionProfile;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    .line 182
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    .locals 1
    .param p1, "etag"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->connectTaskBuilder:Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->setEtag(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    .line 172
    return-object p0
.end method

.method public setHeader(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    .locals 1
    .param p1, "header"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 176
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->connectTaskBuilder:Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->setHeader(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    .line 177
    return-object p0
.end method

.method public setId(I)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    .locals 1
    .param p1, "id"    # I

    .line 161
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->connectTaskBuilder:Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->setDownloadId(I)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    .line 162
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->path:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->connectTaskBuilder:Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->setUrl(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;

    .line 167
    return-object p0
.end method

.method public setWifiRequired(Z)Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    .locals 1
    .param p1, "wifiRequired"    # Z

    .line 191
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;->isWifiRequired:Ljava/lang/Boolean;

    .line 192
    return-object p0
.end method
