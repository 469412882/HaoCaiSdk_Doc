.class public Lcom/liulishuo/filedownloader/download/ConnectTask;
.super Ljava/lang/Object;
.source "ConnectTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;,
        Lcom/liulishuo/filedownloader/download/ConnectTask$Reconnect;
    }
.end annotation


# instance fields
.field final downloadId:I

.field private etag:Ljava/lang/String;

.field final header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

.field private redirectedUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/download/ConnectionProfile;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)V
    .locals 0
    .param p1, "profile"    # Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    .param p2, "downloadId"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "etag"    # Ljava/lang/String;
    .param p5, "header"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p2, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->downloadId:I

    .line 53
    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->url:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->etag:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 56
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/download/ConnectionProfile;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/download/ConnectTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .param p6, "x5"    # Lcom/liulishuo/filedownloader/download/ConnectTask$1;

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/liulishuo/filedownloader/download/ConnectTask;-><init>(Lcom/liulishuo/filedownloader/download/ConnectionProfile;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)V

    return-void
.end method


# virtual methods
.method addRangeHeader(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V
    .locals 6
    .param p1, "connection"    # Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    .line 111
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->etag:Ljava/lang/String;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    iget-wide v1, v1, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->startOffset:J

    invoke-interface {p1, v0, v1, v2}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->dispatchAddResumeOffset(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->etag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const-string v0, "If-Match"

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->etag:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->endOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_2

    .line 120
    const-string v2, "bytes=%d-"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    iget-wide v3, v3, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->currentOffset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "range":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0    # "range":Ljava/lang/String;
    :cond_2
    const-string v2, "bytes=%d-%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    iget-wide v4, v4, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->currentOffset:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    iget-wide v4, v0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->endOffset:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .restart local v0    # "range":Ljava/lang/String;
    :goto_0
    const-string v1, "Range"

    invoke-interface {p1, v1, v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method addUserRequiredHeader(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V
    .locals 8
    .param p1, "connection"    # Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    .line 83
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    .line 86
    .local v0, "additionHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_2

    .line 87
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "%d add outside header: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->downloadId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 96
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 97
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 98
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 99
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 100
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 101
    .local v7, "value":Ljava/lang/String;
    invoke-interface {p1, v4, v7}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_1

    .line 104
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    goto :goto_0

    .line 108
    .end local v0    # "additionHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method connect()Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->createConnection(Ljava/lang/String;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    move-result-object v0

    .line 62
    .local v0, "connection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/ConnectTask;->addUserRequiredHeader(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/download/ConnectTask;->addRangeHeader(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V

    .line 69
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getRequestHeaderFields()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->requestHeader:Ljava/util/Map;

    .line 70
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "%s request header %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->downloadId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->requestHeader:Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->execute()V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->redirectedUrlList:Ljava/util/List;

    .line 76
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->requestHeader:Ljava/util/Map;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->redirectedUrlList:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/liulishuo/filedownloader/connection/RedirectHandler;->process(Ljava/util/Map;Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Ljava/util/List;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method getFinalRedirectedUrl()Ljava/lang/String;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->redirectedUrlList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->redirectedUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->redirectedUrlList:Ljava/util/List;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->redirectedUrlList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfile()Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    return-object v0
.end method

.method public getRequestHeader()Ljava/util/Map;
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

    .line 140
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->requestHeader:Ljava/util/Map;

    return-object v0
.end method

.method isRangeNotFromBeginning()Z
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->currentOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public retryOnConnectedWithNewParam(Lcom/liulishuo/filedownloader/download/ConnectionProfile;Ljava/lang/String;)V
    .locals 1
    .param p1, "profile"    # Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    .param p2, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liulishuo/filedownloader/download/ConnectTask$Reconnect;
        }
    .end annotation

    .line 148
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    .line 150
    iput-object p2, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->etag:Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/liulishuo/filedownloader/download/ConnectTask$Reconnect;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/download/ConnectTask$Reconnect;-><init>(Lcom/liulishuo/filedownloader/download/ConnectTask;)V

    throw v0
.end method
