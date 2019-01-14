.class public Lcom/liulishuo/filedownloader/message/MessageSnapshotTaker;
.super Ljava/lang/Object;
.source "MessageSnapshotTaker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static catchCanReusedOldFile(ILjava/io/File;Z)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 5
    .param p0, "id"    # I
    .param p1, "oldFile"    # Ljava/io/File;
    .param p2, "flowDirectly"    # Z

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 39
    .local v0, "totalBytes":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    const/4 v2, 0x1

    if-lez v4, :cond_1

    .line 40
    if-eqz p2, :cond_0

    .line 41
    new-instance v3, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;-><init>(IZJ)V

    return-object v3

    .line 43
    :cond_0
    new-instance v3, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(IZJ)V

    return-object v3

    .line 46
    :cond_1
    if-eqz p2, :cond_2

    .line 47
    new-instance v3, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot;

    long-to-int v4, v0

    invoke-direct {v3, p0, v2, v4}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot;-><init>(IZI)V

    return-object v3

    .line 50
    :cond_2
    new-instance v3, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;

    long-to-int v4, v0

    invoke-direct {v3, p0, v2, v4}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;-><init>(IZI)V

    return-object v3
.end method

.method public static catchException(IJLjava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 3
    .param p0, "id"    # I
    .param p1, "sofar"    # J
    .param p3, "error"    # Ljava/lang/Throwable;

    .line 72
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 73
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(IJLjava/lang/Throwable;)V

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    long-to-int v1, p1

    invoke-direct {v0, p0, v1, p3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(IILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static catchPause(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 7
    .param p0, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 80
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isLargeFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v2

    .line 82
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileSoFarBytes()J

    move-result-wide v3

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileTotalBytes()J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;-><init>(IJJ)V

    .line 81
    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v1

    .line 85
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getSmallFileSoFarBytes()I

    move-result v2

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getSmallFileTotalBytes()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;-><init>(III)V

    .line 84
    return-object v0
.end method

.method public static catchWarn(IJJZ)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 9
    .param p0, "id"    # I
    .param p1, "sofar"    # J
    .param p3, "total"    # J
    .param p5, "flowDirectly"    # Z

    .line 56
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    .line 57
    if-eqz p5, :cond_0

    .line 58
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;

    move-object v3, v0

    move v4, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;-><init>(IJJ)V

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;

    move-object v1, v0

    move v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;-><init>(IJJ)V

    return-object v0

    .line 63
    :cond_1
    if-eqz p5, :cond_2

    .line 64
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot;

    long-to-int v1, p1

    long-to-int v2, p3

    invoke-direct {v0, p0, v1, v2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot;-><init>(III)V

    return-object v0

    .line 66
    :cond_2
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;

    long-to-int v1, p1

    long-to-int v2, p3

    invoke-direct {v0, p0, v1, v2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;-><init>(III)V

    return-object v0
.end method

.method public static take(BLcom/liulishuo/filedownloader/model/FileDownloadModel;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 1
    .param p0, "status"    # B
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 34
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshotTaker;->take(BLcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public static take(BLcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 9
    .param p0, "status"    # B
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .param p2, "processParams"    # Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;

    .line 102
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v7

    .line 103
    .local v7, "id":I
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x4

    if-ne p0, v2, :cond_0

    .line 104
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "please use #catchWarn instead %d"

    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 171
    :pswitch_0
    const-string v2, "it can\'t takes a snapshot for the task(%s) when its status is %d,"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 173
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v0

    .line 172
    invoke-static {v2, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "message":Ljava/lang/String;
    const-class v4, Lcom/liulishuo/filedownloader/message/MessageSnapshotTaker;

    const-string v5, "it can\'t takes a snapshot for the task(%s) when its status is %d,"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 176
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v3, v0

    .line 175
    invoke-static {v4, v5, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .local v0, "throwable":Ljava/lang/Throwable;
    goto/16 :goto_3

    .line 119
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v2    # "message":Ljava/lang/String;
    :pswitch_1
    new-instance v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;

    invoke-direct {v0, v7}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;-><init>(I)V

    .line 120
    .local v0, "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto/16 :goto_5

    .line 151
    .end local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isLargeFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance v6, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;

    .line 153
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->getRetryingTimes()I

    move-result v5

    move-object v0, v6

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;-><init>(IJLjava/lang/Throwable;I)V

    goto/16 :goto_2

    .line 155
    :cond_1
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;

    .line 156
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 157
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->getRetryingTimes()I

    move-result v3

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;-><init>(IILjava/lang/Throwable;I)V

    .line 159
    .restart local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto/16 :goto_5

    .line 133
    .end local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isLargeFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;

    .line 135
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v1

    invoke-direct {v0, v7, v1, v2}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;-><init>(IJ)V

    goto/16 :goto_2

    .line 137
    :cond_2
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;

    .line 138
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v7, v1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;-><init>(II)V

    .line 140
    .restart local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto/16 :goto_5

    .line 122
    .end local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isPathAsDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getFilename()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    .local v6, "filename":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isLargeFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    new-instance v8, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;

    .line 126
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->isResuming()Z

    move-result v2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getETag()Ljava/lang/String;

    move-result-object v5

    move-object v0, v8

    move v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;-><init>(IZJLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 128
    :cond_4
    new-instance v8, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;

    .line 129
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->isResuming()Z

    move-result v2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v0

    long-to-int v3, v0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getETag()Ljava/lang/String;

    move-result-object v4

    move-object v0, v8

    move v1, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;-><init>(IZILjava/lang/String;Ljava/lang/String;)V

    .line 131
    .restart local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto/16 :goto_5

    .line 110
    .end local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .end local v6    # "filename":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isLargeFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    new-instance v6, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;

    .line 112
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v4

    move-object v0, v6

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;-><init>(IJJ)V

    goto :goto_2

    .line 114
    :cond_5
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;

    .line 115
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v7, v1, v2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;-><init>(III)V

    .line 117
    .restart local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto :goto_5

    .line 161
    .end local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_6
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isLargeFile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    .line 163
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(IJLjava/lang/Throwable;)V

    goto :goto_2

    .line 165
    :cond_6
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    .line 166
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/download/DownloadStatusCallback$ProcessParams;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(IILjava/lang/Throwable;)V

    .line 168
    .restart local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto :goto_5

    .line 142
    .end local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :pswitch_7
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isLargeFile()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;

    .line 144
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v2

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(IZJ)V

    .line 144
    .restart local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :goto_2
    goto :goto_5

    .line 146
    .end local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :cond_7
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;

    .line 147
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v7, v1, v2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;-><init>(IZI)V

    .line 149
    .restart local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    goto :goto_5

    .line 182
    .end local v0    # "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .restart local v2    # "message":Ljava/lang/String;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "throwable":Ljava/lang/Throwable;
    :goto_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isLargeFile()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 186
    new-instance v1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    .line 187
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v3

    invoke-direct {v1, v7, v3, v4, v0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(IJLjava/lang/Throwable;)V

    .line 190
    .end local v2    # "message":Ljava/lang/String;
    .local v0, "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :goto_4
    move-object v0, v1

    goto :goto_5

    .line 189
    .local v0, "throwable":Ljava/lang/Throwable;
    .restart local v2    # "message":Ljava/lang/String;
    :cond_9
    new-instance v1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    .line 190
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v1, v7, v3, v0}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(IILjava/lang/Throwable;)V

    .line 190
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v2    # "message":Ljava/lang/String;
    goto :goto_4

    .line 195
    .local v0, "snapShot":Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    :goto_5
    return-object v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static takeBlockCompleted(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 5
    .param p0, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 90
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "take block completed snapshot, must has already be completed. %d %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->getStatus()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    .line 92
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;-><init>(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-object v0
.end method
