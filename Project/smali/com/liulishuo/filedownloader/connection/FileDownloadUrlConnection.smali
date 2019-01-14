.class public Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;
.super Ljava/lang/Object;
.source "FileDownloadUrlConnection.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;,
        Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Creator;
    }
.end annotation


# instance fields
.field protected mConnection:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "originUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;-><init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)V
    .locals 1
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;-><init>(Ljava/net/URL;Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "configuration"    # Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->access$000(Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p2}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->access$000(Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    .line 48
    :goto_0
    if-eqz p2, :cond_2

    .line 49
    invoke-static {p2}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->access$100(Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-static {p2}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->access$100(Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 53
    :cond_1
    invoke-static {p2}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->access$200(Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-static {p2}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->access$200(Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 57
    :cond_2
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public dispatchAddResumeOffset(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "etag"    # Ljava/lang/String;
    .param p2, "offset"    # J

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public ending()V
    .locals 0

    .line 110
    return-void
.end method

.method public execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 96
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
