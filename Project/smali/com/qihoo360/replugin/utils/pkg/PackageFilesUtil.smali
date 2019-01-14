.class public Lcom/qihoo360/replugin/utils/pkg/PackageFilesUtil;
.super Ljava/lang/Object;
.source "PackageFilesUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageFilesUtil"

.field private static final TIMESTAMP_EXT:Ljava/lang/String; = ".timestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareDataFileVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 17
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 201
    move-object/from16 v1, p1

    const/4 v2, -0x1

    .line 202
    .local v2, "assetsVer":I
    const/4 v3, -0x1

    .line 203
    .local v3, "fileVer":I
    const/4 v4, 0x0

    .line 204
    .local v4, "dis":Ljava/io/DataInputStream;
    const/4 v5, 0x4

    new-array v5, v5, [B

    .line 206
    .local v5, "magic":[B
    const/16 v6, 0x54

    const/4 v7, 0x3

    const/16 v8, 0x41

    const/4 v9, 0x2

    const/16 v10, 0x44

    const/16 v11, 0x56

    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_0
    new-instance v14, Ljava/io/DataInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v14

    .line 207
    invoke-virtual {v4, v5}, Ljava/io/DataInputStream;->read([B)I

    .line 208
    aget-byte v14, v5, v12

    if-ne v14, v11, :cond_2

    aget-byte v14, v5, v13

    if-ne v14, v10, :cond_2

    aget-byte v14, v5, v9

    if-ne v14, v8, :cond_2

    aget-byte v14, v5, v7

    if-ne v14, v6, :cond_2

    .line 209
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 210
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 211
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    move v2, v14

    .line 212
    sget-boolean v14, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 213
    const-string v14, "PackageFilesUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get assets version file="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " version="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    if-eqz v4, :cond_7

    .line 225
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    :cond_1
    :goto_0
    goto :goto_5

    .line 226
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 227
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v14, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v14, :cond_1

    .line 228
    const-string v14, "PackageFilesUtil"

    const-string v15, "close error"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 216
    :cond_2
    nop

    .line 223
    if-eqz v4, :cond_3

    .line 225
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 230
    goto :goto_1

    .line 226
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 227
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 228
    const-string v7, "PackageFilesUtil"

    const-string v8, "close error"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return v13

    .line 223
    :catchall_0
    move-exception v0

    move v6, v2

    .line 223
    .end local v2    # "assetsVer":I
    .local v6, "assetsVer":I
    :goto_2
    move-object v2, v0

    goto/16 :goto_e

    .line 218
    .end local v6    # "assetsVer":I
    .restart local v2    # "assetsVer":I
    :catch_2
    move-exception v0

    move v6, v2

    move-object v2, v0

    .line 219
    .local v2, "e":Ljava/lang/Exception;
    .restart local v6    # "assetsVer":I
    :try_start_3
    sget-boolean v14, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v14, :cond_4

    .line 220
    const-string v14, "PackageFilesUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get assets version error, file:"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 223
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v4, :cond_6

    .line 225
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 230
    :cond_5
    :goto_3
    goto :goto_4

    .line 226
    :catch_3
    move-exception v0

    move-object v2, v0

    .line 227
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 228
    const-string v7, "PackageFilesUtil"

    const-string v14, "close error"

    invoke-static {v7, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 234
    :cond_6
    :goto_4
    move v2, v6

    .line 234
    .end local v6    # "assetsVer":I
    .local v2, "assetsVer":I
    :cond_7
    :goto_5
    :try_start_5
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v6

    .line 235
    invoke-virtual {v4, v5}, Ljava/io/DataInputStream;->read([B)I

    .line 236
    aget-byte v6, v5, v12

    if-ne v6, v11, :cond_a

    aget-byte v6, v5, v13

    if-ne v6, v10, :cond_a

    aget-byte v6, v5, v9

    if-ne v6, v8, :cond_a

    const/4 v6, 0x3

    aget-byte v6, v5, v6

    const/16 v7, 0x54

    if-ne v6, v7, :cond_a

    .line 237
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 238
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 239
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move v3, v6

    .line 240
    sget-boolean v6, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 241
    const-string v6, "PackageFilesUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get local version file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 251
    :cond_8
    if-eqz v4, :cond_f

    .line 253
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 258
    :cond_9
    :goto_6
    goto :goto_b

    .line 254
    :catch_4
    move-exception v0

    move-object v6, v0

    .line 255
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_9

    .line 256
    const-string v7, "PackageFilesUtil"

    const-string v8, "close error"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 244
    :cond_a
    nop

    .line 251
    if-eqz v4, :cond_b

    .line 253
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 258
    goto :goto_7

    .line 254
    :catch_5
    move-exception v0

    move-object v6, v0

    .line 255
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 256
    const-string v7, "PackageFilesUtil"

    const-string v8, "close error"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_7
    return v13

    .line 251
    :catchall_1
    move-exception v0

    move v6, v3

    .line 251
    .end local v3    # "fileVer":I
    .local v6, "fileVer":I
    :goto_8
    move-object v3, v0

    goto :goto_c

    .line 246
    .end local v6    # "fileVer":I
    .restart local v3    # "fileVer":I
    :catch_6
    move-exception v0

    move v6, v3

    move-object v3, v0

    .line 247
    .local v3, "e":Ljava/lang/Exception;
    .restart local v6    # "fileVer":I
    :try_start_8
    sget-boolean v7, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_c

    .line 248
    const-string v7, "PackageFilesUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get file version error, file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 251
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_c
    if-eqz v4, :cond_e

    .line 253
    :try_start_9
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 258
    :cond_d
    :goto_9
    goto :goto_a

    .line 254
    :catch_7
    move-exception v0

    move-object v3, v0

    .line 255
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_d

    .line 256
    const-string v7, "PackageFilesUtil"

    const-string v8, "close error"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_9

    .line 261
    :cond_e
    :goto_a
    move v3, v6

    .line 261
    .end local v6    # "fileVer":I
    .local v3, "fileVer":I
    :cond_f
    :goto_b
    const/4 v6, -0x1

    if-eq v2, v6, :cond_11

    if-eq v3, v6, :cond_11

    if-gt v2, v3, :cond_11

    .line 262
    sget-boolean v6, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_10

    .line 263
    const-string v6, "PackageFilesUtil"

    const-string v7, "compare file version not extract"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_10
    return v12

    .line 267
    :cond_11
    sget-boolean v6, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_12

    .line 268
    const-string v6, "PackageFilesUtil"

    const-string v7, "compare file version need extract"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_12
    return v13

    .line 251
    .end local v3    # "fileVer":I
    .restart local v6    # "fileVer":I
    :catchall_2
    move-exception v0

    goto :goto_8

    :goto_c
    if-eqz v4, :cond_13

    .line 253
    :try_start_a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 258
    goto :goto_d

    .line 254
    :catch_8
    move-exception v0

    move-object v7, v0

    .line 255
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v8, :cond_13

    .line 256
    const-string v8, "PackageFilesUtil"

    const-string v9, "close error"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_d
    throw v3

    .line 223
    .end local v2    # "assetsVer":I
    .restart local v3    # "fileVer":I
    .local v6, "assetsVer":I
    :catchall_3
    move-exception v0

    goto/16 :goto_2

    :goto_e
    if-eqz v4, :cond_14

    .line 225
    :try_start_b
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 230
    goto :goto_f

    .line 226
    :catch_9
    move-exception v0

    move-object v7, v0

    .line 227
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v8, :cond_14

    .line 228
    const-string v8, "PackageFilesUtil"

    const-string v9, "close error"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_14
    :goto_f
    throw v2
.end method

.method public static forceDelete(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 9
    .param p0, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 281
    if-nez p0, :cond_0

    .line 282
    return-void

    .line 287
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v0

    .line 288
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 290
    sget-boolean v1, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 291
    const-string v1, "PackageFilesUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexFile()Ljava/io/File;

    move-result-object v1

    .line 297
    .local v1, "dexFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 299
    sget-boolean v2, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 300
    const-string v2, "PackageFilesUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v2, v3, :cond_4

    .line 307
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexParentDir()Ljava/io/File;

    move-result-object v2

    .line 308
    .local v2, "dexParent":Ljava/io/File;
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getDexFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qihoo360/replugin/utils/FileUtils;->getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "fileNameWithoutExt":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".vdex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    .local v4, "vdexFile":Ljava/io/File;
    invoke-static {v4}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 312
    sget-boolean v5, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 313
    const-string v5, "PackageFilesUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_3
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".prof"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v5, "profFile":Ljava/io/File;
    invoke-static {v5}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 319
    sget-boolean v6, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 320
    const-string v6, "PackageFilesUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v2    # "dexParent":Ljava/io/File;
    .end local v3    # "fileNameWithoutExt":Ljava/lang/String;
    .end local v4    # "vdexFile":Ljava/io/File;
    .end local v5    # "profFile":Ljava/io/File;
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_5

    .line 325
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getExtraOdexDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 326
    sget-boolean v2, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 327
    const-string v2, "PackageFilesUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getExtraOdexDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_5
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v2

    .line 333
    .local v2, "libsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 334
    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 335
    sget-boolean v3, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 336
    const-string v3, "PackageFilesUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getNativeLibsDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_6
    const-string v3, "plugin_v3_%s.lock"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/qihoo360/replugin/model/PluginInfo;->getApkFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "lockFileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    .local v4, "lockFile":Ljava/io/File;
    invoke-static {v4}, Lcom/qihoo360/replugin/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 344
    sget-boolean v5, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 345
    const-string v5, "PackageFilesUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "dexFile":Ljava/io/File;
    .end local v2    # "libsFile":Ljava/io/File;
    .end local v3    # "lockFileName":Ljava/lang/String;
    .end local v4    # "lockFile":Ljava/io/File;
    :cond_7
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 352
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public static getBundleTimestamp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, "fis":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".timestamp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 149
    :goto_0
    if-eqz v0, :cond_0

    .line 150
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/pkg/PackageFilesUtil;->getTimestampFromStream(Ljava/io/InputStream;)J

    move-result-wide v1

    return-wide v1

    .line 152
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static getFileTimestamp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 133
    :goto_0
    if-eqz v0, :cond_0

    .line 134
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/pkg/PackageFilesUtil;->getTimestampFromStream(Ljava/io/InputStream;)J

    move-result-wide v1

    return-wide v1

    .line 136
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static getLatestFileTimestamp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .line 96
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/pkg/PackageFilesUtil;->getFileTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 97
    .local v0, "timestampOfFile":J
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/pkg/PackageFilesUtil;->getBundleTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 99
    .local v2, "timestampOfAsset":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method private static getTimestampFromStream(Ljava/io/InputStream;)J
    .locals 7
    .param p0, "fis"    # Ljava/io/InputStream;

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 161
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 163
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .local v2, "timeStamp":J
    nop

    .line 172
    if-eqz v0, :cond_0

    .line 173
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    .line 178
    :catch_0
    move-exception v4

    goto :goto_1

    .line 175
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 176
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 178
    :goto_1
    nop

    .line 179
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 180
    const-string v5, "PackageFilesUtil"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v4    # "e":Ljava/lang/Exception;
    nop

    .line 182
    :cond_1
    :goto_2
    return-wide v2

    .line 172
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "timeStamp":J
    :cond_2
    if-eqz v0, :cond_3

    .line 173
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto :goto_3

    .line 178
    :catch_1
    move-exception v1

    goto :goto_4

    .line 175
    :cond_3
    :goto_3
    if-eqz p0, :cond_5

    .line 176
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 178
    :goto_4
    nop

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 180
    :goto_5
    const-string v2, "PackageFilesUtil"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    goto :goto_9

    .line 182
    :cond_5
    :goto_6
    goto :goto_9

    .line 171
    :catchall_0
    move-exception v1

    goto :goto_a

    .line 166
    :catch_2
    move-exception v1

    .line 167
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-boolean v2, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 168
    const-string v2, "PackageFilesUtil"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    if-eqz v0, :cond_7

    .line 173
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto :goto_7

    .line 178
    :catch_3
    move-exception v1

    goto :goto_8

    .line 175
    :cond_7
    :goto_7
    if-eqz p0, :cond_5

    .line 176
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 178
    :goto_8
    nop

    .line 179
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_4

    goto :goto_5

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9
    const-wide/16 v1, 0x0

    return-wide v1

    .line 171
    :goto_a
    nop

    .line 172
    if-eqz v0, :cond_8

    .line 173
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto :goto_b

    .line 178
    :catch_4
    move-exception v2

    goto :goto_c

    .line 175
    :cond_8
    :goto_b
    if-eqz p0, :cond_9

    .line 176
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_d

    .line 178
    :goto_c
    nop

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_9

    .line 180
    const-string v3, "PackageFilesUtil"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .line 182
    :cond_9
    :goto_d
    throw v1
.end method

.method public static isExtractedFromAssetsToFiles(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .line 189
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 190
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/pkg/PackageFilesUtil;->compareDataFileVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 191
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 192
    const-string v1, "PackageFilesUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extract no exist file from assets filename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isFileUpdated(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .line 110
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 111
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    return v1

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    return v1

    .line 118
    :cond_1
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/pkg/PackageFilesUtil;->getFileTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 119
    .local v2, "timestampOfFile":J
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/pkg/PackageFilesUtil;->getBundleTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 121
    .local v4, "timestampOfAsset":J
    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public static openLatestInputFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/pkg/PackageFilesUtil;->getFileTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 55
    .local v1, "timestampOfFile":J
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/pkg/PackageFilesUtil;->getBundleTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    .line 57
    .local v3, "timestampOfAsset":J
    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 61
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    move-object v0, v5

    .line 63
    sget-boolean v5, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 64
    const-string v5, "PackageFilesUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opening in files directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception v5

    .line 67
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 68
    const-string v6, "PackageFilesUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in files directory not found, skip."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 77
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v0, v5

    .line 78
    sget-boolean v5, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 79
    const-string v5, "PackageFilesUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opening in assets: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 84
    :catch_1
    move-exception v5

    .line 85
    .local v5, "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 86
    const-string v6, "PackageFilesUtil"

    invoke-static {v6, p1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 81
    :catch_2
    move-exception v5

    .line 88
    :cond_2
    :goto_1
    nop

    .line 91
    :cond_3
    :goto_2
    return-object v0
.end method
