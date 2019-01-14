.class public Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
.super Ljava/lang/Object;
.source "FileDownloadQueueSet.java"


# instance fields
.field private autoRetryTimes:Ljava/lang/Integer;

.field private callbackProgressMinIntervalMillis:Ljava/lang/Integer;

.field private callbackProgressTimes:Ljava/lang/Integer;

.field private directory:Ljava/lang/String;

.field private isForceReDownload:Ljava/lang/Boolean;

.field private isSerial:Z

.field private isWifiRequired:Ljava/lang/Boolean;

.field private syncCallback:Ljava/lang/Boolean;

.field private tag:Ljava/lang/Object;

.field private target:Lcom/liulishuo/filedownloader/FileDownloadListener;

.field private taskFinishListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;",
            ">;"
        }
    .end annotation
.end field

.field private tasks:[Lcom/liulishuo/filedownloader/BaseDownloadTask;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/FileDownloadListener;)V
    .locals 2
    .param p1, "target"    # Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "create FileDownloadQueueSet must with valid target!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->target:Lcom/liulishuo/filedownloader/FileDownloadListener;

    .line 54
    return-void
.end method


# virtual methods
.method public addTaskFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1
    .param p1, "finishListener"    # Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;

    .line 246
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->taskFinishListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->taskFinishListenerList:Ljava/util/List;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->taskFinishListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-object p0
.end method

.method public disableCallbackProgressTimes()Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->setCallbackProgressTimes(I)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    move-result-object v0

    return-object v0
.end method

.method public downloadSequentially(Ljava/util/List;)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask;",
            ">;)",
            "Lcom/liulishuo/filedownloader/FileDownloadQueueSet;"
        }
    .end annotation

    .line 93
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->isSerial:Z

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->tasks:[Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 95
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->tasks:[Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 97
    return-object p0
.end method

.method public varargs downloadSequentially([Lcom/liulishuo/filedownloader/BaseDownloadTask;)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1
    .param p1, "tasks"    # [Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->isSerial:Z

    .line 84
    iput-object p1, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->tasks:[Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 86
    return-object p0
.end method

.method public downloadTogether(Ljava/util/List;)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask;",
            ">;)",
            "Lcom/liulishuo/filedownloader/FileDownloadQueueSet;"
        }
    .end annotation

    .line 71
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/liulishuo/filedownloader/BaseDownloadTask;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->isSerial:Z

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->tasks:[Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 73
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->tasks:[Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    return-object p0
.end method

.method public varargs downloadTogether([Lcom/liulishuo/filedownloader/BaseDownloadTask;)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1
    .param p1, "tasks"    # [Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->isSerial:Z

    .line 61
    iput-object p1, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->tasks:[Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 63
    return-object p0
.end method

.method public ignoreEachTaskInternalProgress()Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1

    .line 222
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->setCallbackProgressTimes(I)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    .line 223
    return-object p0
.end method

.method public reuseAndStart()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->tasks:[Lcom/liulishuo/filedownloader/BaseDownloadTask;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 106
    .local v3, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->reuse()Z

    .line 105
    .end local v3    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->start()V

    .line 109
    return-void
.end method

.method public setAutoRetryTimes(I)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1
    .param p1, "autoRetryTimes"    # I

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->autoRetryTimes:Ljava/lang/Integer;

    .line 183
    return-object p0
.end method

.method public setCallbackProgressMinInterval(I)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1
    .param p1, "minIntervalMillis"    # I

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->callbackProgressMinIntervalMillis:Ljava/lang/Integer;

    .line 215
    return-object p0
.end method

.method public setCallbackProgressTimes(I)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1
    .param p1, "callbackProgressTimes"    # I

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->callbackProgressTimes:Ljava/lang/Integer;

    .line 207
    return-object p0
.end method

.method public setDirectory(Ljava/lang/String;)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 0
    .param p1, "directory"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->directory:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public setForceReDownload(Z)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1
    .param p1, "isForceReDownload"    # Z

    .line 198
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->isForceReDownload:Ljava/lang/Boolean;

    .line 199
    return-object p0
.end method

.method public setSyncCallback(Z)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1
    .param p1, "syncCallback"    # Z

    .line 190
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->syncCallback:Ljava/lang/Boolean;

    .line 191
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 237
    iput-object p1, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->tag:Ljava/lang/Object;

    .line 238
    return-object p0
.end method

.method public setWifiRequired(Z)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;
    .locals 1
    .param p1, "isWifiRequired"    # Z

    .line 258
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->isWifiRequired:Ljava/lang/Boolean;

    .line 259
    return-object p0
.end method

.method public start()V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->tasks:[Lcom/liulishuo/filedownloader/BaseDownloadTask;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    .line 121
    .local v3, "task":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->target:Lcom/liulishuo/filedownloader/FileDownloadListener;

    invoke-interface {v3, v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 123
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->autoRetryTimes:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->autoRetryTimes:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setAutoRetryTimes(I)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 127
    :cond_0
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->syncCallback:Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->syncCallback:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setSyncCallback(Z)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 131
    :cond_1
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->isForceReDownload:Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 132
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->isForceReDownload:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setForceReDownload(Z)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 135
    :cond_2
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->callbackProgressTimes:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 136
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->callbackProgressTimes:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setCallbackProgressTimes(I)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 139
    :cond_3
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->callbackProgressMinIntervalMillis:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 140
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->callbackProgressMinIntervalMillis:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setCallbackProgressMinInterval(I)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 143
    :cond_4
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->tag:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 144
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->tag:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setTag(Ljava/lang/Object;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 147
    :cond_5
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->taskFinishListenerList:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 148
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->taskFinishListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;

    .line 149
    .local v5, "finishListener":Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;
    invoke-interface {v3, v5}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->addFinishListener(Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 150
    .end local v5    # "finishListener":Lcom/liulishuo/filedownloader/BaseDownloadTask$FinishListener;
    goto :goto_1

    .line 153
    :cond_6
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->directory:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 154
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->directory:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setPath(Ljava/lang/String;Z)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 157
    :cond_7
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->isWifiRequired:Ljava/lang/Boolean;

    if-eqz v4, :cond_8

    .line 158
    iget-object v4, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->isWifiRequired:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setWifiRequired(Z)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 161
    :cond_8
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->asInQueueTask()Lcom/liulishuo/filedownloader/BaseDownloadTask$InQueueTask;

    move-result-object v4

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/BaseDownloadTask$InQueueTask;->enqueue()I

    .line 120
    .end local v3    # "task":Lcom/liulishuo/filedownloader/BaseDownloadTask;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 164
    :cond_9
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->target:Lcom/liulishuo/filedownloader/FileDownloadListener;

    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->isSerial:Z

    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/filedownloader/FileDownloader;->start(Lcom/liulishuo/filedownloader/FileDownloadListener;Z)Z

    .line 165
    return-void
.end method
