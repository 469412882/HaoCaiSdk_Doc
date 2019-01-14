.class public Lcom/liulishuo/filedownloader/util/FileDownloadHelper;
.super Ljava/lang/Object;
.source "FileDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;,
        Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;,
        Lcom/liulishuo/filedownloader/util/FileDownloadHelper$DatabaseCustomMaker;,
        Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;,
        Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;
    }
.end annotation


# static fields
.field private static APP_CONTEXT:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 49
    sget-object v0, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->APP_CONTEXT:Landroid/content/Context;

    return-object v0
.end method

.method public static holdContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    sput-object p0, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->APP_CONTEXT:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static inspectAndInflowConflictPath(IJLjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;)Z
    .locals 3
    .param p0, "id"    # I
    .param p1, "sofar"    # J
    .param p3, "tempFilePath"    # Ljava/lang/String;
    .param p4, "targetFilePath"    # Ljava/lang/String;
    .param p5, "monitor"    # Lcom/liulishuo/filedownloader/IThreadPoolMonitor;

    .line 248
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 249
    invoke-interface {p5, p3, p0}, Lcom/liulishuo/filedownloader/IThreadPoolMonitor;->findRunningTaskIdBySameTempPath(Ljava/lang/String;I)I

    move-result v0

    .line 250
    .local v0, "anotherSameTempPathTaskId":I
    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->getImpl()Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;

    move-result-object v1

    new-instance v2, Lcom/liulishuo/filedownloader/exception/PathConflictException;

    invoke-direct {v2, v0, p3, p4}, Lcom/liulishuo/filedownloader/exception/PathConflictException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {p0, p1, p2, v2}, Lcom/liulishuo/filedownloader/message/MessageSnapshotTaker;->catchException(IJLjava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->inflow(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 255
    const/4 v1, 0x1

    return v1

    .line 259
    .end local v0    # "anotherSameTempPathTaskId":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static inspectAndInflowDownloaded(ILjava/lang/String;ZZ)Z
    .locals 3
    .param p0, "id"    # I
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "forceReDownload"    # Z
    .param p3, "flowDirectly"    # Z

    .line 196
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 197
    return v0

    .line 200
    :cond_0
    if-eqz p1, :cond_1

    .line 201
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    invoke-static {}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->getImpl()Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;

    move-result-object v0

    .line 204
    invoke-static {p0, v1, p3}, Lcom/liulishuo/filedownloader/message/MessageSnapshotTaker;->catchCanReusedOldFile(ILjava/io/File;Z)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v2

    .line 203
    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->inflow(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 205
    const/4 v0, 0x1

    return v0

    .line 209
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return v0
.end method

.method public static inspectAndInflowDownloading(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;Z)Z
    .locals 7
    .param p0, "id"    # I
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .param p2, "monitor"    # Lcom/liulishuo/filedownloader/IThreadPoolMonitor;
    .param p3, "flowDirectly"    # Z

    .line 224
    invoke-interface {p2, p1}, Lcom/liulishuo/filedownloader/IThreadPoolMonitor;->isDownloading(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->getImpl()Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v4

    move v1, p0

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/liulishuo/filedownloader/message/MessageSnapshotTaker;->catchWarn(IJJZ)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->inflow(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 228
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
