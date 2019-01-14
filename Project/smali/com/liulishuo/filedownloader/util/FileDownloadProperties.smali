.class public Lcom/liulishuo/filedownloader/util/FileDownloadProperties;
.super Ljava/lang/Object;
.source "FileDownloadProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/util/FileDownloadProperties$HolderClass;
    }
.end annotation


# static fields
.field private static final FALSE_STRING:Ljava/lang/String; = "false"

.field private static final KEY_BROADCAST_COMPLETED:Ljava/lang/String; = "broadcast.completed"

.field private static final KEY_DOWNLOAD_MAX_NETWORK_THREAD_COUNT:Ljava/lang/String; = "download.max-network-thread-count"

.field private static final KEY_DOWNLOAD_MIN_PROGRESS_STEP:Ljava/lang/String; = "download.min-progress-step"

.field private static final KEY_DOWNLOAD_MIN_PROGRESS_TIME:Ljava/lang/String; = "download.min-progress-time"

.field private static final KEY_FILE_NON_PRE_ALLOCATION:Ljava/lang/String; = "file.non-pre-allocation"

.field private static final KEY_HTTP_LENIENT:Ljava/lang/String; = "http.lenient"

.field private static final KEY_PROCESS_NON_SEPARATE:Ljava/lang/String; = "process.non-separate"

.field private static final TRUE_STRING:Ljava/lang/String; = "true"


# instance fields
.field public final BROADCAST_COMPLETED:Z

.field public final DOWNLOAD_MAX_NETWORK_THREAD_COUNT:I

.field public final DOWNLOAD_MIN_PROGRESS_STEP:I

.field public final DOWNLOAD_MIN_PROGRESS_TIME:J

.field public final FILE_NON_PRE_ALLOCATION:Z

.field public final HTTP_LENIENT:Z

.field public final PROCESS_NON_SEPARATE:Z


