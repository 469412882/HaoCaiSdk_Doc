.class public Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;
.super Ljava/lang/Object;
.source "DownloadMgrInitialParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;
    }
.end annotation


# instance fields
.field private final mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;)V
    .locals 0
    .param p1, "maker"    # Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    .line 43
    return-void
.end method

.method private createDefaultConnectionCountAdapter()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;
    .locals 1

    .line 174
    new-instance v0, Lcom/liulishuo/filedownloader/connection/DefaultConnectionCountAdapter;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/connection/DefaultConnectionCountAdapter;-><init>()V

    return-object v0
.end method

.method private createDefaultConnectionCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;
    .locals 1

    .line 170
    new-instance v0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Creator;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Creator;-><init>()V

    return-object v0
.end method

.method private createDefaultDatabase()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;
    .locals 1

    .line 162
    new-instance v0, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/DefaultDatabaseImpl;-><init>()V

    return-object v0
.end method

.method private createDefaultIdGenerator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;
    .locals 1

    .line 154
    new-instance v0, Lcom/liulishuo/filedownloader/services/DefaultIdGenerator;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/DefaultIdGenerator;-><init>()V

    return-object v0
.end method

.method private createDefaultOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;
    .locals 1

    .line 166
    new-instance v0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile$Creator;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile$Creator;-><init>()V

    return-object v0
.end method

.method private getDefaultMaxNetworkThreadCount()I
    .locals 1

    .line 158
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v0

    iget v0, v0, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MAX_NETWORK_THREAD_COUNT:I

    return v0
.end method


# virtual methods
.method public createConnectionCountAdapter()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDefaultConnectionCountAdapter()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mConnectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    .line 124
    .local v0, "adapter":Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;
    if-eqz v0, :cond_2

    .line 125
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_1

    .line 126
    const-string v1, "initial FileDownloader manager with the customize connection count adapter: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_1
    return-object v0

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDefaultConnectionCountAdapter()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    move-result-object v1

    return-object v1
.end method

.method public createConnectionCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDefaultConnectionCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mConnectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    .line 107
    .local v0, "connectionCreator":Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;
    if-eqz v0, :cond_2

    .line 108
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "initial FileDownloader manager with the customize connection creator: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_1
    return-object v0

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDefaultConnectionCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    move-result-object v1

    return-object v1
.end method

.method public createDatabase()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mDatabaseCustomMaker:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$DatabaseCustomMaker;

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mDatabaseCustomMaker:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$DatabaseCustomMaker;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$DatabaseCustomMaker;->customMake()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    move-result-object v0

    .line 71
    .local v0, "customDatabase":Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;
    if-eqz v0, :cond_2

    .line 72
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "initial FileDownloader manager with the customize database: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_1
    return-object v0

    .line 78
    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDefaultDatabase()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    move-result-object v1

    return-object v1

    .line 67
    .end local v0    # "customDatabase":Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDefaultDatabase()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    move-result-object v0

    return-object v0
.end method

.method public createIdGenerator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDefaultIdGenerator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mIdGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    .line 141
    .local v0, "idGenerator":Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;
    if-eqz v0, :cond_2

    .line 142
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_1

    .line 143
    const-string v1, "initial FileDownloader manager with the customize id generator: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_1
    return-object v0

    .line 149
    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDefaultIdGenerator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    move-result-object v1

    return-object v1
.end method

.method public createOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDefaultOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mOutputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    .line 89
    .local v0, "outputStreamCreator":Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;
    if-eqz v0, :cond_2

    .line 90
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "initial FileDownloader manager with the customize output stream: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_1
    return-object v0

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDefaultOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    move-result-object v1

    return-object v1
.end method

.method public getMaxNetworkThreadCount()I
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->getDefaultMaxNetworkThreadCount()I

    move-result v0

    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->mMaker:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mMaxNetworkThreadCount:Ljava/lang/Integer;

    .line 52
    .local v0, "customizeMaxNetworkThreadCount":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 53
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_1

    .line 54
    const-string v1, "initial FileDownloader manager with the customize maxNetworkThreadCount: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getValidNetworkThreadCount(I)I

    move-result v1

    return v1

    .line 60
    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->getDefaultMaxNetworkThreadCount()I

    move-result v1

    return v1
.end method
