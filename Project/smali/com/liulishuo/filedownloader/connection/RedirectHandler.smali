.class public Lcom/liulishuo/filedownloader/connection/RedirectHandler;
.super Ljava/lang/Object;
.source "RedirectHandler.java"


# static fields
.field private static final HTTP_PERMANENT_REDIRECT:I = 0x134

.field private static final HTTP_TEMPORARY_REDIRECT:I = 0x133

.field private static final MAX_REDIRECT_TIMES:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildRedirectConnection(Ljava/util/Map;Ljava/lang/String;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .locals 8
    .param p1, "newUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    .local p0, "requestHeaderFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->createConnection(Ljava/lang/String;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    move-result-object v0

    .line 112
    .local v0, "redirectConnection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 113
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 114
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 116
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 117
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 118
    .local v7, "value":Ljava/lang/String;
    invoke-interface {v0, v4, v7}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_1

    .line 121
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    goto :goto_0

    .line 123
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method private static isRedirect(I)Z
    .locals 1
    .param p0, "code"    # I

    .line 96
    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x133

    if-eq p0, v0, :cond_1

    const/16 v0, 0x134

    if-ne p0, v0, :cond_0

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

.method public static process(Ljava/util/Map;Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Ljava/util/List;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .locals 12
    .param p1, "connection"    # Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 54
    .local p0, "requestHeaderFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, "redirectedUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseCode()I

    move-result v0

    .line 55
    .local v0, "code":I
    const-string v1, "Location"

    invoke-interface {p1, v1}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "location":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "redirectLocationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 59
    .local v3, "redirectTimes":I
    move v4, v3

    move-object v3, v1

    move v1, v0

    move-object v0, p1

    .line 61
    .local v0, "redirectConnection":Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .local v1, "code":I
    .local v3, "location":Ljava/lang/String;
    .local v4, "redirectTimes":I
    :cond_0
    invoke-static {v1}, Lcom/liulishuo/filedownloader/connection/RedirectHandler;->isRedirect(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_1

    .line 63
    new-instance v8, Ljava/lang/IllegalAccessException;

    const-string v9, "receive %d (redirect) but the location is null with response [%s]"

    new-array v5, v5, [Ljava/lang/Object;

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseHeaderFields()Ljava/util/Map;

    move-result-object v6

    aput-object v6, v5, v7

    .line 64
    invoke-static {v9, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 68
    :cond_1
    sget-boolean v8, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v8, :cond_2

    .line 69
    const-class v8, Lcom/liulishuo/filedownloader/connection/RedirectHandler;

    const-string v9, "redirect to %s with %d, %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v6

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    aput-object v2, v10, v5

    .line 69
    invoke-static {v8, v9, v10}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_2
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    .line 74
    nop

    .line 75
    invoke-static {p0, v3}, Lcom/liulishuo/filedownloader/connection/RedirectHandler;->buildRedirectConnection(Ljava/util/Map;Ljava/lang/String;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    move-result-object v0

    .line 76
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->execute()V

    .line 79
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseCode()I

    move-result v1

    .line 80
    const-string v5, "Location"

    invoke-interface {v0, v5}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-lt v4, v5, :cond_0

    .line 83
    new-instance v5, Ljava/lang/IllegalAccessException;

    const-string v8, "redirect too many times! %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v6

    .line 84
    invoke-static {v8, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_3
    if-eqz p2, :cond_4

    .line 89
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    :cond_4
    return-object v0
.end method
