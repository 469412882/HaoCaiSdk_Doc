.class public Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;
.super Ljava/lang/Object;
.source "DownloadMgrInitialParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitCustomMaker"
.end annotation


# instance fields
.field mConnectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

.field mConnectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

.field mDatabaseCustomMaker:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$DatabaseCustomMaker;

.field mIdGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

.field mMaxNetworkThreadCount:Ljava/lang/Integer;

.field mOutputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0

    .line 291
    return-void
.end method

.method public connectionCountAdapter(Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;
    .locals 0
    .param p1, "adapter"    # Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    .line 203
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mConnectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    .line 204
    return-object p0
.end method

.method public connectionCreator(Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;
    .locals 0
    .param p1, "creator"    # Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    .line 284
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mConnectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    .line 285
    return-object p0
.end method

.method public database(Lcom/liulishuo/filedownloader/util/FileDownloadHelper$DatabaseCustomMaker;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;
    .locals 0
    .param p1, "maker"    # Lcom/liulishuo/filedownloader/util/FileDownloadHelper$DatabaseCustomMaker;

    .line 224
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mDatabaseCustomMaker:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$DatabaseCustomMaker;

    .line 225
    return-object p0
.end method

.method public idGenerator(Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;
    .locals 0
    .param p1, "idGenerator"    # Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    .line 191
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mIdGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    .line 192
    return-object p0
.end method

.method public maxNetworkThreadCount(I)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;
    .locals 1
    .param p1, "maxNetworkThreadCount"    # I

    .line 243
    if-lez p1, :cond_0

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mMaxNetworkThreadCount:Ljava/lang/Integer;

    .line 246
    :cond_0
    return-object p0
.end method

.method public outputStreamCreator(Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;
    .locals 2
    .param p1, "creator"    # Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    .line 259
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mOutputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    .line 260
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mOutputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mOutputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;->supportSeek()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->FILE_NON_PRE_ALLOCATION:Z

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Since the provided FileDownloadOutputStream does not support the seek function, if FileDownloader pre-allocates file size at the beginning of the download, it will can not be resumed from the breakpoint. If you need to ensure that the resumption is available, please add and set the value of \'file.non-pre-allocation\' field to \'true\' in the \'filedownloader.properties\' file which is in your application assets folder manually for resolving this problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 295
    const-string v0, "component: database[%s], maxNetworkCount[%s], outputStream[%s], connection[%s], connectionCountAdapter[%s]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mDatabaseCustomMaker:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$DatabaseCustomMaker;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mMaxNetworkThreadCount:Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mOutputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mConnectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->mConnectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