# direct methods
.method private constructor <init>()V
    .locals 24

    .line 146
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 148
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Please invoke the \'FileDownloader#setup\' before using FileDownloader. If you want to register some components on FileDownloader please invoke the \'FileDownloader#setupOnApplicationOnCreate\' on the \'Application#onCreate\' first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 155
    .local v2, "start":J
    const/4 v4, 0x0

    .line 156
    .local v4, "httpLenient":Ljava/lang/String;
    const/4 v5, 0x0

    .line 157
    .local v5, "processNonSeparate":Ljava/lang/String;
    const/4 v6, 0x0

    .line 158
    .local v6, "downloadMinProgressStep":Ljava/lang/String;
    const/4 v7, 0x0

    .line 159
    .local v7, "downloadMinProgressTime":Ljava/lang/String;
    const/4 v8, 0x0

    .line 160
    .local v8, "downloadMaxNetworkThreadCount":Ljava/lang/String;
    const/4 v9, 0x0

    .line 161
    .local v9, "fileNonPreAllocation":Ljava/lang/String;
    const/4 v10, 0x0

    .line 163
    .local v10, "broadcastCompleted":Ljava/lang/String;
    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    .line 164
    .local v11, "p":Ljava/util/Properties;
    const/4 v12, 0x0

    .line 167
    .local v12, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    const-string v15, "filedownloader.properties"

    .line 168
    invoke-virtual {v14, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    move-object v12, v14

    .line 169
    if-eqz v12, :cond_1

    .line 170
    invoke-virtual {v11, v12}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 171
    const-string v14, "http.lenient"

    invoke-virtual {v11, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    .line 172
    const-string v14, "process.non-separate"

    invoke-virtual {v11, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 173
    const-string v14, "download.min-progress-step"

    invoke-virtual {v11, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    .line 174
    const-string v14, "download.min-progress-time"

    invoke-virtual {v11, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 175
    const-string v14, "download.max-network-thread-count"

    invoke-virtual {v11, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 176
    const-string v14, "file.non-pre-allocation"

    invoke-virtual {v11, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 177
    const-string v14, "broadcast.completed"

    invoke-virtual {v11, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v14

    .line 188
    :cond_1
    if-eqz v12, :cond_2

    .line 190
    :try_start_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :goto_0
    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    move-object v14, v0

    .line 192
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    .line 192
    .end local v14    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 199
    :cond_2
    :goto_1
    move-object v14, v12

    goto :goto_5

    .line 188
    :catchall_0
    move-exception v0

    move-object/from16 v17, v4

    move-object v4, v0

    goto/16 :goto_e

    .line 179
    :catch_1
    move-exception v0

    move-object v14, v12

    move-object v12, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    .line 180
    .local v4, "e":Ljava/io/IOException;
    .local v5, "httpLenient":Ljava/lang/String;
    .local v6, "processNonSeparate":Ljava/lang/String;
    .local v7, "downloadMinProgressStep":Ljava/lang/String;
    .local v8, "downloadMinProgressTime":Ljava/lang/String;
    .local v9, "downloadMaxNetworkThreadCount":Ljava/lang/String;
    .local v12, "fileNonPreAllocation":Ljava/lang/String;
    .local v14, "inputStream":Ljava/io/InputStream;
    :try_start_2
    instance-of v15, v4, Ljava/io/FileNotFoundException;

    if-eqz v15, :cond_4

    .line 181
    sget-boolean v15, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v15, :cond_3

    .line 182
    const-class v15, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    const-string v13, "not found filedownloader.properties"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    const/4 v5, 0x0

    :try_start_3
    new-array v6, v5, [Ljava/lang/Object;

    .line 182
    .end local v5    # "httpLenient":Ljava/lang/String;
    .end local v6    # "processNonSeparate":Ljava/lang/String;
    .local v17, "httpLenient":Ljava/lang/String;
    .local v18, "processNonSeparate":Ljava/lang/String;
    invoke-static {v15, v13, v6}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 188
    .end local v4    # "e":Ljava/io/IOException;
    .end local v17    # "httpLenient":Ljava/lang/String;
    .end local v18    # "processNonSeparate":Ljava/lang/String;
    .restart local v5    # "httpLenient":Ljava/lang/String;
    .restart local v6    # "processNonSeparate":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 188
    .end local v5    # "httpLenient":Ljava/lang/String;
    .end local v6    # "processNonSeparate":Ljava/lang/String;
    .restart local v17    # "httpLenient":Ljava/lang/String;
    .restart local v18    # "processNonSeparate":Ljava/lang/String;
    goto :goto_2

    .line 185
    .end local v17    # "httpLenient":Ljava/lang/String;
    .end local v18    # "processNonSeparate":Ljava/lang/String;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "httpLenient":Ljava/lang/String;
    .restart local v6    # "processNonSeparate":Ljava/lang/String;
    :cond_4
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 185
    .end local v5    # "httpLenient":Ljava/lang/String;
    .end local v6    # "processNonSeparate":Ljava/lang/String;
    .restart local v17    # "httpLenient":Ljava/lang/String;
    .restart local v18    # "processNonSeparate":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v14, :cond_5

    .line 190
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 193
    :goto_3
    goto :goto_4

    .line 191
    :catch_2
    move-exception v0

    move-object v4, v0

    .line 192
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 192
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 199
    :cond_5
    :goto_4
    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    .line 199
    .end local v12    # "fileNonPreAllocation":Ljava/lang/String;
    .end local v17    # "httpLenient":Ljava/lang/String;
    .end local v18    # "processNonSeparate":Ljava/lang/String;
    .local v4, "httpLenient":Ljava/lang/String;
    .local v5, "processNonSeparate":Ljava/lang/String;
    .local v6, "downloadMinProgressStep":Ljava/lang/String;
    .local v7, "downloadMinProgressTime":Ljava/lang/String;
    .local v8, "downloadMaxNetworkThreadCount":Ljava/lang/String;
    .local v9, "fileNonPreAllocation":Ljava/lang/String;
    :goto_5
    const/4 v15, 0x3

    if-eqz v4, :cond_7

    .line 200
    const-string v12, "true"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "false"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 201
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "the value of \'%s\' must be \'%s\' or \'%s\'"

    new-array v15, v15, [Ljava/lang/Object;

    const-string v17, "http.lenient"

    const/16 v16, 0x0

    aput-object v17, v15, v16

    const-string v16, "true"

    const/16 v17, 0x1

    aput-object v16, v15, v17

    const-string v16, "false"

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 202
    invoke-static {v13, v15}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 205
    :cond_6
    const-string v12, "true"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->HTTP_LENIENT:Z

    goto :goto_6

    .line 207
    :cond_7
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->HTTP_LENIENT:Z

    .line 211
    :goto_6
    if-eqz v5, :cond_9

    .line 212
    const-string v12, "true"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "false"

    .line 213
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 214
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "the value of \'%s\' must be \'%s\' or \'%s\'"

    new-array v15, v15, [Ljava/lang/Object;

    const-string v17, "process.non-separate"

    const/16 v16, 0x0

    aput-object v17, v15, v16

    const-string v16, "true"

    const/16 v17, 0x1

    aput-object v16, v15, v17

    const-string v16, "false"

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 215
    invoke-static {v13, v15}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 218
    :cond_8
    const-string v12, "true"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->PROCESS_NON_SEPARATE:Z

    .line 224
    const/4 v12, 0x0

    goto :goto_7

    .line 220
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->PROCESS_NON_SEPARATE:Z

    .line 224
    :goto_7
    if-eqz v6, :cond_a

    .line 225
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 226
    .local v13, "processDownloadMinProgressStep":I
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 227
    iput v13, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MIN_PROGRESS_STEP:I

    .line 228
    .end local v13    # "processDownloadMinProgressStep":I
    goto :goto_8

    .line 229
    :cond_a
    const/high16 v12, 0x10000

    iput v12, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MIN_PROGRESS_STEP:I

    .line 233
    :goto_8
    if-eqz v7, :cond_b

    .line 234
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 235
    .local v12, "processDownloadMinProgressTime":J
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    const-wide/16 v4, 0x0

    .line 235
    .end local v4    # "httpLenient":Ljava/lang/String;
    .end local v5    # "processNonSeparate":Ljava/lang/String;
    .local v19, "httpLenient":Ljava/lang/String;
    .local v20, "processNonSeparate":Ljava/lang/String;
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 236
    .end local v12    # "processDownloadMinProgressTime":J
    .local v4, "processDownloadMinProgressTime":J
    iput-wide v4, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MIN_PROGRESS_TIME:J

    .line 237
    .end local v4    # "processDownloadMinProgressTime":J
    goto :goto_9

    .line 238
    .end local v19    # "httpLenient":Ljava/lang/String;
    .end local v20    # "processNonSeparate":Ljava/lang/String;
    .local v4, "httpLenient":Ljava/lang/String;
    .restart local v5    # "processNonSeparate":Ljava/lang/String;
    :cond_b
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 238
    .end local v4    # "httpLenient":Ljava/lang/String;
    .end local v5    # "processNonSeparate":Ljava/lang/String;
    .restart local v19    # "httpLenient":Ljava/lang/String;
    .restart local v20    # "processNonSeparate":Ljava/lang/String;
    const-wide/16 v4, 0x7d0

    iput-wide v4, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MIN_PROGRESS_TIME:J

    .line 242
    :goto_9
    if-eqz v8, :cond_c

    .line 243
    nop

    .line 244
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 243
    invoke-static {v4}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getValidNetworkThreadCount(I)I

    move-result v4

    iput v4, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MAX_NETWORK_THREAD_COUNT:I

    goto :goto_a

    .line 246
    :cond_c
    iput v15, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MAX_NETWORK_THREAD_COUNT:I

    .line 250
    :goto_a
    if-eqz v9, :cond_e

    .line 251
    const-string v4, "true"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "false"

    .line 252
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 253
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "the value of \'%s\' must be \'%s\' or \'%s\'"

    new-array v12, v15, [Ljava/lang/Object;

    const-string v13, "file.non-pre-allocation"

    const/4 v15, 0x0

    aput-object v13, v12, v15

    const-string v13, "true"

    const/4 v15, 0x1

    aput-object v13, v12, v15

    const-string v13, "false"

    const/4 v15, 0x2

    aput-object v13, v12, v15

    .line 254
    invoke-static {v5, v12}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 257
    :cond_d
    const-string v4, "true"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->FILE_NON_PRE_ALLOCATION:Z

    goto :goto_b

    .line 259
    :cond_e
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->FILE_NON_PRE_ALLOCATION:Z

    .line 262
    :goto_b
    if-eqz v10, :cond_10

    .line 263
    const-string v4, "true"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "false"

    .line 264
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 265
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "the value of \'%s\' must be \'%s\' or \'%s\'"

    new-array v12, v15, [Ljava/lang/Object;

    const-string v13, "broadcast.completed"

    const/4 v15, 0x0

    aput-object v13, v12, v15

    const-string v13, "true"

    const/4 v15, 0x1

    aput-object v13, v12, v15

    const-string v13, "false"

    const/4 v15, 0x2

    aput-object v13, v12, v15

    .line 266
    invoke-static {v5, v12}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 269
    :cond_f
    const-string v4, "true"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->BROADCAST_COMPLETED:Z

    goto :goto_c

    .line 272
    :cond_10
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->BROADCAST_COMPLETED:Z

    .line 275
    :goto_c
    sget-boolean v4, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v4, :cond_11

    .line 276
    const-class v4, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    const-string v5, "init properties %d\n load properties: %s=%B; %s=%B; %s=%d; %s=%d; %s=%d"

    const/16 v12, 0xb

    new-array v12, v12, [Ljava/lang/Object;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    sub-long v6, v17, v2

    .line 278
    .end local v6    # "downloadMinProgressStep":Ljava/lang/String;
    .end local v7    # "downloadMinProgressTime":Ljava/lang/String;
    .local v21, "downloadMinProgressStep":Ljava/lang/String;
    .local v22, "downloadMinProgressTime":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v12, v7

    const-string v6, "http.lenient"

    const/4 v7, 0x1

    aput-object v6, v12, v7

    iget-boolean v6, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->HTTP_LENIENT:Z

    .line 279
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v12, v7

    const-string v6, "process.non-separate"

    aput-object v6, v12, v15

    const/4 v6, 0x4

    iget-boolean v7, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->PROCESS_NON_SEPARATE:Z

    .line 280
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v12, v6

    const/4 v6, 0x5

    const-string v7, "download.min-progress-step"

    aput-object v7, v12, v6

    const/4 v6, 0x6

    iget v7, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MIN_PROGRESS_STEP:I

    .line 281
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v6

    const/4 v6, 0x7

    const-string v7, "download.min-progress-time"

    aput-object v7, v12, v6

    iget-wide v6, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MIN_PROGRESS_TIME:J

    .line 282
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v12, v7

    const/16 v6, 0x9

    const-string v7, "download.max-network-thread-count"

    aput-object v7, v12, v6

    const/16 v6, 0xa

    iget v7, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->DOWNLOAD_MAX_NETWORK_THREAD_COUNT:I

    .line 283
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v6

    .line 276
    invoke-static {v4, v5, v12}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 285
    .end local v21    # "downloadMinProgressStep":Ljava/lang/String;
    .end local v22    # "downloadMinProgressTime":Ljava/lang/String;
    .restart local v6    # "downloadMinProgressStep":Ljava/lang/String;
    .restart local v7    # "downloadMinProgressTime":Ljava/lang/String;
    :cond_11
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 285
    .end local v6    # "downloadMinProgressStep":Ljava/lang/String;
    .end local v7    # "downloadMinProgressTime":Ljava/lang/String;
    .restart local v21    # "downloadMinProgressStep":Ljava/lang/String;
    .restart local v22    # "downloadMinProgressTime":Ljava/lang/String;
    :goto_d
    return-void

    .line 188
    .end local v19    # "httpLenient":Ljava/lang/String;
    .end local v20    # "processNonSeparate":Ljava/lang/String;
    .end local v21    # "downloadMinProgressStep":Ljava/lang/String;
    .end local v22    # "downloadMinProgressTime":Ljava/lang/String;
    .local v7, "downloadMinProgressStep":Ljava/lang/String;
    .local v8, "downloadMinProgressTime":Ljava/lang/String;
    .local v9, "downloadMaxNetworkThreadCount":Ljava/lang/String;
    .local v12, "fileNonPreAllocation":Ljava/lang/String;
    .restart local v17    # "httpLenient":Ljava/lang/String;
    .restart local v18    # "processNonSeparate":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    move-object v12, v14

    move-object/from16 v5, v18

    goto :goto_e

    .line 188
    .end local v17    # "httpLenient":Ljava/lang/String;
    .end local v18    # "processNonSeparate":Ljava/lang/String;
    .local v5, "httpLenient":Ljava/lang/String;
    .local v6, "processNonSeparate":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object v4, v0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    move-object v12, v14

    move-object/from16 v5, v18

    .line 188
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .local v5, "processNonSeparate":Ljava/lang/String;
    .local v6, "downloadMinProgressStep":Ljava/lang/String;
    .local v7, "downloadMinProgressTime":Ljava/lang/String;
    .local v8, "downloadMaxNetworkThreadCount":Ljava/lang/String;
    .local v9, "fileNonPreAllocation":Ljava/lang/String;
    .local v12, "inputStream":Ljava/io/InputStream;
    .restart local v17    # "httpLenient":Ljava/lang/String;
    :goto_e
    if-eqz v12, :cond_12

    .line 190
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 193
    goto :goto_f

    .line 191
    :catch_3
    move-exception v0

    move-object v13, v0

    .line 192
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    .end local v13    # "e":Ljava/io/IOException;
    :cond_12
    :goto_f
    throw v4
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/util/FileDownloadProperties$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liulishuo/filedownloader/util/FileDownloadProperties$1;

    .line 116
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;-><init>()V

    return-void
.end method

.method public static getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;
    .locals 1

    .line 139
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties$HolderClass;->access$100()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v0

    return-object v0
.end method

.method public static getValidNetworkThreadCount(I)I
    .locals 9
    .param p0, "requireCount"    # I

    .line 288
    const/16 v0, 0xc

    .line 289
    .local v0, "MAX_VALID_NETWORK_THREAD_COUNT":I
    const/4 v1, 0x1

    .line 291
    .local v1, "MIN_VALID_NETWORK_THREAD_COUNT":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le p0, v0, :cond_0

    .line 292
    const-class v6, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    const-string v7, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto"

    new-array v5, v5, [Ljava/lang/Object;

    .line 294
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    .line 292
    invoke-static {v6, v7, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    return v0

    .line 296
    :cond_0
    if-ge p0, v1, :cond_1

    .line 297
    const-class v6, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    const-string v7, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto"

    new-array v5, v5, [Ljava/lang/Object;

    .line 299
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    .line 297
    invoke-static {v6, v7, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    return v1

    .line 303
    :cond_1
    return p0
.end method
