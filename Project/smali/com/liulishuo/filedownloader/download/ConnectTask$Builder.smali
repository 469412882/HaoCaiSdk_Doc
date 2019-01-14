.class Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;
.super Ljava/lang/Object;
.source "ConnectTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/ConnectTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private connectionProfile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

.field private downloadId:Ljava/lang/Integer;

.field private etag:Ljava/lang/String;

.field private header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/liulishuo/filedownloader/download/ConnectTask;
    .locals 8

    .line 193
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->downloadId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->connectionProfile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/download/ConnectTask;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->connectionProfile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->downloadId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->etag:Ljava/lang/String;

    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/liulishuo/filedownloader/download/ConnectTask;-><init>(Lcom/liulishuo/filedownloader/download/ConnectionProfile;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/download/ConnectTask$1;)V

    return-object v0

    .line 194
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setConnectionProfile(Lcom/liulishuo/filedownloader/download/ConnectionProfile;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;
    .locals 0
    .param p1, "model"    # Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    .line 188
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->connectionProfile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    .line 189
    return-object p0
.end method

.method public setDownloadId(I)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;
    .locals 1
    .param p1, "downloadId"    # I

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->downloadId:Ljava/lang/Integer;

    .line 169
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->etag:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public setHeader(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;
    .locals 0
    .param p1, "header"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 183
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 184
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;->url:Ljava/lang/String;

    .line 174
    return-object p0
.end method
