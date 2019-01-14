.class public Lcom/liulishuo/filedownloader/download/CustomComponentHolder;
.super Ljava/lang/Object;
.source "CustomComponentHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/CustomComponentHolder$LazyLoader;
    }
.end annotation


# instance fields
.field private connectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

.field private connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

.field private database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

.field private idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

.field private initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

.field private outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnectionCountAdapter()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    return-object v0

    .line 111
    :cond_0
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    if-nez v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createConnectionCountAdapter()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    .line 114
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getConnectionCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    return-object v0

    .line 122
    :cond_0
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    if-nez v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createConnectionCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    .line 125
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    return-object v0

    .line 144
    :cond_0
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    if-nez v0, :cond_1

    new-instance v0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    .line 146
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;
    .locals 1

    .line 50
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder$LazyLoader;->access$000()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    return-object v0
.end method

.method private getOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    return-object v0

    .line 133
    :cond_0
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    if-nez v0, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    .line 136
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static maintainDatabase(Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;)V
    .locals 32
    .param p0, "maintainer"    # Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;

    .line 152
    move-object/from16 v1, p0

    invoke-interface/range {p0 .. p0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 153
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/liulishuo/filedownloader/model/FileDownloadModel;>;"
    const-wide/16 v3, 0x0

    .line 154
    .local v3, "refreshDataCount":J
    const-wide/16 v5, 0x0

    .line 155
    .local v5, "removedDataCount":J
    const-wide/16 v7, 0x0

    .line 156
    .local v7, "resetIdCount":J
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getIdGeneratorInstance()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    move-result-object v9

    .line 158
    .local v9, "idGenerator":Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 160
    .local v10, "startTimestamp":J
    :goto_0
    const/4 v14, 0x3

    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v16, :cond_b

    .line 161
    const/16 v16, 0x0

    .line 162
    .local v16, "isInvalid":Z
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-object/from16 v18, v17

    .line 164
    .local v18, "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    move-object/from16 v13, v18

    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 164
    .end local v18    # "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .local v13, "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    const/4 v15, -0x2

    const-wide/16 v17, 0x0

    if-eq v12, v14, :cond_0

    .line 165
    :try_start_2
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v12

    const/4 v14, 0x2

    if-eq v12, v14, :cond_0

    .line 166
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_0

    .line 167
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_1

    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v12, v22, v17

    if-lez v12, :cond_1

    goto :goto_1

    .line 247
    .end local v13    # "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .end local v16    # "isInvalid":Z
    :catchall_0
    move-exception v0

    move-wide/from16 v25, v10

    move-wide v11, v3

    move-object v3, v0

    goto/16 :goto_6

    .line 170
    .restart local v13    # "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .restart local v16    # "isInvalid":Z
    :cond_0
    :goto_1
    :try_start_3
    invoke-virtual {v13, v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    .line 172
    :cond_1
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, "targetFilePath":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 175
    const/16 v16, 0x1

    .line 176
    nop

    .line 225
    move-wide/from16 v27, v3

    move-wide/from16 v25, v10

    goto/16 :goto_3

    .line 179
    :cond_2
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v14, "targetFile":Ljava/io/File;
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v15

    move-object/from16 v24, v12

    const/4 v12, -0x2

    if-ne v15, v12, :cond_4

    .line 182
    .end local v12    # "targetFilePath":Ljava/lang/String;
    .local v24, "targetFilePath":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v12

    .line 183
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getPath()Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-wide/from16 v25, v10

    const/4 v10, 0x0

    .line 182
    .end local v10    # "startTimestamp":J
    .local v25, "startTimestamp":J
    :try_start_4
    invoke-static {v12, v13, v15, v10}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isBreakpointAvailable(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 186
    new-instance v10, Ljava/io/File;

    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v10, "tempFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 189
    invoke-virtual {v14, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    .line 190
    .local v11, "successRename":Z
    sget-boolean v12, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v12, :cond_3

    .line 191
    const-class v12, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    const-string v15, "resume from the old no-temp-file architecture [%B], [%s]->[%s]"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide/from16 v27, v3

    const/4 v3, 0x3

    :try_start_5
    new-array v4, v3, [Ljava/lang/Object;

    .line 193
    .end local v3    # "refreshDataCount":J
    .local v27, "refreshDataCount":J
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v19, 0x0

    aput-object v3, v4, v19

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x1

    aput-object v3, v4, v20

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v21, 0x2

    aput-object v3, v4, v21

    .line 191
    invoke-static {v12, v15, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .end local v10    # "tempFile":Ljava/io/File;
    .end local v11    # "successRename":Z
    goto :goto_2

    .line 204
    .end local v27    # "refreshDataCount":J
    .restart local v3    # "refreshDataCount":J
    :cond_3
    move-wide/from16 v27, v3

    .line 204
    .end local v3    # "refreshDataCount":J
    .restart local v27    # "refreshDataCount":J
    goto :goto_2

    .line 247
    .end local v13    # "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .end local v14    # "targetFile":Ljava/io/File;
    .end local v16    # "isInvalid":Z
    .end local v24    # "targetFilePath":Ljava/lang/String;
    .end local v27    # "refreshDataCount":J
    .restart local v3    # "refreshDataCount":J
    :catchall_1
    move-exception v0

    move-wide v11, v3

    move-object v3, v0

    .line 247
    .end local v3    # "refreshDataCount":J
    .restart local v27    # "refreshDataCount":J
    goto/16 :goto_6

    .line 204
    .end local v25    # "startTimestamp":J
    .end local v27    # "refreshDataCount":J
    .restart local v3    # "refreshDataCount":J
    .local v10, "startTimestamp":J
    .restart local v13    # "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .restart local v14    # "targetFile":Ljava/io/File;
    .restart local v16    # "isInvalid":Z
    .restart local v24    # "targetFilePath":Ljava/lang/String;
    :cond_4
    move-wide/from16 v27, v3

    move-wide/from16 v25, v10

    .line 204
    .end local v3    # "refreshDataCount":J
    .end local v10    # "startTimestamp":J
    .restart local v25    # "startTimestamp":J
    .restart local v27    # "refreshDataCount":J
    :goto_2
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v3

    cmp-long v10, v3, v17

    if-gtz v10, :cond_5

    .line 206
    const/16 v16, 0x1

    .line 207
    goto :goto_3

    .line 210
    :cond_5
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v3

    invoke-static {v3, v13}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isBreakpointAvailable(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 212
    const/16 v16, 0x1

    .line 213
    goto :goto_3

    .line 216
    :cond_6
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 218
    const/16 v16, 0x1

    .line 219
    nop

    .line 225
    .end local v14    # "targetFile":Ljava/io/File;
    .end local v24    # "targetFilePath":Ljava/lang/String;
    :cond_7
    :goto_3
    const-wide/16 v3, 0x1

    if-eqz v16, :cond_8

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 227
    invoke-interface {v1, v13}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;->onRemovedInvalidData(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 228
    const/4 v10, 0x0

    add-long v10, v5, v3

    .line 244
    .end local v5    # "removedDataCount":J
    .local v10, "removedDataCount":J
    move-wide v5, v10

    move-wide/from16 v3, v27

    goto :goto_4

    .line 247
    .end local v10    # "removedDataCount":J
    .end local v13    # "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .end local v16    # "isInvalid":Z
    .restart local v5    # "removedDataCount":J
    :catchall_2
    move-exception v0

    move-object v3, v0

    move-wide/from16 v11, v27

    goto/16 :goto_6

    .line 230
    .restart local v13    # "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .restart local v16    # "isInvalid":Z
    :cond_8
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v10

    .line 231
    .local v10, "oldId":I
    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isPathAsDirectory()Z

    move-result v14

    invoke-interface {v9, v10, v11, v12, v14}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;->transOldId(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v11

    .line 232
    .local v11, "newId":I
    if-eq v11, v10, :cond_a

    .line 233
    sget-boolean v12, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v12, :cond_9

    .line 234
    const-class v12, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    const-string v14, "the id is changed on restoring from db: old[%d] -> new[%d]"

    const/4 v15, 0x2

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x0

    aput-object v4, v3, v15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x1

    aput-object v4, v3, v15

    invoke-static {v12, v14, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_9
    invoke-virtual {v13, v11}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setId(I)V

    .line 237
    invoke-interface {v1, v10, v13}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;->changeFileDownloadModelId(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 238
    const/4 v3, 0x0

    const-wide/16 v3, 0x1

    add-long v14, v7, v3

    .line 241
    .end local v7    # "resetIdCount":J
    .local v14, "resetIdCount":J
    move-wide v7, v14

    .line 241
    .end local v14    # "resetIdCount":J
    .restart local v7    # "resetIdCount":J
    :cond_a
    invoke-interface {v1, v13}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;->onRefreshedValidData(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 242
    const/4 v3, 0x0

    const-wide/16 v3, 0x1

    add-long v10, v27, v3

    .line 244
    .end local v11    # "newId":I
    .end local v13    # "model":Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .end local v16    # "isInvalid":Z
    .end local v27    # "refreshDataCount":J
    .local v10, "refreshDataCount":J
    move-wide v3, v10

    .line 158
    .end local v10    # "refreshDataCount":J
    .restart local v3    # "refreshDataCount":J
    :goto_4
    move-wide/from16 v10, v25

    goto/16 :goto_0

    .line 247
    .end local v25    # "startTimestamp":J
    .local v10, "startTimestamp":J
    :catchall_3
    move-exception v0

    move-wide/from16 v25, v10

    move-wide v11, v3

    move-object v3, v0

    .line 247
    .end local v3    # "refreshDataCount":J
    .end local v10    # "startTimestamp":J
    .restart local v25    # "startTimestamp":J
    .restart local v27    # "refreshDataCount":J
    goto :goto_6

    .line 247
    .end local v25    # "startTimestamp":J
    .end local v27    # "refreshDataCount":J
    .restart local v3    # "refreshDataCount":J
    .restart local v10    # "startTimestamp":J
    :cond_b
    move-wide/from16 v27, v3

    move-wide/from16 v25, v10

    .line 247
    .end local v3    # "refreshDataCount":J
    .end local v10    # "startTimestamp":J
    .restart local v25    # "startTimestamp":J
    .restart local v27    # "refreshDataCount":J
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->markConverted(Landroid/content/Context;)V

    .line 248
    invoke-interface/range {p0 .. p0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;->onFinishMaintain()V

    .line 250
    sget-boolean v3, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v3, :cond_c

    .line 251
    const-class v3, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    const-string v4, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 253
    move-wide/from16 v11, v27

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 253
    .end local v27    # "refreshDataCount":J
    .local v11, "refreshDataCount":J
    const/4 v14, 0x0

    aput-object v13, v10, v14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v10, v14

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v10, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-wide/from16 v29, v7

    sub-long v7, v13, v25

    .line 253
    .end local v7    # "resetIdCount":J
    .local v29, "resetIdCount":J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v10, v8

    .line 251
    invoke-static {v3, v4, v10}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 256
    .end local v11    # "refreshDataCount":J
    .end local v29    # "resetIdCount":J
    .restart local v7    # "resetIdCount":J
    .restart local v27    # "refreshDataCount":J
    :cond_c
    move-wide/from16 v29, v7

    move-wide/from16 v11, v27

    .line 256
    .end local v7    # "resetIdCount":J
    .end local v27    # "refreshDataCount":J
    .restart local v11    # "refreshDataCount":J
    .restart local v29    # "resetIdCount":J
    :goto_5
    return-void

    .line 247
    .end local v11    # "refreshDataCount":J
    .end local v25    # "startTimestamp":J
    .end local v29    # "resetIdCount":J
    .restart local v3    # "refreshDataCount":J
    .restart local v7    # "resetIdCount":J
    .restart local v10    # "startTimestamp":J
    :catchall_4
    move-exception v0

    move-wide/from16 v29, v7

    move-wide/from16 v25, v10

    move-wide v11, v3

    move-object v3, v0

    .line 247
    .end local v3    # "refreshDataCount":J
    .end local v10    # "startTimestamp":J
    .restart local v11    # "refreshDataCount":J
    .restart local v25    # "startTimestamp":J
    :goto_6
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->markConverted(Landroid/content/Context;)V

    .line 248
    invoke-interface/range {p0 .. p0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;->onFinishMaintain()V

    .line 250
    sget-boolean v4, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v4, :cond_d

    .line 251
    const-class v4, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    const-string v10, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    .line 253
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v31, v2

    sub-long v1, v14, v25

    .line 253
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/liulishuo/filedownloader/model/FileDownloadModel;>;"
    .local v31, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/liulishuo/filedownloader/model/FileDownloadModel;>;"
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v13, v2

    .line 251
    invoke-static {v4, v10, v13}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 251
    .end local v31    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/liulishuo/filedownloader/model/FileDownloadModel;>;"
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/liulishuo/filedownloader/model/FileDownloadModel;>;"
    :cond_d
    move-object/from16 v31, v2

    .line 251
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/liulishuo/filedownloader/model/FileDownloadModel;>;"
    .restart local v31    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/liulishuo/filedownloader/model/FileDownloadModel;>;"
    :goto_7
    throw v3
.end method


# virtual methods
.method public createConnection(Ljava/lang/String;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getConnectionCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;->create(Ljava/lang/String;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    move-result-object v0

    return-object v0
.end method

.method public createOutputStream(Ljava/io/File;)Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;->create(Ljava/io/File;)Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public determineConnectionCount(ILjava/lang/String;Ljava/lang/String;J)I
    .locals 6
    .param p1, "downloadId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "totalLength"    # J

    .line 105
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getConnectionCountAdapter()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;->determineConnectionCount(ILjava/lang/String;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public getDatabaseInstance()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    return-object v0

    .line 86
    :cond_0
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    if-nez v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDatabase()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    .line 89
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;->maintainer()Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->maintainDatabase(Lcom/liulishuo/filedownloader/services/FileDownloadDatabase$Maintainer;)V

    .line 91
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIdGeneratorInstance()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    return-object v0

    .line 74
    :cond_0
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    if-nez v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createIdGenerator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    .line 78
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMaxNetworkThreadCount()I
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->getMaxNetworkThreadCount()I

    move-result v0

    return v0
.end method

.method public isSupportSeek()Z
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;->supportSeek()Z

    move-result v0

    return v0
.end method

.method public setInitCustomMaker(Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;)V
    .locals 1
    .param p1, "initCustomMaker"    # Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    new-instance v0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    invoke-direct {v0, p1}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;-><init>(Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    .line 57
    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    .line 58
    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/services/FileDownloadDatabase;

    .line 59
    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
